<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------
namespace api\wxapp\controller;

use cmf\lib\Storage;
use Exception;
use initmodel\AssetModel;
use initmodel\MemberModel;
use think\facade\Cache;
use think\facade\Db;
use cmf\lib\Upload;
use think\facade\Log;
use WeChat\Exceptions\InvalidResponseException;
use WeChat\Exceptions\LocalCacheException;
use WeChat\Oauth;
use WeChat\Script;
use WeMini\Crypt;
use WeMini\Qrcode;

header('Access-Control-Allow-Origin:*');
// 响应类型
header('Access-Control-Allow-Methods:*');
// 响应头设置
header('Access-Control-Allow-Headers:*');


error_reporting(0);


class PublicController extends AuthController
{
    public $wx_config;


    public function initialize()
    {
        parent::initialize();// 初始化方法

        $plugin_config        = cmf_get_option('weipay');
        $this->wx_system_type = $plugin_config['wx_system_type'];//默认 读配置可手动修改
        if ($this->wx_system_type == 'wx_mini') {//wx_mini:小程序
            $appid     = $plugin_config['wx_mini_app_id'];
            $appsecret = $plugin_config['wx_mini_app_secret'];
        } else {//wx_mp:公众号
            $appid     = $plugin_config['wx_mp_app_id'];
            $appsecret = $plugin_config['wx_mp_app_secret'];
        }
        $this->wx_config = [
            //微信基本信息
            'token'             => $plugin_config['wx_token'],
            'wx_mini_appid'     => $plugin_config['wx_mini_app_id'],//小程序 appid
            'wx_mini_appsecret' => $plugin_config['wx_mini_app_secret'],//小程序 secret
            'wx_mp_appid'       => $plugin_config['wx_mp_app_id'],//公众号 appid
            'wx_mp_appsecret'   => $plugin_config['wx_mp_app_secret'],//公众号 secret
            'appid'             => $appid,//读取默认 appid
            'appsecret'         => $appsecret,//读取默认 secret
            'encodingaeskey'    => $plugin_config['wx_encodingaeskey'],
            // 配置商户支付参数
            'mch_id'            => $plugin_config['wx_mch_id'],
            'mch_key'           => $plugin_config['wx_v2_mch_secret_key'],
            // 配置商户支付双向证书目录 （p12 | key,cert 二选一，两者都配置时p12优先）
            //	'ssl_p12'        => __DIR__ . DIRECTORY_SEPARATOR . 'cert' . DIRECTORY_SEPARATOR . '1332187001_20181030_cert.p12',
            'ssl_key'           => $_SERVER['DOCUMENT_ROOT'] . '/upload/' . $plugin_config['wx_mch_secret_cert'],
            'ssl_cer'           => $_SERVER['DOCUMENT_ROOT'] . '/upload/' . $plugin_config['wx_mch_public_cert_path'],
            // 配置缓存目录，需要拥有写权限
            'cache_path'        => './wx_cache_path',
            'wx_system_type'    => $this->wx_system_type,//wx_mini:小程序 wx_mp:公众号
        ];

    }


    /**
     * 测试接口
     *
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/public/index
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/public/index
     *   api: /wxapp/public/index
     *   remark_name: 测试接口
     *
     * @return void
     */
    public function index()
    {
        $code                  = cmf_random_string(2);
        $result['order_num']   = cmf_order_sn();
        $result['code']        = $code;
        $result['md5_code']    = md5($code);
        $result['sha1_code']   = sha1($code);
        $result['uniqid']      = uniqid('Moode_');
        $result['hm']          = time() . microtime(true * 1000);
        $result['time']        = time();
        $result['microtime']   = microtime(true) * 1000;
        $result['time_uniqid'] = uniqid(mt_rand(100, 999) . '_');
        $result['openid']      = 'M_' . sha1(md5('18888888888') . uniqid() . md5(cmf_random_string(60, 3)));
        $result['openid_not']  = 'M_' . (uniqid(mt_rand(0, 999)) . uniqid(mt_rand(0, 999)) . time() . microtime(true * 1000));
        $result['moods']       = 'M_' . $this->insertRandomUnderscore(sha1(uniqid(mt_rand(0, 999)) . uniqid(mt_rand(0, 999)) . time() . microtime(true * 1000)));
        $formData              = http_build_query($result);

        Log::write('index');
        Log::write($result);


        $this->success('请求成功!', ['result' => $result, 'formData' => $formData]);
    }


