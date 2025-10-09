<?php

namespace api\wxapp\controller;

/**
 * @ApiController(
 *     "name"                    =>"ShopOrder",
 *     "controller_name"         =>"ShopOrder",
 *     "table_name"              =>"shop_order",
 *     "remark"                  =>"订单管理"
 *     "api_url"                 =>"/api/wxapp/shop_order/index",
 *     "author"                  =>"",
 *     "create_time"             =>"2023-05-20 10:22:00",
 *     "version"                 =>"1.0",
 *     "use"                     => new \api\wxapp\controller\ShopOrderController();
 *     "test_environment"        =>"http://meal.ikun:9090/api/wxapp/shop_order/index",
 *     "official_environment"    =>"http://xcxkf207.aubye.com/api/wxapp/shop_order/index",
 * )
 */


use initmodel\AssetModel;
use plugins\weipay\lib\PayController;
use think\facade\Db;


error_reporting(0);


class ShopOrderController extends AuthController
{
    public function initialize()
    {
        //订单管理

        parent::initialize();

    }


    /**
     * 默认接口
     *  /wxapp/shop_order/index
     * http://xcxkf207.aubye.com/api/wxapp/shop_order/index
     * api: /wxapp/shop_order/index
     *
     */
    public function index()
    {

        $this->success("订单管理-接口请求成功");
    }


    /**
     * 订单列表
     * @OA\Post(
     *     tags={"订单管理"},
     *     path="/wxapp/shop_order/find_order_list",
     *
     *
     *
     *    @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *     @OA\Parameter(
     *         name="keyword",
     *         in="query",
     *         description="关键字搜索(选填)",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Parameter(
     *         name="status",
     *         in="query",
     *         description="1待付款,2已付款(待发货),8已完成,10已取消,12售后",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Parameter(
     *         name="type",
     *         in="query",
     *         description="商品类型:goods=普通商品,  (选填)如不穿默认普通商品",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_order/find_order_list
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_order/find_order_list
     *   api: /wxapp/shop_order/find_order_list
     *
     *
     */
    public function find_order_list()
    {
        $this->checkAuth();


        $params        = $this->request->param();
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        $where   = [];
        $where[] = ['user_id', '=', $this->user_id];
        $where[] = ['type', '=', $params['type'] ?? 'goods'];
        //$where[] = ['is_show', '=', 1];//未删除订单
        if ($params['keyword']) $where[] = ['order_num|username|phone|province|city|county|address|remark|exp_num|exp_name', 'like', "%" . $params['keyword'] . "%"];
        if ($params['status']) $where[] = ['status', 'in', $ShopOrderInit->api_status_where[$params['status']]];


        $result = $ShopOrderInit->get_list_paginate($where);
        //if (empty($result)) $this->error("暂无信息!");


        $this->success("请求成功!", $result);
    }


    /**
     * 订单详情
     * @OA\Post(
     *     tags={"订单管理"},
     *     path="/wxapp/shop_order/find_order",
     *
     *
     *
     *    @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="id",
     *         in="query",
     *         description="id 二选一",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *    @OA\Parameter(
     *         name="order_num",
     *         in="query",
     *         description="order_num 二选一",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_order/find_order
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_order/find_order
     *   api: /wxapp/shop_order/find_order
     *
     */
    public function find_order()
    {
        $ShopOrderInit = new \init\ShopOrderInit();//订单管理


        /** 获取参数 **/
        $params = $this->request->param();

        /** 查询条件 **/
        $where = [];
        $where[] = ['user_id', '=', $this->user_id];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['order_num']) $where[] = ["order_num", "=", $params["order_num"]];
        if ($params['cav_code']) $where[] = ["cav_code", "=", $params["cav_code"]];


        $result = $ShopOrderInit->get_find($where);
        if (empty($result)) $this->error('暂无数据!');


