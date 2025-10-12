<?php

namespace init;

use api\wxapp\controller\InitController;
use plugins\weipay\lib\PayController;
use think\facade\Db;
use think\facade\Log;
use think\facade\Cache;

/**
 * 定时任务
 */
class TaskInit
{


    /**
     * 操作购物车,自动清空当天购物车
     */
    public function operation_cart()
    {
        $ShopCartModel = new \initmodel\ShopCartModel();

        if (date('H:i') == '23:59') {
            $map   = [];
            $map[] = ['id', '<>', 0];
            $ShopCartModel->where($map)->strict(false)->update([
                'delete_time' => time(),
                'update_time' => time(),
            ]);
        }

        echo("操作购物车,自动清空当天购物车,执行成功\n" . cmf_random_string(80) . "\n" . date('Y-m-d H:i:s') . "\n");
    }

    /**
     * 更新商品库存,恢复成默认库存
     */
    public function operation_stock()
    {
        $ShopGoodsModel    = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)
        $ShopGoodsSkuModel = new \initmodel\sku\ShopGoodsSkuModel();


        if (date('H:i') == '00:01') {

            //商品库存
            $map        = [];
            $map[]      = ['id', '<>', 0];
            $map[]      = ['default_stock', '<>', 0];
            $goods_list = $ShopGoodsModel->where($map)->select();
            foreach ($goods_list as $k => $goods_info) {
                $map100   = [];
                $map100[] = ['id', '=', $goods_info['id']];
                $ShopGoodsModel->where($map100)->strict(false)->update([
                    'stock'       => $goods_info['default_stock'],
                    'update_time' => time(),
                ]);
            }


            //规格库存
            $map200   = [];
            $map200[] = ['id', '<>', 0];
            $map200[] = ['default_stock', '<>', 0];
            $sku_list = $ShopGoodsSkuModel->where($map200)->select();
            foreach ($sku_list as $k => $sku_info) {
                $map300   = [];
                $map300[] = ['id', '=', $sku_info['id']];
                $ShopGoodsSkuModel->where($map300)->strict(false)->update([
                    'stock'       => $sku_info['default_stock'],
                    'update_time' => time(),
                ]);
            }

        }

        echo("操作购物车,自动清空当天购物车,执行成功\n" . cmf_random_string(80) . "\n" . date('Y-m-d H:i:s') . "\n");
    }

    /**
     * 自动取消订单
     */
    public function operation_cancel_order()
    {
        $ShopOrderModel       = new \initmodel\ShopOrderModel(); //商城订单   (ps:InitModel)
        $ShopOrderDetailModel = new \initmodel\ShopOrderDetailModel();//订单详情
        $StockInit            = new \init\StockInit();
        $Pay                  = new PayController();
        $OrderPayModel        = new \initmodel\OrderPayModel();

        $map   = [];
        $map[] = ['auto_cancel_time', '<', time()];
        $map[] = ['status', '=', 1];
        $list  = $ShopOrderModel->where($map)->select();

        foreach ($list as $key => $order_info) {

            //微信支付取消 && 不让再次支付了
            if (empty($order_info['pay_num'])) {
                $map300   = [];
                $map300[] = ['order_num', '=', $order_info['order_num']];
                $pay_num  = $OrderPayModel->where($map300)->value('pay_num');
            } else {
                $pay_num = $order_info['pay_num'];
            }
            if ($pay_num) $Pay->close_order($pay_num);


            //添加库存
            $order_detail = $ShopOrderDetailModel->where('order_num', '=', $order_info['order_num'])->select();
            foreach ($order_detail as $k => $v) {
                $StockInit->inc_stock('shop_goods', $v['sku_id'], $v['count'], $v['goods_id'], $order_info['order_num']);
            }


        }

        $ShopOrderModel->where($map)->strict(false)->update([
            'status'      => 10,
            'cancel_time' => time(),
            'update_time' => time(),
        ]);


        echo("自动取消订单,执行成功\n" . cmf_random_string(80) . "\n" . date('Y-m-d H:i:s') . "\n");
    }

    /**
     * 自动打印订单
     */
    public function operation_print_order()
    {
        $ShopOrderModel = new \initmodel\ShopOrderModel(); //商城订单   (ps:InitModel)
        $InitController = new InitController();//基础类


        //打印时间
        $print_time = cmf_config('print_time');

        //超过设定时间开始打印
        if ($print_time < date('H:i')) {

            $map   = [];
            $map[] = ['date', '=', date('Y-m-d', strtotime("yesterday"))];
            $map[] = ['status', 'in', [2, 8]];
            $map[] = ['is_print', '=', 2];
            $list  = $ShopOrderModel->where($map)->limit(20)->select();


            foreach ($list as $key => $order_info) {
                //标签打印,小票打印
                $InitController->labelPrint($order_info['order_num']);
                $InitController->infoPrint($order_info['order_num']);

                //更改状态
                $ShopOrderModel->where('order_num', '=', $order_info['order_num'])->strict(false)->update([
                    'is_print'    => 1,
                    'update_time' => time(),
                ]);
            }

        }


        echo("自动打印订单,执行成功\n" . cmf_random_string(80) . "\n" . date('Y-m-d H:i:s') . "\n");
    }


    /**
     * 自动完成订单
     */
    public function operation_accomplish_order()
    {
        $ShopOrderModel = new \initmodel\ShopOrderModel(); //商城订单   (ps:InitModel)
        $InitController = new InitController();//基础接口


        $map   = [];
        $map[] = ['auto_accomplish_time', '<', time()];
        $map[] = ['status', '=', 2];

        //        $list = $ShopOrderModel->where($map)->field('id,order_num')->select();
        //        foreach ($list as $k => $order_info) {
        //            //这里处理订单完成后的逻辑
        //            $InitController->sendShopOrderAccomplish($order_info['order_num']);
        //        }

        $ShopOrderModel->where($map)->strict(false)->update([
            'status'          => 8,
            'accomplish_time' => time(),
            'update_time'     => time(),
        ]);


        echo("自动取消订单,执行成功\n" . cmf_random_string(80) . "\n" . date('Y-m-d H:i:s') . "\n");
    }


    /**
     * 更新vip状态
     */
    public function operation_vip()
    {
        $MemberModel = new \initmodel\MemberModel();//用户管理

        //操作vip   vip_time vip到期时间
        //$MemberModel->where('vip_time', '<', time())->update(['is_vip' => 0]);
        echo("更新vip状态,执行成功\n" . cmf_random_string(80) . "\n" . date('Y-m-d H:i:s') . "\n");
    }


    /**
     * 将公众号的official_openid存入member表中
     */
    public function update_official_openid()
    {
        $gzh_list = Db::name('member_gzh')->select();
        foreach ($gzh_list as $k => $v) {
            Db::name('member')->where('unionid', '=', $v['unionid'])->update(['official_openid' => $v['openid']]);
        }

        echo("将公众号的official_openid存入member表中,执行成功\n" . cmf_random_string(80) . "\n" . date('Y-m-d H:i:s') . "\n");
    }

}