    /**
     * 查询系统配置信息
     * @OA\Get(
     *     tags={"小程序公共模块接口"},
     *     path="/wxapp/public/find_setting",
     *
     *
     *      @OA\Parameter(
     *         name="group_id",
     *         in="query",
     *         description="类id",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/public/find_setting
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/public/find_setting
     *   api: /wxapp/public/find_setting
     *   remark_name: 查询系统配置信息
     *
     */
    public function find_setting()
    {
        $params = $this->request->param();


        $config = cmf_config('', $params['group_id'] ?? 0);
        $map    = [];
        if (empty($params['group_id'])) {
            $map[] = ['is_menu', 'in', [1]];
        }

        //查询配置信息
        $menu_list = Db::name('base_config')->where($map)
            ->order('list_order')
            ->field('id,label,key')
            ->select()
            ->toArray();


        $result     = [];
        $annotation = [];
        foreach ($config as $k => $v) {
            if (in_array($v['type'], ['img', 'file', 'video'])) {
                $v['value']         = cmf_get_asset_url($v['value']);
                $result[$v['name']] = $v['value'];
            } elseif ($v['type'] == 'textarea') {
                if ($v['scatter']) $v['value'] = preg_replace("/\r\n/", "", explode($v['scatter'], $v['value']));
                $result[$v['name']] = $v['value'];
            } elseif ($v['data_type'] == 'array' && $v['type'] == 'custom') {
                $result[$v['name']] = explode('/', $v['value']);//自定义表格
            } else {
                $result[$v['name']] = $v['value'];
            }

            if ($v['type'] == 'content') {
                // 协议不在这里展示
                if (empty($params['group_id'])) unset($result[$v['name']]);
                if ($params['group_id']) if ($v['value']) $v['value'] = cmf_replace_content_file_url(htmlspecialchars_decode($v['value']));
            }

            if ($v['value'] == 'true') $result[$v['name']] = true;
            if ($v['value'] == 'false') $result[$v['name']] = false;

            if ($v['is_label']) {
                //插架格式
                $value     = $v['value'];
                $new_value = [];
                foreach ($value as $key => $val) {
                    $new_value[$key]['label']   = $val;
                    $new_value[$key]['value']   = $val;
                    $new_value[$key]['checked'] = false;
                }
                $result[$v['name']] = $new_value;
            }


            //程序配置,私有配置过滤
            if (in_array($v['group_id'], [888888, 999999])) unset($result[$v['name']]);


            //给注释显示在接口中
            $menu_key  = array_search($v['group_id'], array_column($menu_list, 'key'));
            $menu_name = $menu_list[$menu_key]['label'];
            if ($menu_key !== false) {
                if (empty($v['about'])) $annotation[$menu_name][] = [$v['name'] => "{$v['label']}"];
                if ($v['about']) $annotation[$menu_name][] = [$v['name'] => "{$v['label']} ({$v['about']})"];
            }
        }
        $result['_字段注释'] = $annotation;


        $this->success("请求成功！", $result);
    }