        $this->success("详情数据", $result);
    }


    /**
     * 计算价格
     * @OA\Post(
     *     tags={"订单管理"},
     *     path="/wxapp/shop_order/get_amount",
     *
     *
     *
     *    @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="address_id",
     *         in="query",
     *         description="地址id ",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="cart_ids",
     *         in="query",
     *         description="购物车下单 (数组[1,2,3])",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="goods_id",
     *         in="query",
     *         description="单独下单",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *    @OA\Parameter(
     *         name="sku_id",
     *         in="query",
     *         description="单独下单",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *    @OA\Parameter(
     *         name="sku_name",
     *         in="query",
     *         description="规格名称",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="count",
     *         in="query",
     *         description="数量  单独下单",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="coupon_id",
     *         in="query",
     *         description="优惠券id (选填)",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_order/get_amount
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_order/get_amount
     *   api: /wxapp/shop_order/get_amount
     *   remark_name: 计算价格
     *
     */
    public function get_amount()
    {
        $this->checkAuth();
        $params              = $this->request->param();
        $ShopAddressModel    = new \initmodel\ShopAddressModel();//地址管理
        $ShopCartModel       = new \initmodel\ShopCartModel();//购物车
        $SkuModel            = new \initmodel\sku\ShopGoodsSkuModel();//sku
        $ShopGoodsModel      = new \initmodel\ShopGoodsModel();//商品
        $ShopCouponUserModel = new \initmodel\ShopCouponUserModel(); //优惠券领取记录   (ps:InitModel)
        $count               = (empty($params['count']) ? 1 : $params['count']) ?? 1;


        //地址信息
        //        $address_info       = $ShopAddressModel->where('id', '=', $params['address_id'])->find();
        //        $params['username'] = $address_info['username'];
        //        $params['phone']    = $address_info['phone'];
        //        $params['address']  = $address_info['address'];
        //        $params['province'] = $address_info['province'];
        //        $params['city']     = $address_info['city'];
        //        $params['county']   = $address_info['county'];


        //优惠券信息
        if ($params['coupon_id']) {
            $coupon_info = $ShopCouponUserModel->where('id', '=', $params['coupon_id'])->find();
            if (empty($coupon_info) || $coupon_info['used'] != 1) $this->error('优惠券信息错误');
        }

        $amount         = 0;//实际支付金额
        $goods_amount   = 0;//商品金额
        $coupon_amount  = 0;//优惠金额
        $freight_amount = 0;//运费
        $total_amount   = 0;//订单总金额,实际支付金额+优惠金额+运费
        $type           = '';//商品类型:商品类型:goods=普通商品,customized=定制商品
        $goods_list     = [];//将商品信息返回一下

        //下单
        if ($params['cart_ids']) {
            /**  购物车下单  */

            $cart_list = $ShopCartModel->where('id', 'in', $params['cart_ids'])->select();
            if (!count($cart_list)) $this->error('购物车信息错误!');


            foreach ($cart_list as $key => $cart) {
                //商品信息
                $goods_info = $ShopGoodsModel->where('id', '=', $cart['goods_id'])->find();

                //获取商品价格
                if ($cart['sku_id']) {
                    $sku_info = $SkuModel->where('id', '=', $cart['sku_id'])->find();
                } else {
                    //无规格
                    $sku_info['id']         = 0;
                    $sku_info['price']      = $goods_info['price'];
                    $sku_info['line_price'] = $goods_info['line_price'];
                }


                //商品金额
                $goods_amount += round($sku_info['price'] * $cart['count'], 2);

                //商品信息返回一下
                $goods_list[] = [
                    'goods_id'   => $goods_info['id'],
                    'goods_name' => $goods_info['goods_name'],
                    'price'      => $goods_info['price'],
                    'line_price' => $goods_info['line_price'],
                    'sku_name'   => $cart['sku_name'],
                    'count'      => $cart['count'],
                    'image'      => cmf_get_image_url($goods_info['image']),
                ];

                //商品类型
                $type = $goods_info['type'];
            }


            //优惠券金额
            if ($coupon_info) {
                //优惠券类型:1满减券,2折扣券
                if ($coupon_info['coupon_type'] == 1) $coupon_amount = $coupon_info['amount'];
                if ($coupon_info['coupon_type'] == 2) $coupon_amount = round($goods_amount - ($goods_amount * ($coupon_info['discount'] / 100)), 2);
            }


            //订单总金额,商品金额+运费金额
            $total_amount = $goods_amount + $freight_amount;

        } else {
            /**  单独购买  */
            //商品信息
            $goods_info = $ShopGoodsModel->where('id', '=', $params['goods_id'])->find();


            //获取商品价格
            if ($params['sku_id']) {
                $sku_info = $SkuModel->where('id', '=', $params['sku_id'])->find();
            } else {
                $sku_info['id']         = 0;
                $sku_info['price']      = $goods_info['price'];
                $sku_info['line_price'] = $goods_info['line_price'];
            }


            //商品金额
            $goods_amount += round($sku_info['price'] * $count, 2);


            //优惠券金额
            if ($coupon_info) {
                //优惠券类型:1满减券,2折扣券
                if ($coupon_info['coupon_type'] == 1) $coupon_amount = $coupon_info['amount'];
                if ($coupon_info['coupon_type'] == 2) $coupon_amount = round($goods_amount - ($goods_amount * ($coupon_info['discount'] / 100)), 2);
            }

            //订单总金额,商品金额+运费金额
            $total_amount = $goods_amount + $freight_amount;


            //商品信息返回一下
            $goods_list[] = [
                'goods_id'   => $goods_info['id'],
                'sku_name'   => $params['sku_name'],
                'goods_name' => $goods_info['goods_name'],
                'price'      => $goods_info['price'],
                'line_price' => $goods_info['line_price'],
                'count'      => $count,
                'image'      => cmf_get_image_url($goods_info['image']),
            ];

            //商品类型
            $type = $goods_info['type'];
        }


        //处理价格
        $amount = round($goods_amount + $freight_amount - $coupon_amount, 2);//实际支付金额=商品金额+运费金额-优惠金额-满减金额


        //价格信息
        $order_insert['coupon_amount'] = round($coupon_amount, 2);//优惠金额
        $order_insert['amount']        = round($amount, 2);//实际支付金额
        $order_insert['goods_amount']  = round($goods_amount, 2);//商品金额
        $order_insert['total_amount']  = round($total_amount, 2);//订单总金额,实际支付金额+优惠金额+运费金额+会员折扣金额
        $order_insert['type']          = $type;//商品类型
        $order_insert['goods_list']    = $goods_list;//商品信息


        $this->success('计算成功', $order_insert);
    }


    /**
     * 下单
     * @OA\Post(
     *     tags={"订单管理"},
     *     path="/wxapp/shop_order/add_order",
     *
     *
     *
     *    @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="address_id",
     *         in="query",
     *         description="地址id ",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *    @OA\Parameter(
     *         name="remark",
     *         in="query",
     *         description="备注",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="cart_ids",
     *         in="query",
     *         description="购物车下单 (数组[1,2,3])",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="goods_id",
     *         in="query",
     *         description="单独下单",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *    @OA\Parameter(
     *         name="sku_id",
     *         in="query",
     *         description="单独下单",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *    @OA\Parameter(
     *         name="sku_name",
     *         in="query",
     *         description="单独下单",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *    @OA\Parameter(
     *         name="count",
     *         in="query",
     *         description="数量  单独下单",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *    @OA\Parameter(
     *         name="coupon_id",
     *         in="query",
     *         description="优惠券id (选填)",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="type",
     *         in="query",
     *         description="商品类型:goods=普通商品,  (选填)如不穿默认普通商品",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_order/add_order
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_order/add_order
     *   api: /wxapp/shop_order/add_order
     *   remark_name: 下单
     *
     */
    public function add_order()
    {
        $this->checkAuth();

        // 启动事务
        Db::startTrans();


        $params               = $this->request->param();
        $ShopOrderDetailModel = new \initmodel\ShopOrderDetailModel();//订单详情
        $ShopAddressModel     = new \initmodel\ShopAddressModel();//地址管理
        $ShopCartModel        = new \initmodel\ShopCartModel();//购物车
        $SkuModel             = new \initmodel\sku\ShopGoodsSkuModel();//sku
        $ShopGoodsModel       = new \initmodel\ShopGoodsModel();//商品
        $ShopCouponUserModel  = new \initmodel\ShopCouponUserModel(); //优惠券领取记录   (ps:InitModel)
        $ShopOrderModel       = new \initmodel\ShopOrderModel();//订单管理
        $StockInit            = new \init\StockInit();//库存管理


        //订单基础 信息
        $order_num                   = $this->get_num_only();
        $order_insert['user_id']     = $this->user_id;
        $order_insert['openid']      = $this->openid;
        $order_insert['wx_openid']   = $this->user_info['openid'];
        $order_insert['order_num']   = $order_num;
        $order_insert['user_phone']  = $this->user_info['phone'];
        $order_insert['p_user_id']   = $this->user_info['pid'];
        $order_insert['type']        = $params['type'] ?? 'goods';
        $order_insert['coupon_id']   = $params['coupon_id'];
        $order_insert['create_time'] = time();
        $count                       = (empty($params['count']) ? 1 : $params['count']) ?? 1;

        //地址信息
        $address_info = $ShopAddressModel->where('id', '=', $params['address_id'])->find();
        if (empty($address_info)) $this->error('地址信息错误');
        $order_insert['username']    = $address_info['username'];
        $order_insert['phone']       = $address_info['phone'];
        $order_insert['address']     = $address_info['address'];
        $order_insert['province']    = $address_info['province'];
        $order_insert['city']        = $address_info['city'];
        $order_insert['county']      = $address_info['county'];
        $order_insert['create_time'] = time();


        //优惠券信息
        if ($params['coupon_id']) {
            $coupon_info = $ShopCouponUserModel->where('id', '=', $params['coupon_id'])->find();
            if (empty($coupon_info) || $coupon_info['used'] != 1) $this->error('优惠券信息错误');
            if ($coupon_info) {
                //核销优惠券
                $ShopCouponUserModel->where('id', '=', $params['coupon_id'])->update(['used' => 2, 'update_time' => time()]);
            }
        }


        //订单自动取消时间
        $automatic_cancellation_order     = cmf_config('order_automatic_cancellation_time');
        $order_insert['auto_cancel_time'] = time() + ($automatic_cancellation_order * 60);


        $goods_name     = '';
        $amount         = 0;//实际支付金额
        $goods_amount   = 0;//商品金额
        $coupon_amount  = 0;//优惠金额
        $freight_amount = 0;//运费
        $total_amount   = 0;//订单总金额,实际支付金额+优惠金额+运费
        $type           = '';//商品类型:商品类型:goods=普通商品,customized=定制商品


        //下单
        if ($params['cart_ids']) {
            /**  购物车下单  */

            $cart_list = $ShopCartModel->where('id', 'in', $params['cart_ids'])->select();
            if (!count($cart_list)) $this->error('购物车信息错误!');


            foreach ($cart_list as $key => $cart) {
                //商品信息
                $goods_info = $ShopGoodsModel->where('id', '=', $cart['goods_id'])->find();

                //获取商品价格
                if ($cart['sku_id']) {
                    $sku_info = $SkuModel->where('id', '=', $cart['sku_id'])->find();
                    if ($sku_info['stock'] < $cart['count']) $this->error('库存不足请重试!');
                } else {
                    //无规格
                    $sku_info['id']         = 0;
                    $sku_info['price']      = $goods_info['price'];
                    $sku_info['goods_id']   = $goods_info['id'];
                    $sku_info['line_price'] = $sku_info['line_price'] ?? $goods_info['line_price'];//划线价
                    $sku_info['image']      = $goods_info['image'];
                    if ($goods_info['stock'] < $cart['count']) $this->error('库存不足请重试!');
                }


                //订单详情
                $order_detail[$key]['user_id']      = $this->user_id;
                $order_detail[$key]['goods_name']   = $goods_info['goods_name'];
                $order_detail[$key]['shop_id']      = $params['shop_id'] ?? $goods_info['shop_id'];
                $order_detail[$key]['goods_id']     = $cart['goods_id'];
                $order_detail[$key]['sku_id']       = $cart['sku_id'];
                $order_detail[$key]['sku_name']     = $cart['sku_name'];
                $order_detail[$key]['count']        = $cart['count'];
                $order_detail[$key]['goods_price']  = $sku_info['price'];//单价
                $order_detail[$key]['line_price']   = $sku_info['line_price'];//划线价
                $order_detail[$key]['stock']        = $sku_info['stock'] - $cart['count'];//剩余库存
                $order_detail[$key]['sku_code']     = $sku_info['code'];//编码
                $order_detail[$key]['total_amount'] = round($sku_info['price'] * $cart['count'], 2);//合计
                $order_detail[$key]['order_num']    = $order_num;
                $order_detail[$key]['create_time']  = time();
                $order_detail[$key]['image']        = cmf_get_asset_url($goods_info['image']);

                //商品金额
                $goods_amount += round($sku_info['price'] * $cart['count'], 2);
                //商品数量
                $count += $cart['count'];


                //扣除库存
                $StockInit->dec_stock('shop_goods', $sku_info['id'], $cart['count'], $sku_info['goods_id'], $order_num);
            }


            $goods_name .= $goods_info['goods_name'] . '/';

            //优惠券金额
            if ($coupon_info) $coupon_amount = $coupon_info['amount'];


            //订单总金额,商品金额+运费金额
            $total_amount = $goods_amount + $freight_amount;


            //处理每个商品,最多退款金额
            $order_detail = $this->setMaxRefundAmount($order_detail, $coupon_info['amount'] ?? 0);//购物车


            //删除购物车&&软删除
            $ShopCartModel->destroy($params['cart_ids']);

        } else {
            /**  单独购买  */

            //商品信息
            $goods_info = $ShopGoodsModel->where('id', '=', $params['goods_id'])->find();


            //获取商品价格
            if ($params['sku_id']) {
                $sku_info = $SkuModel->where('id', '=', $params['sku_id'])->find();
                if ($sku_info['stock'] < $count) $this->error('库存不足请重试!');
            } else {
                $sku_info['id']         = 0;
                $sku_info['price']      = $goods_info['price'];
                $sku_info['goods_id']   = $goods_info['id'];
                $sku_info['image']      = $goods_info['image'];
                $sku_info['line_price'] = $goods_info['line_price'];//划线价
                if ($goods_info['stock'] < $count) $this->error('库存不足请重试!');
            }


            //订单详情
            $order_detail['user_id']      = $this->user_id;
            $order_detail['goods_id']     = $sku_info['goods_id'];
            $order_detail['goods_name']   = $sku_info['name'];
            $order_detail['sku_id']       = $params['sku_id'];
            $order_detail['sku_name']     = $params['sku_name'];
            $order_detail['count']        = $count;
            $order_detail['goods_price']  = $sku_info['price'];//单价
            $order_detail['line_price']   = $sku_info['line_price'];//划线价
            $order_detail['stock']        = $sku_info['stock'] - $count;//剩余库存
            $order_detail['sku_code']     = $sku_info['code'];//编码
            $order_detail['total_amount'] = round($sku_info['price'] * $count, 2);//合计
            $order_detail['order_num']    = $order_num;
            $order_detail['create_time']  = time();
            $order_detail['goods_name']   = $goods_info['goods_name'];
            $order_detail['shop_id']      = $params['shop_id'] ?? $goods_info['shop_id'];
            $order_detail['image']        = cmf_get_asset_url($goods_info['image']);


            //商品金额
            $goods_amount += round($sku_info['price'] * $count, 2);


            //商品名字
            $goods_name = $goods_info['goods_name'];


            //优惠券金额
            if ($coupon_info) $coupon_amount = $coupon_info['amount'];


            //订单总金额,商品金额+运费金额
            $total_amount = $goods_amount + $freight_amount;


            //处理每个商品,最多退款金额
            $order_detail = $this->setMaxRefundAmount([$order_detail], $coupon_info['amount'] ?? 0);//单独下单


            //扣除库存
            $StockInit->dec_stock('shop_goods', $sku_info['id'], $count, $sku_info['goods_id'], $order_num);
        }

        //用于模糊查询
        $order_insert['goods_name'] = $goods_name;


        //处理价格
        $amount = round($goods_amount + $freight_amount - $coupon_amount, 2);//实际支付金额=商品金额+运费金额-优惠金额-满减金额

        //价格信息
        $order_insert['count']          = $count;//下单数量
        $order_insert['amount']         = round($amount, 2);//实际支付金额
        $order_insert['freight_amount'] = round($freight_amount, 2);//运费
        $order_insert['goods_amount']   = round($goods_amount, 2);//商品金额
        $order_insert['coupon_amount']  = round($coupon_amount, 2);//优惠金额
        $order_insert['total_amount']   = round($total_amount, 2);//订单总金额,实际支付金额+优惠金额+运费金额+会员折扣金额


        //插入订单
        $result = $ShopOrderModel->strict(false)->insert($order_insert);


        //插入订单详情
        $ShopOrderDetailModel->strict(false)->insertAll($order_detail);


        if (empty($result)) $this->error('失败请重试');


        // 提交事务
        Db::commit();

        $this->success('下单成功,请支付', ['order_num' => $order_num, 'order_type' => 10]);
    }


    /**
     * 取消订单
     * @OA\Post(
     *     tags={"订单管理"},
     *     path="/wxapp/shop_order/cancel_order",
     *
     *
     *
     *
     *     @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *  @OA\Parameter(
     *         name="order_num",
     *         in="query",
     *         description="订单号 或 id二选一",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *    @OA\Parameter(
     *         name="id",
     *         in="query",
     *         description="id 或 订单号二选一",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_order/cancel_order
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_order/cancel_order
     *   api: /wxapp/shop_order/cancel_order
     *   remark_name: 取消订单
     *
     */
    public function cancel_order()
    {
        $this->checkAuth();

        // 启动事务
        Db::startTrans();

        $StockInit            = new \init\StockInit();
        $ShopOrderModel       = new \initmodel\ShopOrderModel();//订单管理
        $ShopOrderDetailModel = new \initmodel\ShopOrderDetailModel();//订单详情
        $ShopCouponUserModel  = new \initmodel\ShopCouponUserModel(); //优惠券领取记录   (ps:InitModel)
        $WxBaseController     = new WxBaseController();//微信基础类


        $params = $this->request->param();


        $where = [];
        $where[] = ['user_id', '=', $this->user_id];
        if ($params['id']) $where[] = ['id', '=', $params['id']];
        if ($params['order_num']) $where[] = ['order_num', '=', $params['order_num']];

        //取消订单
        $order_info = $ShopOrderModel->where($where)->find();
        if (empty($order_info)) $this->error('暂无数据!');
        if (!in_array($order_info['status'], [1, 2])) $this->error('非法操作!!');


        //已支付,未发货退款
        if ($order_info['status'] != 1) {
            //退款金额
            $refund_amount = $order_info['amount'];
            //退款通过时间
            $update['refund_pass_time'] = time();

            //退款 && 微信退款
            if ($order_info['pay_type'] == 1 && $refund_amount > 0) {
                $refund_result = $WxBaseController->wx_refund($order_info['pay_num'], $refund_amount, $order_info['amount']);//后台  退款操作,退款全部金额 &&微信
                if ($refund_result['code'] == 0) $this->error($refund_result['msg']);
            }
            //余额退款
            if ($order_info['pay_type'] == 2 && $refund_amount > 0) {
                $remark = "操作人[用户自行取消订单];操作说明[用户取消订单:{$order_info['order_num']};金额:{$order_info['balance']}];操作类型[用户取消订单,退款];";//管理备注
                AssetModel::incAsset('用户取消订单,增加余额 [115]', [
                    'operate_type'  => 'balance',//操作类型，balance|point ...
                    'identity_type' => 'member',//身份类型，member| ...
                    'user_id'       => $order_info['user_id'],
                    'price'         => $refund_amount,
                    'order_num'     => $order_info['order_num'],
                    'order_type'    => 115,
                    'content'       => '订单退款成功',
                    'remark'        => $remark,
                    'order_id'      => $order_info['id'],
                ]);
            }
        }

        //处理订单
        $update['status']      = 10;
        $update['cancel_time'] = time();
        $update['update_time'] = time();
        $result                = $ShopOrderModel->where($where)->strict(false)->update($update);
        if (empty($result)) $this->error('失败请重试');


        //添加库存
        $order_detail = $ShopOrderDetailModel->where('order_num', '=', $params['order_num'])->select();
        foreach ($order_detail as $k => $v) {
            $StockInit->inc_stock('shop_goods', $v['sku_id'], $v['count'], $v['goods_id'], $order_info['order_num']);
        }


        //优惠券退回
        if ($order_info['coupon_id']) {
            $ShopCouponUserModel->where('id', '=', $order_info['coupon_id'])->update(['used' => 1, 'update_time' => time()]);
        }


        // 提交事务
        Db::commit();


        $this->success("操作成功");
    }



    /**
     * 申请退款
     * @OA\Post(
     *     tags={"订单管理"},
     *     path="/wxapp/shop_order/refund_order",
     *
     *
     *    @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *  @OA\Parameter(
     *         name="order_num",
     *         in="query",
     *         description="订单号 或 id二选一",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *    @OA\Parameter(
     *         name="id",
     *         in="query",
     *         description="id 或 订单号二选一",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_order/refund_order
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_order/refund_order
     *   api: /wxapp/shop_order/refund_order
     *   remark_name: 申请退款
     *
     */
    public function refund_order()
    {
        $this->checkAuth();

        // 启动事务
        Db::startTrans();

        $ShopOrderModel = new \initmodel\ShopOrderModel();//订单管理


        $params = $this->request->param();


        $where = [];
        $where[] = ['user_id', '=', $this->user_id];
        if ($params['id']) $where[] = ['id', '=', $params['id']];
        if ($params['order_num']) $where[] = ['order_num', '=', $params['order_num']];

        //取消订单
        $order_info = $ShopOrderModel->where($where)->find();
        if (empty($order_info)) $this->error('暂无数据!');
        if (!in_array($order_info['status'], [2, 4, 8])) $this->error('非法操作!!');
        if (in_array($order_info['status'], [12, 14, 16])) $this->error('请勿重复提交!');


        //处理订单
        $update['status']      = 12;
        $update['refund_time'] = time();
        $update['update_time'] = time();
        $result                = $ShopOrderModel->where($where)->strict(false)->update($update);
        if (empty($result)) $this->error('失败请重试');


        // 提交事务
        Db::commit();


        $this->success("操作成功");
    }

    /**
     * 设置最多退款金额
     * @param array $order_detail  订单详情数组
     * @param float $coupon_amount 优惠金额
     * @param int   $type          1优惠金额 2满减金额
     * @return array 处理后的订单详情
     */
    public function setMaxRefundAmount($order_detail = [], $coupon_amount = 0, $type = 1)
    {
        // 如果没有优惠券信息，则每个商品的最大退款金额就是其总金额
        if ($coupon_amount == 0) {
            foreach ($order_detail as &$item) {
                $item['max_refund_amount'] = $item['total_amount'];
            }
            return $order_detail;
        }

        // 计算订单总金额和可退款商品总金额
        $order_total_amount = 0;
        $refundable_amount  = 0;
        foreach ($order_detail as $item) {
            $item_amount        = $item['max_refund_amount'] > 0 ? $item['max_refund_amount'] : $item['total_amount'];
            $order_total_amount += $item_amount;

            // 只计算可退款商品的金额（max_refund_amount为0表示不可退款）
            if (!isset($item['max_refund_amount']) || $item['max_refund_amount'] !== 0) {
                $refundable_amount += $item_amount;
            }
        }

        // 确保优惠金额不超过可退款商品总金额
        $coupon_amount        = min($coupon_amount, $refundable_amount);
        $remaining_coupon     = $coupon_amount;
        $remaining_refundable = $refundable_amount;
        $last_index           = count($order_detail) - 1;

        // 计算优惠券分摊比例
        foreach ($order_detail as $i => &$item) {
            // 如果max_refund_amount为0，表示该商品不可退款
            if (isset($item['max_refund_amount']) && $item['max_refund_amount'] === 0) {
                if ($type == 1) $item['coupon_amount'] = 0;
                if ($type == 2) $item['full_amount'] = 0;
                continue;
            }

            $item_amount = $item['max_refund_amount'] > 0 ? $item['max_refund_amount'] : $item['total_amount'];

            // 最后一个商品时，使用剩余优惠金额以避免四舍五入误差
            if ($i == $last_index) {
                $item_coupon_amount = $remaining_coupon;
            } else {
                $coupon_ratio         = $item_amount / $remaining_refundable;
                $item_coupon_amount   = round($coupon_amount * $coupon_ratio, 2);
                $remaining_coupon     -= $item_coupon_amount;
                $remaining_refundable -= $item_amount;
            }

            // 计算最大退款金额
            $max_refund_amount = round($item_amount - $item_coupon_amount, 2);

            // 确保退款金额不小于0且不超过商品原始金额
            $max_refund_amount = max(min($max_refund_amount, $item['total_amount']), 0);

            // 设置优惠金额或满减金额
            if ($type == 1) {
                $item['coupon_amount'] = $item_coupon_amount;
            } elseif ($type == 2) {
                $item['full_amount'] = $item_coupon_amount;
            }

            $item['max_refund_amount'] = $max_refund_amount;
        }

        return $order_detail;
    }

}
