<?php

namespace api\wxapp\controller;

use initmodel\AssetModel;
use initmodel\MemberModel;
use plugins\fe_print\FePrintPlugin;
use think\facade\Log;

/**
 * @ApiController(
 *     "name"                    =>"Init",
 *     "name_underline"          =>"init",
 *     "controller_name"         =>"Init",
 *     "table_name"              =>"无",
 *     "remark"                  =>"基础接口,封装的接口"
 *     "api_url"                 =>"/api/wxapp/init/index",
 *     "author"                  =>"",
 *     "create_time"             =>"2024-04-24 17:16:22",
 *     "version"                 =>"1.0",
 *     "use"                     => new \api\wxapp\controller\InitController();
 *     "test_environment"        =>"http://meal.ikun:9090/api/wxapp/init/index",
 *     "official_environment"    =>"http://xcxkf207.aubye.com/api/wxapp/init/index",
 * )
 */
class InitController
{
    /**
     * 本模块,用于封装常用方法,复用方法
     */


    /**
     * 给上级发放佣金
     * @param $p_user_id 上级id
     * @param $child_id  子级id
     *                   http://xcxkf207.aubye.com/api/wxapp/init/send_invitation_commission?p_user_id=1
     */
    public function sendInvitationCommission($p_user_id = 0, $child_id = 0)
    {
        //邀请佣金
        $price  = cmf_config('invitation_rewards');
        $remark = "操作人[邀请奖励];操作说明[邀请好友得佣金];操作类型[佣金奖励];";//管理备注

        AssetModel::incAsset('邀请注册奖励,给上级发放佣金 [120]', [
            'operate_type'  => 'balance',//操作类型，balance|point ...
            'identity_type' => 'member',//身份类型，member| ...
            'user_id'       => $p_user_id,
            'price'         => $price,
            'order_num'     => cmf_order_sn(),
            'order_type'    => 120,
            'content'       => '邀请奖励',
            'remark'        => $remark,
            'order_id'      => 0,
            'child_id'      => $child_id
        ]);

        return true;
    }


    /**
     * 订单完成,发放佣金
     * @param $order_num
     */
    public function sendShopOrderAccomplish($order_num)
    {
        $ShopOrderModel = new \initmodel\ShopOrderModel();//订单管理
        $MemberModel    = new \initmodel\MemberModel();//用户管理


        $map        = [];
        $map[]      = ['order_num', '=', $order_num];
        $order_info = $ShopOrderModel->where($map)->find();
        if (empty($order_info)) return false;


        //查询上级
        $p_user_id = $MemberModel->where('id', '=', $order_info['user_id'])->value('pid');
        if ($p_user_id && $order_info['commission']) {
            $remark = "操作人[下单得佣金];操作说明[下单得佣金];操作类型[下单得佣金];";//管理备注
            AssetModel::incAsset('下单得佣金,给上级发放佣金 [120]', [
                'operate_type'  => 'balance',//操作类型，balance|point ...
                'identity_type' => 'member',//身份类型，member| ...
                'user_id'       => $p_user_id,
                'price'         => $order_info['commission'],
                'order_num'     => $order_num,
                'order_type'    => 120,
                'content'       => '商城下单奖励',
                'remark'        => $remark,
                'order_id'      => $order_info['id'],
            ]);

            //查询上上级
            $sp_user_id = $MemberModel->where('id', '=', $p_user_id)->value('pid');
            if ($sp_user_id && $order_info['commission2']) {
                $remark = "操作人[下单得佣金];操作说明[下单得佣金];操作类型[下单得佣金];";//管理备注
                AssetModel::incAsset('下单得佣金,给上级发放佣金 [130]', [
                    'operate_type'  => 'balance',//操作类型，balance|point ...
                    'identity_type' => 'member',//身份类型，member| ...
                    'user_id'       => $sp_user_id,
                    'price'         => $order_info['commission2'],
                    'order_num'     => $order_num,
                    'order_type'    => 130,
                    'content'       => '商城下单奖励',
                    'remark'        => $remark,
                    'order_id'      => $order_info['id'],
                ]);
            }
        }

        return true;
    }


