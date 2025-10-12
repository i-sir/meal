<?php

namespace api\wxapp\controller;

/**
 * @ApiController(
 *     "name"                    =>"SchoolCart",
 *     "name_underline"          =>"shop_cart",
 *     "controller_name"         =>"SchoolCart",
 *     "table_name"              =>"shop_cart",
 *     "remark"                  =>"购物车管理"
 *     "api_url"                 =>"/api/wxapp/shop_cart/index",
 *     "author"                  =>"",
 *     "create_time"             =>"2024-05-05 11:25:08",
 *     "version"                 =>"1.0",
 *     "use"                     => new \api\wxapp\controller\SchoolCartController();
 *     "test_environment"        =>"http://meal.ikun:9090/api/wxapp/shop_cart/index",
 *     "official_environment"    =>"http://xcxkf207.aubye.com/api/wxapp/shop_cart/index",
 * )
 */


use think\facade\Db;
use think\facade\Log;
use think\facade\Cache;


error_reporting(0);

class ShopCartController extends AuthController
{

    public function initialize()
    {
        parent::initialize();//初始化方法


    }


    /**
     * 默认接口
     * /api/wxapp/shop_cart/index
     * http://xcxkf207.aubye.com/api/wxapp/shop_cart/index
     */
    public function index()
    {
        $this->success("购物车-接口请求成功");
    }


    /**
     * 编辑&删除 购物车
     * @OA\Post(
     *     tags={"购物车管理"},
     *     path="/wxapp/shop_cart/edit_cart",
     *
     *
     *      @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=true,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *      @OA\Parameter(
     *         name="operation",
     *         in="query",
     *         description="add(添加),edit(编辑),delete(删除)",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *      @OA\Parameter(
     *         name="shop_id",
     *         in="query",
     *         description="shop_id (选) ",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *      @OA\Parameter(
     *         name="goods_id",
     *         in="query",
     *         description="商品id",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *      @OA\Parameter(
     *         name="sku_id",
     *         in="query",
     *         description="sku_id",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *      @OA\Parameter(
     *         name="sku_name",
     *         in="query",
     *         description="sku_name",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *      @OA\Parameter(
     *         name="count",
     *         in="query",
     *         description="数量",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *      @OA\Parameter(
     *         name="id",
     *         in="query",
     *         description="删除使用 (数组,数字都行)",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_cart/edit_cart
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_cart/edit_cart
     *   api:  /wxapp/shop_cart/edit_cart
     *   remark_name: 编辑&删除 购物车
     *
     */
    public function edit_cart()
    {
        $this->checkAuth();

        $ShopCartModel = new \initmodel\ShopCartModel();


        $params                = $this->request->param();
        $params['user_id']     = $this->user_id;
        $params['count']       = $params['count'] ?? 1;
        $params['create_time'] = time();
        $params['update_time'] = time();


        $where   = [];
        $where[] = ['goods_id', '=', $params['goods_id']];
        $where[] = ['user_id', '=', $params['user_id']];

        //下面为可选条件
        if ($params['sku_id']) $where[] = ['sku_id', '=', $params['sku_id']];
        if ($params['shop_id']) $where[] = ['shop_id', '=', $params['shop_id']];
        if ($params['type']) $where[] = ['type', '=', $params['type']];

        if ($params['operation'] == 'add') {
            $msg  = '加入成功';
            $cart = $ShopCartModel->where($where)->find();
            if ($cart) {
                //已存在编辑下数量
                $params['count'] = $cart['count'] + $params['count'];
                $result          = $ShopCartModel->where($where)->strict(false)->update($params);
            } else {
                $result = $ShopCartModel->where($where)->strict(false)->insert($params, true);
            }
        }


        if ($params['operation'] == 'edit') {
            $msg = '编辑成功';
            if ($params['count']) {
                $result = $ShopCartModel->where($where)->strict(false)->update($params);
            } else {
                $msg    = '删除成功';
                $result = $ShopCartModel->where($where)->update(['delete_time' => time(), 'update_time' => time()]);
            }
        }


        if ($params['operation'] == 'delete') {
            $msg = '删除成功';
            if (isset($params['id']) && $params['id']) {
                unset($where);
                $where[] = ['id', 'in', $params['id']];
            }
            $result = $ShopCartModel->where($where)->update(['delete_time' => time(), 'update_time' => time()]);
        }

        if (!$result) $this->error('失败请重试!');

        $this->success($msg);
    }


    /**
     * 购物车列表
     * @OA\Post(
     *     tags={"购物车管理"},
     *     path="/wxapp/shop_cart/find_cart_list",
     *
     *
     *      @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=true,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *      @OA\Parameter(
     *         name="shop_id",
     *         in="query",
     *         description="shop_id (选)",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_cart/find_cart_list
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_cart/find_cart_list
     *   api:  /wxapp/shop_cart/find_cart_list
     *   remark_name: 购物车列表
     *
     *
     */
    public function find_cart_list()
    {
        $this->checkAuth();

        $ShopCartModel = new \initmodel\ShopCartModel();


        $params   = $this->request->param();
        $user_id  = $this->user_id;
        $userInfo = $this->user_info;

        //只看当日的购物车
        $where   = [];
        $where[] = ['c.user_id', '=', $user_id];
        $where[] = ['c.create_time', 'between', [strtotime('today'), strtotime('tomorrow') - 1]];
        if ($params['shop_id']) $where[] = ['c.shop_id', '=', $params['shop_id']];
        if ($params['type']) $where[] = ['c.type', '=', $params['type'] ?? 'goods'];


        //可添加无规格购物车
        $result = $ShopCartModel
            ->alias('c')
            ->join("shop_goods g", "c.goods_id=g.id")
            ->field("c.*,g.goods_name,g.image")
            ->where($where)
            ->order('c.id desc')
            ->select()
            ->each(function ($item, $key) use ($userInfo) {

                if ($item['image']) $item['image'] = cmf_get_asset_url($item['image']);

                //多规格,单价
                if ($item['sku_id']) {
                    $map                = [];
                    $map[]              = ['goods_id', '=', $item['goods_id']];
                    $map[]              = ['id', '=', $item['sku_id']];
                    $sku_info           = Db::name('shop_goods_sku')->where($map)->find();
                    $item['price']      = $sku_info['price'];
                    $item['line_price'] = $sku_info['line_price'];
                    $item['stock']      = $sku_info['stock'];
                }


                //无多规格,单价
                if (empty($item['price'])) {
                    $sku_info           = Db::name('shop_goods')->where('id', '=', $item['goods_id'])->find();
                    $item['price']      = $sku_info['price'];
                    $item['line_price'] = $sku_info['line_price'];
                    $item['stock']      = $sku_info['stock'];
                }

                $item['show_price'] = $item['price'];


                $item['show']    = false;
                $item['checked'] = false;
                return $item;
            });


        if (!$result) $this->error('暂无数据!');

        $this->success('购物车列表', $result);
    }


}
