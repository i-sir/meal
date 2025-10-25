<?php

namespace app\admin\controller;


/**
 * @adminMenuRoot(
 *     "name"                =>"ShopOrder",
 *     "controller_name"     =>"ShopOrder",
 *     "table_name"          =>"shop_order",
 *     "action"              =>"default",
 *     "parent"              =>"",
 *     "display"             => true,
 *     "order"               => 10000,
 *     "icon"                =>"none",
 *     "remark"              =>"订单管理",
 *     "author"              =>"",
 *     "create_time"         =>"2023-09-29 09:57:21",
 *     "version"             =>"1.0",
 *     "use"                 => new \app\admin\controller\ShopOrderController();
 * )
 */


use api\wxapp\controller\InitController;
use api\wxapp\controller\WxBaseController;
use initmodel\AssetModel;
use plugins\fe_print\FePrintPlugin;
use plugins\weipay\lib\PayController;
use think\App;
use think\facade\Cache;
use think\facade\Db;
use think\facade\Log;
use cmf\controller\AdminBaseController;


class ShopOrderController extends AdminBaseController
{
    //    public function initialize()
    //    {
    //        parent::initialize();
    //    }


    //检测是否有新订单
    public function order_notification()
    {
        $result = Cache::get('order_notification_admin');
        if (empty($result)) $this->error('无通知');
        Cache::delete('order_notification_admin');
        $this->success('有通知');
    }


    /**
     * 展示
     * @adminMenu(
     *     'name'   => 'ShopOrder',
     *     'parent' => 'default',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '订单管理',
     *     'param'  => ''
     * )
     */
    public function index()
    {
        $params             = $this->request->param();
        $ShopOrderInit      = new \init\ShopOrderInit();//订单管理
        $ShopOrderModel     = new \initmodel\ShopOrderModel();//订单管理
        $CompanyAddressInit = new \init\CompanyAddressInit();//地址管理    (ps:InitController)


        $where = [];
        if ($params['keyword']) $where[] = ['phone|username|order_num', 'like', "%{$params['keyword']}%"];
        if ($params['order_num']) $where[] = ['order_num', 'like', "%{$params['order_num']}%"];
        if ($params['goods_name']) $where[] = ['goods_name', 'like', "%{$params['goods_name']}%"];
        if ($params['delivery_time']) $where[] = ['delivery_time', '=', $params['delivery_time']];
        if ($params['date']) $where[] = ['date', '=', $params['date']];
        if ($params['user_id']) $where[] = ['user_id', '=', $params['user_id']];
        if ($params['company_id']) $where[] = ['company_id', '=', $params['company_id']];


        if ($params['order_date']) {
            $order_date_arr = explode(' - ', $params['order_date']);
            $where[]        = $this->getBetweenTime($order_date_arr[0], $order_date_arr[1]);
        }


        //状态筛选
        $status_where = [];
        if ($params['status']) $status_where[] = ['status', 'in', $ShopOrderInit->admin_status_where[$params['status']]];
        //if (empty($params['status'])) $status_where[] = ['status', 'in', [2, 3]];


        //数据类型
        $params['InterfaceType'] = 'admin';//身份类型,后台


        //导出数据
        if ($params["is_export"]) $this->export_excel(array_merge($where, $status_where), $params);
        $result = $ShopOrderInit->get_list_paginate(array_merge($where, $status_where), $params);


        $this->assign("list", $result);
        $this->assign('pagination', $result->render());//单独提取分页出来
        $this->assign("page", $result->currentPage());

        //全部数量
        $this->assign("total", $ShopOrderModel->where($where)->count());//总数量


        //数据统计
        $status_arr = $ShopOrderInit->status_list;
        $count      = [];
        foreach ($status_arr as $key => $status) {
            $map                    = [];
            $map[]                  = ['status', 'in', $ShopOrderInit->admin_status_where[$key]];
            $map                    = array_merge($map, $where);
            $count[$key]['count']   = $ShopOrderModel->where($map)->count();
            $count[$key]['key']     = $key;
            $count[$key]['name']    = $status;
            $count[$key]['is_ture'] = false;
            if ($params['status'] == $key) $count[$key]['is_ture'] = true;
        }


        $this->assign('count', $count);


        //地址列表
        $this->assign('address_list', $CompanyAddressInit->get_list());


        //配送时间
        $this->assign('delivery_time_list', $this->getParams(cmf_config('delivery_time_period'), '/'));


        return $this->fetch();
    }