    /**
     * 获取所有子级ID（递归方法）
     * @param int    $pid      父级ID
     * @param array &$childIds 用于存储结果的数组
     * @return array
     */
    public function getAllChildIds($pid, &$childIds = [])
    {
        $MemberModel = new \initmodel\MemberModel();


        // 查询直接子级
        $map      = [];
        $map[]    = ['pid', '=', $pid];
        $map[]    = ['is_show', '=', 1];
        $children = $MemberModel->where($map)->column('id');

        if (!empty($children)) {
            foreach ($children as $childId) {
                $childIds[] = $childId;
                // 递归查询子级的子级
                $this->getAllChildIds($childId, $childIds);
            }
        }

        return $childIds;
    }


    /**
     * 打印小票
     * @param $order_num
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function infoPrint($order_num)
    {
        $ShopOrderInit        = new \init\ShopOrderInit();//订单管理
        $ShopOrderDetailModel = new \initmodel\ShopOrderDetailModel();//订单详情  (ps:InitModel)
        $FePrintPlugin        = new  FePrintPlugin();


        /** 查询条件 **/
        $where   = [];
        $where[] = ["order_num", "=", $order_num];


        //订单信息
        $order_info = $ShopOrderInit->get_find($where);
        if (empty($order_info)) return ['code' => 0, 'msg' => '暂无数据', 'data' => null];


        //订单详情
        $map               = [];
        $map[]             = ['order_num', '=', $order_info['order_num']];
        $order_detail_list = $ShopOrderDetailModel->where($map)->select();
        if (empty($order_detail_list)) return ['code' => 0, 'msg' => '暂无数据', 'data' => null];


        $content = "<CB>{$order_info['date']}(#{$order_info['number']})</CB><BR>";
        $content .= '名称　　　　　 单价  数量 金额<BR>';
        $content .= $this->set_goods($order_detail_list);
        $content .= "备注：{$order_info['remark']}<BR>";
        $content .= "合计：{$order_info['amount']}元<BR>";
        $content .= "送货地点：{$order_info['address']}<BR>";
        $content .= "联系电话：{$order_info['phone']}<BR>";
        $content .= "配送时间：{$order_info['delivery_time']}<BR>";
        $content .= "预定时间：{$order_info['date']} ({$order_info['week_name']})<BR>";

        $result = $FePrintPlugin->InfoPrint(cmf_config('small_ticket_sn'), $content);

        if ($result['code'] == 0) {
            Log::write("(小票)打印小票出错:   单号{$order_info['order_num']}  时间:" . date('Y-m-d H:i:s') . "  参数如下:");
            Log::write($content);
            Log::write("(小票)打印机报错信息如下:");
            Log::write($result);
            return ['code' => 0, 'msg' => $result['msg'], 'data' => $result];
        }