    /**
     * 查询协议列表
     * @OA\Get(
     *     tags={"小程序公共模块接口"},
     *     path="/wxapp/public/find_agreement_list",
     *
     *
     *      @OA\Parameter(
     *         name="name",
     *         in="query",
     *         description="协议name (字符串,或者数组格式)  选填,如传详情,不传列表 ",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/public/find_agreement_list
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/public/find_agreement_list
     *   api: /wxapp/public/find_agreement_list
     *   remark_name: 查询协议列表
     *
     */
    public function find_agreement_list()
    {
        //配置列表
        $map = [];
        if (empty($params['group_id'])) $map[] = ['is_menu', 'in', [1]];
        $menu_list = Db::name('base_config')->where($map)->order('list_order')->field('id,label,key')->select()->toArray();

        $params = $this->request->param();

        if (is_array($params['name'])) {
            foreach ($params['name'] as $name) {
                $result[$name] = cmf_replace_content_file_url(htmlspecialchars_decode(cmf_config($name)));
            }
        } elseif (is_string($params['name'])) {
            $result = cmf_replace_content_file_url(htmlspecialchars_decode(cmf_config($params['name'])));
        } else {
            $config = cmf_config();
            $result = [];
            foreach ($config as $k => $v) {
                if ($v['type'] == 'content') {
                    if ($v['value']) $v['value'] = cmf_replace_content_file_url(htmlspecialchars_decode($v['value']));
                    $result[$v['name']] = $v['value'];

                    //给注释显示在接口中
                    $menu_key  = array_search($v['group_id'], array_column($menu_list, 'key'));
                    $menu_name = $menu_list[$menu_key]['label'];
                    if ($menu_key !== false) {
                        if (empty($v['about'])) $annotation[$menu_name][] = [$v['name'] => "{$v['label']}"];
                        if ($v['about']) $annotation[$menu_name][] = [$v['name'] => "{$v['label']} ({$v['about']})"];
                    }

                } else {
                    unset($result[$v['name']]);
                }
            }
        }
        $result['_字段注释'] = $annotation;

        $this->success("请求成功！", $result);
    }


    /**
     * 上传图片&文件
     * @OA\Post(
     *     tags={"小程序公共模块接口"},
     *     path="/wxapp/public/upload_asset",
     *
     *
     *      @OA\Parameter(
     *         name="filetype",
     *         in="query",
     *         description="默认image,其他video，audio，file",
     *         required=true,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/public/upload_asset
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/public/upload_asset
     *   api: /wxapp/public/upload_asset
     *   remark_name: 上传图片
     *
     */
    public function upload_asset()
    {
        if ($this->request->isPost()) {
            session('user.id', 1);
            $uploader = new Upload();
            $fileType = $this->request->param('filetype', 'image');
            $uploader->setFileType($fileType);
            $result = $uploader->upload();
            if ($result === false) {
                $this->error($uploader->getError());
            } else {
                // TODO  增其它文件的处理
                $result['preview_url'] = cmf_get_image_preview_url($result["filepath"]);
                $result['url']         = cmf_get_image_url($result["filepath"]);
                $result['filename']    = $result["name"];
                $this->success('上传成功!', $result);
            }
        }
    }


    /**
     * 查询幻灯片
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\db\exception\DbException
     * @OA\Post(
     *     tags={"小程序公共模块接口"},
     *
     *     path="/wxapp/public/find_slide",
     *
     *
     * 	   @OA\Parameter(
     *         name="slide_id",
     *         in="query",
     *         description="幻灯片分类ID，默认传1，可不传",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/public/find_slide
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/public/find_slide
     *   api: /wxapp/public/find_slide
     *   remark_name: 查询幻灯片
     *
     */
    public function find_slide()
    {
        $params = $this->request->param();

        if (empty($params['slide_id'])) $params['slide_id'] = 1;

        $map   = [];
        $map[] = ['slide_id', '=', $params['slide_id']];
        $map[] = ['status', '=', 1];

        $result = Db::name('slide_item')->field("*")->where($map)->order('list_order asc')->select()->each(function ($item) {
            $item['image'] = cmf_get_asset_url($item['image']);
            return $item;
        });
        $this->success("请求成功!", $result);
    }