    //编辑详情
    public function edit()
    {

        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];


        $result = $ShopOrderInit->get_find($where);


        if (empty($result)) $this->error("暂无数据");

        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    //标签打印
    public function label_print()
    {
        $ShopOrderInit  = new \init\ShopOrderInit();//订单管理
        $InitController = new InitController();//基础类

        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];

        //订单信息
        $order_info = $ShopOrderInit->get_find($where);
        if (empty($order_info)) $this->error("暂无数据");

        //封装打印方法
        $result = $InitController->labelPrint($order_info['order_num']);

        //报错
        if ($result['code'] == 0) $this->error($result['msg']);


        $this->success('打印成功');
    }


    //小票打印
    public function info_print()
    {
        $ShopOrderInit  = new \init\ShopOrderInit();//订单管理
        $InitController = new InitController();//基础类


        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];


        //订单信息
        $order_info = $ShopOrderInit->get_find($where);
        if (empty($order_info)) $this->error("暂无数据");


        //封装打印方法
        $result = $InitController->infoPrint($order_info['order_num']);

        //报错
        if ($result['code'] == 0) $this->error($result['msg']);


        $this->success('打印成功');
    }


    //标签打印
    public function label_print_ids()
    {
        $ShopOrderModel = new \initmodel\ShopOrderModel(); //订单管理  (ps:InitModel)
        $InitController = new InitController();//基础类

        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where   = [];
        $where[] = ["id", "in", $params["ids"]];

        //订单信息
        $order_list = $ShopOrderModel->where($where)->select();
        if (empty($order_list)) $this->error("暂无数据");

        foreach ($order_list as $order_info) {
            //封装打印方法
            $result = $InitController->labelPrint($order_info['order_num']);

            //报错
            if ($result['code'] == 0) $this->error($result['msg']);
        }


        $this->success('打印成功');
    }


    //小票打印
    public function info_print_ids()
    {

        $ShopOrderModel = new \initmodel\ShopOrderModel(); //订单管理  (ps:InitModel)
        $InitController = new InitController();//基础类


        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where   = [];
        $where[] = ["id", "in", $params["ids"]];


        /** 查询条件 **/
        $where   = [];
        $where[] = ["id", "in", $params["ids"]];

        //订单信息
        $order_list = $ShopOrderModel->where($where)->select();
        if (empty($order_list)) $this->error("暂无数据");


        foreach ($order_list as $order_info) {
            //封装打印方法
            $result = $InitController->infoPrint($order_info['order_num']);

            //报错
            if ($result['code'] == 0) $this->error($result['msg']);
        }


        $this->success('打印成功');
    }


    //根据地址打印小票
    public function info_print_address()
    {
        $ShopOrderModel       = new \initmodel\ShopOrderModel();//订单管理
        $ShopOrderDetailModel = new \initmodel\ShopOrderDetailModel();//订单详情  (ps:InitModel)
        $InitController       = new InitController();//基础类
        $CompanyAddressModel  = new \initmodel\CompanyAddressModel(); //地址管理  (ps:InitModel)


        $params = $this->request->param();


        $where = [];
        if ($params['date']) $where[] = ['date', '=', $params['date']];
        if ($params['delivery_time']) $where[] = ['delivery_time', '=', $params['delivery_time']];
        if ($params['company_id']) $where[] = ['company_id', '=', $params['company_id']];
        if ($params['order_date']) {
            $order_date_arr = explode(' - ', $params['order_date']);
            $where[]        = $this->getBetweenTime($order_date_arr[0], $order_date_arr[1]);
        }


        //查询出订单号
        $map100     = [];
        $map100[]   = ['status', 'in', [2, 8]];
        $order_nums = $ShopOrderModel->where(array_merge($map100, $where))->column('order_num');

        //给商品id去重,算出商品数量
        $map        = [];
        $map[]      = ['order_num', 'in', $order_nums];
        $goods_list = $ShopOrderDetailModel->where($map)
            ->field('goods_id, sku_id, SUM(count) as total_count,goods_name,sku_name,count')
            ->group('goods_id, sku_id')
            ->select();

        if (empty(count($goods_list))) $this->error("暂无数据");


        //地址名称
        $address_info = $CompanyAddressModel->where('id', '=', $params['company_id'])->find();//地址名称
        $address      = "{$address_info['name']} ({$address_info['address']})";//地址名称


        //封装打印方法
        $result = $InitController->infoPrintAddress($params['date'], $address, $params['delivery_time'], $goods_list);

        //报错
        if ($result['code'] == 0) $this->error($result['msg']);


        $this->success('打印成功');
    }


    /**
     * 文本换行处理
     * @param string $text      原始文本
     * @param int    $maxLength 每行最大字符数
     * @param int    $maxNumber 最大总字符数（超过此长度将添加省略号）
     * @return string 处理后的文本（包含换行符）
     */
    private function wrapText($text, $maxLength, $maxNumber)
    {
        if (empty($text)) {
            return $text;
        }

        // 先截取最大字符数
        if (mb_strlen($text) > $maxNumber) {
            $text = mb_substr($text, 0, $maxNumber) . '...';
        }

        $wrappedText   = '';
        $currentLength = 0;

        for ($i = 0; $i < mb_strlen($text); $i++) {
            $char = mb_substr($text, $i, 1);

            if ($currentLength >= $maxLength) {
                $wrappedText   .= "\n";
                $currentLength = 0;
            }

            $wrappedText .= $char;
            $currentLength++;
        }

        return $wrappedText;
    }


    /**
     * [统计字符串字节数补空格，实现左右排版对齐]
     * @param  [string] $str_left    [左边字符串]
     * @param  [string] $str_right   [右边字符串]
     * @param  [int]    $length      [输入当前纸张规格一行所支持的最大字母数量]
     *                               58mm的机器,一行打印16个汉字,32个字母;76mm的机器,一行打印22个汉字,33个字母,80mm的机器,一行打印24个汉字,48个字母
     *                               标签机宽度50mm，一行32个字母，宽度40mm，一行26个字母
     * @return [string]              [返回处理结果字符串]
     */
    function LR($str_left, $str_right, $length)
    {
        if (empty($str_left) || empty($str_right) || empty($length)) return '请输入正确的参数';
        $kw               = '';
        $str_left_lenght  = strlen(iconv("UTF-8", "GBK//IGNORE", $str_left));
        $str_right_lenght = strlen(iconv("UTF-8", "GBK//IGNORE", $str_right));
        $k                = $length - ($str_left_lenght + $str_right_lenght);
        for ($q = 0; $q < $k; $q++) {
            $kw .= ' ';
        }
        return $str_left . $kw . $str_right;
    }


    /**
     * 设置商品信息样式
     * @param $arr 商品信息
     * @param $A
     * @param $B
     * @param $C
     * @param $D
     * @return string
     */
    function set_goods($arr, $A = 14, $B = 6, $C = 3, $D = 6)
    {
        $orderInfo = '--------------------------------<BR>';
        foreach ($arr as $k5 => $v5) {
            $name = $v5['goods_name'];
            if ($v5['sku_name']) $name .= 'SKU:[' . $v5['sku_name'] . ']';
            $price    = $v5['goods_price'];
            $num      = $v5['count'];
            $prices   = round($v5['goods_price'] * $v5['count'], 2);
            $kw3      = '';
            $kw1      = '';
            $kw2      = '';
            $kw4      = '';
            $str      = $name;
            $blankNum = $A;//名称控制为14个字节
            $lan      = mb_strlen($str, 'utf-8');
            $m        = 0;
            $j        = 1;
            $blankNum++;
            $result = array();
            if (strlen($price) < $B) {
                $k1 = $B - strlen($price);
                for ($q = 0; $q < $k1; $q++) {
                    $kw1 .= ' ';
                }
                $price = $price . $kw1;
            }
            if (strlen($num) < $C) {
                $k2 = $C - strlen($num);
                for ($q = 0; $q < $k2; $q++) {
                    $kw2 .= ' ';
                }
                $num = $num . $kw2;
            }
            if (strlen($prices) < $D) {
                $k3 = $D - strlen($prices);
                for ($q = 0; $q < $k3; $q++) {
                    $kw4 .= ' ';
                }
                $prices = $prices . $kw4;
            }
            for ($i = 0; $i < $lan; $i++) {
                $new = mb_substr($str, $m, $j, 'utf-8');
                $j++;
                if (mb_strwidth($new, 'utf-8') < $blankNum) {
                    if ($m + $j > $lan) {
                        $m      = $m + $j;
                        $tail   = $new;
                        $lenght = iconv("UTF-8", "GBK//IGNORE", $new);
                        $k      = $A - strlen($lenght);
                        for ($q = 0; $q < $k; $q++) {
                            $kw3 .= ' ';
                        }
                        if ($m == $j) {
                            $tail .= $kw3 . ' ' . $price . ' ' . $num . ' ' . $prices;
                        } else {
                            $tail .= $kw3 . '<BR>';
                        }
                        break;
                    } else {
                        $next_new = mb_substr($str, $m, $j, 'utf-8');
                        if (mb_strwidth($next_new, 'utf-8') < $blankNum) continue;
                        else {
                            $m        = $i + 1;
                            $result[] = $new;
                            $j        = 1;
                        }
                    }
                }
            }
            $head = '';
            foreach ($result as $key => $value) {
                if ($key < 1) {
                    $v_lenght = iconv("UTF-8", "GBK//IGNORE", $value);
                    $v_lenght = strlen($v_lenght);
                    if ($v_lenght == 13) $value = $value . " ";
                    $head .= $value . ' ' . $price . ' ' . $num . ' ' . $prices;
                } else {
                    $head .= $value . '<BR>';
                }
            }
            $orderInfo .= $head . $tail;
            @$nums += $prices;
        }

        $orderInfo .= '--------------------------------<BR>';

        return $orderInfo;
    }

    //提交编辑
    public function edit_post()
    {
        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        $result = $ShopOrderInit->admin_edit_post($params);
        if (empty($result)) $this->error('失败请重试');


        $this->success("保存成功", 'index' . $this->params_url);
    }


    //修改备注
    public function setRemark()
    {
        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理

        $result = $ShopOrderInit->admin_edit_post($params);
        if (empty($result)) $this->error('失败请重试');

        $this->success("保存成功", 'index' . $this->params_url);
    }


    //添加
    public function add()
    {
        return $this->fetch();
    }


    //添加提交
    public function add_post()
    {
        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        $result = $ShopOrderInit->admin_edit_post($params);
        if (empty($result)) $this->error('失败请重试');


        $this->success("保存成功", 'index' . $this->params_url);
    }


    //查看详情
    public function details()
    {
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];


        $result = $ShopOrderInit->get_find($where);


        if (empty($result)) $this->error("暂无数据");


        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }


        return $this->fetch();
    }


    //退款理由
    public function reason()
    {
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];


        $result = $ShopOrderInit->get_find($where);


        if (empty($result)) $this->error("暂无数据");

        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    //发货
    public function send()
    {
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];


        $result = $ShopOrderInit->get_find($where);
        if (empty($result)) $this->error("暂无数据");
        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        //快递公司
        $express = Db::name('base_express')->select();
        $this->assign('express', $express);

        return $this->fetch();
    }


    //发货提交
    public function send_post()
    {
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理

        //订单发货后自动完成时间 单位/天
        $order_auto_completion_time = cmf_config('order_auto_completion_time');

        $params     = $this->request->param();
        $order_info = $ShopOrderInit->get_find($params['id']);
        if (empty($order_info)) $this->error('订单信息错误');

        if (empty($params['exp_num'])) $this->error('快递单号不能为空');


        //快递信息
        $express_info = Db::name('base_express')->find($params['exp_id']);

        //更改订单信息
        $params['exp_name']             = $express_info['name'];//快递名称
        $params['status']               = 4;
        $params['send_time']            = time();
        $params['auto_accomplish_time'] = time() + $order_auto_completion_time * 86400;//自动完成时间
        $ShopOrderInit->edit_post($params);


        //        $map     = [];
        //        $map[]   = ['order_num', '=', $order_info['order_num']];
        //        $map[]   = ['status', '=', 2];
        //        $pay_num = Db::name('base_order_pay')->where($map)->value('pay_num');
        //
        //        //微信支付&发货
        //        if ($order_info['pay_type'] != 2) {
        //            $phone   = $order_info['phone'];
        //            $exp_num = $params['exp_num'];
        //            //发货
        //            $openid           = $order_info['openid'];
        //            $WxBaseController = new WxBaseController();
        //
        //
        //            if ($params['is_virtual'] == 2) {
        //                //虚拟发货
        //                $send_result = $WxBaseController->uploadShippingInfo($pay_num, $openid, '订单发货', 3);
        //            } else {
        //                //快递发货
        //                $send_result = $WxBaseController->uploadShippingInfo($pay_num, $openid, '订单发货', 1, $express_info['abbr'], $exp_num, $phone);
        //            }
        //
        //            if ($send_result) {
        //                Log::write('uploadShippingInfo-');
        //                Log::write($send_result);
        //            }
        //        }


        $this->success('发货成功');
    }


    //核销订单
    public function verification_order()
    {
        $ShopOrderModel = new \initmodel\ShopOrderModel(); //订单管理  (ps:InitModel)

        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];


        /** 查询数据 **/
        $order_info = $ShopOrderModel->where($where)->find();
        if (empty($order_info)) $this->error("暂无数据");
        if ($order_info['status'] != 2) $this->error("订单状态错误");


        $result = $ShopOrderModel->where($where)->strict(false)->update([
            "status"          => 8,
            "update_time"     => time(),
            "accomplish_time" => time(),
        ]);
        if (empty($result)) $this->error("失败请重试");

        //订单完成,发佣金等操作
        //        $InitController = new InitController();//基础接口
        //        $InitController->orderCommentPoint($order_info['user_id'], $order_info['order_num']);


        $this->success("操作成功");
    }


    //删除
    public function delete()
    {
        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        $where = [];
        if ($params['id']) $where[] = ['id', '=', $params['id']];
        if (empty($params['id'])) {
            $ids     = $this->request->param('ids/a');
            $where[] = ['id', 'in', $ids];
        }


        $result = $ShopOrderInit->delete_post($where);
        if (empty($result)) $this->error('失败请重试');


        $this->success("删除成功", 'index' . $this->params_url);
    }

    //删除
    public function delete_order()
    {
        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        $where = [];
        if ($params['id']) $where[] = ['id', '=', $params['id']];
        if (empty($params['id'])) {
            $ids     = $this->request->param('ids/a');
            $where[] = ['id', 'in', $ids];
        }


        $result = $ShopOrderInit->delete_post($where, 2);
        if (empty($result)) $this->error('失败请重试');


        $this->success("删除成功", 'index' . $this->params_url);
    }


    //修改状态
    public function status_post()
    {
        $params        = $this->request->param();
        $status        = $this->request->param('status');
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        $id = $this->request->param('id/a');


        if (empty($id)) $id = $this->request->param('ids/a');
        if (empty($id) || $status == '') $this->error('参数错误');


        $result = $ShopOrderInit->status_post($id, $status);
        if (empty($result)) $this->error('失败请重试');


        $this->success("保存成功", 'index' . $this->params_url);
    }


    //退款拒绝
    public function refuse()
    {
        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        $where   = [];
        $where[] = ['id', '=', $params['id']];
        $result  = $ShopOrderInit->get_find($where);


        if (empty($result)) $this->error("暂无数据");

        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    //退款操作,退款全部金额
    public function reject_post()
    {
        $params           = $this->request->param();
        $ShopOrderInit    = new \init\ShopOrderInit();//订单管理
        $WxBaseController = new WxBaseController();//微信基础类


        if ($params['status'] == 14) $params['refund_reject_time'] = time();


        if ($params['status'] == 16) {
            $order_info = $ShopOrderInit->get_find($params['id']);
            //退款金额
            $refund_amount = $order_info['amount'];
            if ($order_info['pay_type'] == 2) $refund_amount = $order_info['balance'];
            //退款通过时间
            $params['refund_pass_time'] = time();

            //退款 && 微信退款
            if ($order_info['pay_type'] == 1) {
                $refund_result = $WxBaseController->wx_refund($order_info['pay_num'], $refund_amount, $order_info['amount']);//后台  退款操作,退款全部金额 &&微信
                if ($refund_result['code'] == 0) $this->error($refund_result['msg']);
            }
            //余额退款
            if ($order_info['pay_type'] == 2) {
                $admin_id_and_name = cmf_get_current_admin_id() . '-' . session('name');//管理员信息
                $remark            = "操作人[{$admin_id_and_name}];操作说明[同意退款订单:{$order_info['order_num']};金额:{$order_info['balance']}];操作类型[管理员同意退款申请];";//管理备注
                AssetModel::incAsset('后台余额,订单退款成功,增加余额,全额退款 [110]', [
                    'operate_type'  => 'balance',//操作类型，balance|point ...
                    'identity_type' => 'member',//身份类型，member| ...
                    'user_id'       => $order_info['user_id'],
                    'price'         => $refund_amount,
                    'order_num'     => $order_info['order_num'],
                    'order_type'    => 110,
                    'content'       => '订单退款成功',
                    'remark'        => $remark,
                    'order_id'      => $order_info['id'],
                ]);
            }
            //组合支付 &&微信+余额
            if ($order_info['pay_type'] == 5) {
                //余额
                $admin_id_and_name = cmf_get_current_admin_id() . '-' . session('name');//管理员信息
                $remark            = "操作人[{$admin_id_and_name}];操作说明[同意退款订单:{$order_info['order_num']};金额:{$order_info['balance']}];操作类型[管理员同意退款申请];";//管理备注

                AssetModel::incAsset('后台余额,订单退款成功,组合支付,部分退款 [110]', [
                    'operate_type'  => 'balance',//操作类型，balance|point ...
                    'identity_type' => 'member',//身份类型，member| ...
                    'user_id'       => $order_info['user_id'],
                    'price'         => $order_info['balance'],
                    'order_num'     => $order_info['order_num'],
                    'order_type'    => 110,
                    'content'       => '订单退款成功',
                    'remark'        => $remark,
                    'order_id'      => $order_info['id'],
                ]);


                //微信
                $refund_result = $WxBaseController->wx_refund($order_info['pay_num'], $refund_amount, $order_info['amount']);//后台  退款操作,退款全部金额 &&微信+余额
                if ($refund_result['code'] == 0) $this->error($refund_result['msg']);
            }
        }


        $result = $ShopOrderInit->api_edit_post($params);
        if (empty($result)) $this->error('失败请重试');


        $this->success("保存成功", 'index' . $this->params_url);
    }


    //部分金额退款
    public function reject_post2()
    {
        $params           = $this->request->param();
        $ShopOrderInit    = new \init\ShopOrderInit();//订单管理
        $WxBaseController = new WxBaseController();//微信基础类

        //退款金额
        $refund_amount              = $params['refund_amount'];
        $order_info                 = $ShopOrderInit->get_find($params['id']);
        $params['refund_pass_time'] = time();//退款通过时间
        $params['status']           = 16;


        if ($refund_amount > $order_info['amount']) $this->error('请输入有效金额!');


        //退款 && 微信退款
        if ($order_info['pay_type'] == 1) {
            $refund_result = $WxBaseController->wx_refund($order_info['pay_num'], $refund_amount, $order_info['amount']);//后台  部分金额退款  &&微信
            if ($refund_result['code'] == 0) $this->error($refund_result['msg']);
        }
        //余额退款
        if ($order_info['pay_type'] == 2) {
            $admin_id_and_name = cmf_get_current_admin_id() . '-' . session('name');//管理员信息
            $remark            = "操作人[{$admin_id_and_name}];操作说明[同意退款订单:{$order_info['order_num']};金额:{$order_info['balance']}];操作类型[管理员同意退款申请];";//管理备注

            AssetModel::incAsset('后台余额,订单退款成功,手动输入金额退款 [110]', [
                'operate_type'  => 'balance',//操作类型，balance|point ...
                'identity_type' => 'member',//身份类型，member| ...
                'user_id'       => $order_info['user_id'],
                'price'         => $refund_amount,
                'order_num'     => $order_info['order_num'],
                'order_type'    => 110,
                'content'       => '订单退款成功',
                'remark'        => $remark,
                'order_id'      => $order_info['id'],
            ]);

        }
        //组合支付 &&微信+余额
        if ($order_info['pay_type'] == 5) {
            //余额
            $admin_id_and_name = cmf_get_current_admin_id() . '-' . session('name');//管理员信息
            $remark            = "操作人[{$admin_id_and_name}];操作说明[同意退款订单:{$order_info['order_num']};金额:{$order_info['balance']}];操作类型[管理员同意退款申请];";//管理备注

            AssetModel::incAsset('后台余额,订单退款成功,组合支付,手动输入金额退款 [110]', [
                'operate_type'  => 'balance',//操作类型，balance|point ...
                'identity_type' => 'member',//身份类型，member| ...
                'user_id'       => $order_info['user_id'],
                'price'         => $order_info['balance'],
                'order_num'     => $order_info['order_num'],
                'order_type'    => 110,
                'content'       => '订单退款成功',
                'remark'        => $remark,
                'order_id'      => $order_info['id'],
            ]);

            //微信
            $refund_amount = $order_info['amount'];
            $refund_result = $WxBaseController->wx_refund($order_info['pay_num'], $refund_amount, $order_info['amount']);//后台  部分金额退款  &&微信+余额
            if ($refund_result['code'] == 0) $this->error($refund_result['msg']);
        }


        $result = $ShopOrderInit->api_edit_post($params);
        if (empty($result)) $this->error('失败请重试');


        $this->success("保存成功", 'index' . $this->params_url);
    }


    //拒绝理由
    public function refund_why()
    {
        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理
        $where         = [];
        $where[]       = ['id', '=', $params['id']];
        $result        = $ShopOrderInit->get_find($where);
        if (empty($result)) $this->error("暂无数据");
        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    /**
     * 导出数据
     * @param array $where 条件
     */
    public function export_excel($where = [], $params = [])
    {
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理

        $result = $ShopOrderInit->get_list($where, $params);
        $result = $result->toArray();

        foreach ($result as $k => &$item) {
            //背景颜色
            if ($item['unit'] == '测试8') $item['BackgroundColor'] = 'red';


            //订单号过长问题
            if ($item["order_num"]) $item["order_num"] = $item["order_num"] . "\t";

            //图片链接 可用默认浏览器打开   后面为展示链接名字 --单独,多图特殊处理一下
            if ($item["image"]) $item["image"] = '=HYPERLINK("' . cmf_get_asset_url($item['image']) . '","图片.png")';

            //商品信息
            $goodsInfo = '';
            foreach ($item['goods_list'] as $goods) {
                $goodsInfo .= "名称:{$goods['goods_name']}\n";
                if ($goods['sku_name']) $goodsInfo .= "规格:{$goods['sku_name']}\n";
                $goodsInfo .= "数量:{$goods['count']}\n";
                $goodsInfo .= "单价:{$goods['goods_price']}\n\n\n";
            }
            $item['goodsInfo'] = $goodsInfo;


            //地址信息
            $addressInfo = "地址:{$item['address']}\n";
            $addressInfo .= "姓名:{$item['username']}\n";
            $addressInfo .= "电话:{$item['phone']}\n";
            if ($item['number']) $addressInfo .= "编号:#{$item['number']}\n";
            $addressInfo         .= "配送时间:{$item['delivery_time']}\n";
            $addressInfo         .= "预定时间:{$item['date']} ( {$item['week_name']})\n";
            $item['addressInfo'] = $addressInfo;

            //物流信息
            if ($item['exp_name'] || $item['exp_num']) {
                $expInfo         = "快递名称:{$item['exp_name']}\n";
                $expInfo         .= "快递单号:{$item['exp_num']}\n";
                $item['expInfo'] = $expInfo;
            }

            //用户信息
            $user_info        = $item['user_info'];
            $item['userInfo'] = "(ID:{$user_info['id']}) {$user_info['nickname']}  {$user_info['phone']}";


            if ($item['pay_time'] == 0) $item['pay_time'] = '';
            if ($item['pay_time']) $item['pay_time'] = date('Y-m-d H:i:s', $item['pay_time']);
            if ($item['accomplish_time']) $item['accomplish_time'] = date('Y-m-d H:i:s', $item['accomplish_time']);

        }

        $headArrValue = [
            ["rowName" => "ID", "rowVal" => "id", "width" => 10],
            ["rowName" => "用户信息", "rowVal" => "userInfo", "width" => 30],
            ["rowName" => "订单号", "rowVal" => "order_num", "width" => 30],
            ["rowName" => "状态", "rowVal" => "status_name", "width" => 30],
            ["rowName" => "支付方式", "rowVal" => "pay_type_name", "width" => 30],
            ["rowName" => "订单金额", "rowVal" => "total_amount", "width" => 30],
            ["rowName" => "收货地址", "rowVal" => "addressInfo", "width" => 30],
            ["rowName" => "商品信息", "rowVal" => "goodsInfo", "width" => 30],
            ["rowName" => "下单时间", "rowVal" => "create_time", "width" => 30],
            ["rowName" => "支付时间", "rowVal" => "pay_time", "width" => 30],
            ["rowName" => "完成时间", "rowVal" => "accomplish_time", "width" => 30],
        ];


        //副标题 纵单元格
        //        $subtitle = [
        //            ["rowName" => "列1", "acrossCells" => 2],
        //            ["rowName" => "列2", "acrossCells" => 2],
        //        ];

        $Excel = new ExcelController();
        $Excel->excelExports($result, $headArrValue, ["fileName" => "订单导出"]);
    }

}