        return ['code' => 1, 'msg' => '打印成功', 'data' => null];
    }


    /**
     * 打印标签
     * @param $order_num
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function labelPrint($order_num)
    {
        $ShopOrderInit        = new \init\ShopOrderInit();//订单管理
        $ShopOrderDetailModel = new \initmodel\ShopOrderDetailModel();//订单详情
        $FePrintPlugin        = new FePrintPlugin();


        /** 查询条件 **/
        $where   = [];
        $where[] = ["order_num", "=", $order_num];

        //订单信息
        $order_info = $ShopOrderInit->get_find($where);
        if (empty($order_info)) return ['code' => 0, 'msg' => '暂无数据', 'data' => null];

        //订单详情
        $map               = [];
        $map[]             = ['order_num', '=', $order_info['order_num']];
        $order_detail_list = $ShopOrderDetailModel->where($map)->order('id desc')->select();
        if (empty($order_detail_list)) return ['code' => 0, 'msg' => '暂无数据', 'data' => null];

        $content     = '';
        $total_count = $ShopOrderDetailModel->where($map)->sum('count');//总数量
        $i           = 1;

        foreach ($order_detail_list as $k => $order_detail) {
            $goods_name = $order_detail["goods_name"];
            if ($order_detail['sku_name']) $goods_name .= ' SKU:[' . $order_detail['sku_name'] . ']';

            // 商品名称自动换行处理（每行最多35个字符）
            $goods_name = $this->wrapText($goods_name, 13, 35);

            //地址名称自动换行处理（每行最多35个字符）
            $address = $this->wrapText($order_info['address'], 13, 35);

            //备注
            $remark = $this->wrapText($order_info['remark'], 13, 35);

            //再根据数量循环打印
            for ($j = 0; $j < $order_detail["count"]; $j++) {
                if ($remark) {
                    $content = '<TEXT x="9" y="7" font="12" w="1" h="1" r="0">#' . $order_info['number'] . '         ' . '      ' . $i . '/' . $total_count . '</TEXT>';
                    // 商品名称 - 使用小字体并支持换行（保持原来位置）
                    $content .= '<TEXT x="10" y="36" font="12" w="1" h="1" r="0">' . $goods_name . '</TEXT>';
                    // 隔开
                    $content .= '<TEXT x="10" y="52" font="12" w="1" h="1" r="0">--------------------------------------------</TEXT>';
                    // 备注
                    $content .= '<TEXT x="10" y="68" font="12" w="1" h="1" r="0">' . $remark . ' </TEXT>';
                    // 隔开
                    $content .= '<TEXT x="10" y="132" font="12" w="1" h="1" r="0">--------------------------------------------</TEXT>';
                    // 地址信息
                    $content .= '<TEXT x="10" y="144" font="12" w="1" h="1" r="0">' . $address . '</TEXT>';

                    // 用户信息 - 保持在最下面（原来位置）
                    $content .= '<TEXT x="9" y="215" font="12" w="1" h="1" r="0">' . $this->LR($order_info['username'], $order_info['phone'], 26) . '</TEXT>';
                } else {
                    $content = '<TEXT x="9" y="10" font="12" w="1" h="1" r="0">#' . $order_info['number'] . '         ' . '      ' . $i . '/' . $total_count . '</TEXT>';

                    // 商品名称 - 使用小字体并支持换行（保持原来位置）
                    $content .= '<TEXT x="10" y="40" font="12" w="1" h="1" r="0">' . $goods_name . '</TEXT>';

                    // 隔开
                    $content .= '<TEXT x="10" y="115" font="12" w="1" h="1" r="0">--------------------------------------------</TEXT>';

                    // 地址信息
                    $content .= '<TEXT x="10" y="130" font="12" w="1" h="1" r="0">' . $address . '</TEXT>';

                    // 用户信息 - 保持在最下面（原来位置）
                    $content .= '<TEXT x="9" y="210" font="12" w="1" h="1" r="0">' . $this->LR($order_info['username'], $order_info['phone'], 26) . '</TEXT>';
                }


                $i += 1;

                //这里打印标签 (正式打印)
                $result = $FePrintPlugin->LabelPrint(cmf_config('label_sn'), $content);
                if ($result['code'] == 0) {
                    Log::write("(标签)打印标签出错:   单号{$order_info['order_num']}  时间:" . date('Y-m-d H:i:s') . "  参数如下:");
                    Log::write($content);

                    Log::write("(标签)打印机报错信息如下:");
                    Log::write($result);
                }
            }
        }


        return ['code' => 1, 'msg' => '打印成功', 'data' => null];
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
    private function LR($str_left, $str_right, $length)
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
    private function set_goods($arr, $A = 14, $B = 6, $C = 3, $D = 6)
    {
        $orderInfo = '--------------------------------<BR>';
        foreach ($arr as $k5 => $v5) {
            $name = $v5['goods_name'];
            if ($v5['sku_name']) $name .= ' SKU:[' . $v5['sku_name'] . ']';
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


}