    /**
     * 小程序授权手机号(授权登录)
     * @throws \WeChat\Exceptions\InvalidDecryptException
     * @throws \WeChat\Exceptions\InvalidResponseException
     * @throws \WeChat\Exceptions\LocalCacheException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @OA\Post(
     *     tags={"小程序公共模块接口"},
     *     path="/wxapp/public/wx_app_phone",
     *
     *
     *
     *
     *     @OA\Parameter(
     *         name="code",
     *         in="query",
     *         description="code",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *     @OA\Parameter(
     *         name="encrypted_data",
     *         in="query",
     *         description="encrypted_data",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *     @OA\Parameter(
     *         name="iv",
     *         in="query",
     *         description="iv",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *     @OA\Parameter(
     *         name="invite_code",
     *         in="query",
     *         description="邀请码",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/public/wx_app_phone
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/public/wx_app_phone
     *   api: /wxapp/public/wx_app_phone
     *   remark_name: 小程序授权手机号(授权登录)
     *
     */
    public function wx_app_phone()
    {
        $MemberModel  = new \initmodel\MemberModel();//用户管理
        $params       = $this->request->param();
        $check_result = $this->validate($params, 'WxLogin');
        if ($check_result !== true) $this->error($check_result);


        $mini       = new Crypt($this->wx_config);
        $wxUserData = $mini->userInfo($params['code'], $params['iv'], $params['encrypted_data']);
        Log::write('wx_app_phone:wxUserData');
        Log::write($wxUserData);
        if (empty($wxUserData)) $this->error('授权失败!');


        // 授权手机号
        $user_phone   = $wxUserData['purePhoneNumber'];
        $user_openid  = $wxUserData['openid'];
        $user_unionid = $wxUserData['unionid'];
        $findUserInfo = $MemberModel->where('openid', '=', $user_openid)->field('id,pid')->find();


        //邀请板块
        $pid = 0;
        if ($params['invite_code']) $pid = $MemberModel->where('invite_code', '=', $params['invite_code'])->value('id');


        if (empty($findUserInfo)) {
            //向数据库插入新用户信息
            $insert['nickname']    = $this->get_member_wx_nickname();
            $insert['avatar']      = cmf_get_asset_url(cmf_config('app_logo'));
            $insert['openid']      = $user_openid;
            $insert['mini_openid'] = $user_openid;
            $insert['invite_code'] = $this->get_num_only('invite_code', 5, 4, '', 'member');
            $insert['phone']       = $user_phone;
            $insert['unionid']     = $user_unionid;
            $insert['pid']         = $pid;
            $insert['create_time'] = time();
            $insert['login_time']  = time();
            $insert['ip']          = get_client_ip();
            $insert['login_city']  = $this->get_ip_to_city();

            $MemberModel->strict(false)->insert($insert);
        } else {
            //数据库已存在用户,更新用户登录信息
            $update['phone']       = $user_phone;
            $update['unionid']     = $user_unionid;
            $update['mini_openid'] = $user_openid;
            $update['update_time'] = time();
            $update['login_time']  = time();
            $update['ip']          = get_client_ip();
            $update['login_city']  = $this->get_ip_to_city();
            if (empty($findUserInfo['pid']) && $pid && $findUserInfo['id'] != $pid) $update['pid'] = $pid;

            $MemberModel->where('openid', '=', $user_openid)->strict(false)->update($update);
        }

        //查询会员信息
        $findUserInfo = $this->getUserInfoByOpenid($user_openid);


        $this->success("授权成功!", $findUserInfo);
    }


    /**
     * 根据经纬度获取地址信息
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\db\exception\DbException
     * @throws Exception
     * @OA\Post(
     *     tags={"小程序公共模块接口"},
     *     path="/wxapp/public/find_reverse_address",
     *
     *
     *     @OA\Parameter(
     *         name="lnglat",
     *         in="query",
     *         description="经纬度",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/public/find_reverse_address
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/public/find_reverse_address
     *   api: /wxapp/public/find_reverse_address
     *   remark_name: 根据经纬度获取地址信息
     *
     */
    public function find_reverse_address()
    {
        $params = $this->request->param();

        $result = $this->reverse_address($params['lnglat']);
        if ($result['status'] != 0) $this->error($result['message']);

        $ad_info = $result['result']['ad_info'];
        $data    = [
            'county_code' => $ad_info['adcode'],
            'province'    => $ad_info['province'],
            'city'        => $ad_info['city'],
            'district'    => $ad_info['district'],
        ];

        $this->success('区code', $data);
    }


}
