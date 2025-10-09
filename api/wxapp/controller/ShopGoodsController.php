<?php

namespace api\wxapp\controller;

/**
 * @ApiController(
 *     "name"                    =>"ShopGoods",
 *     "name_underline"          =>"shop_goods",
 *     "controller_name"         =>"ShopGoods",
 *     "table_name"              =>"shop_goods",
 *     "remark"                  =>"商品管理"
 *     "api_url"                 =>"/api/wxapp/shop_goods/index",
 *     "author"                  =>"",
 *     "create_time"             =>"2025-06-04 11:00:27",
 *     "version"                 =>"1.0",
 *     "use"                     => new \api\wxapp\controller\ShopGoodsController();
 *     "test_environment"        =>"http://meal.ikun:9090/api/wxapp/shop_goods/index",
 *     "official_environment"    =>"http://xcxkf207.aubye.com/api/wxapp/shop_goods/index",
 * )
 */


use think\facade\Db;
use think\facade\Log;
use think\facade\Cache;


error_reporting(0);


class ShopGoodsController extends AuthController
{

    //public function initialize(){
    //	//商品管理
    //	parent::initialize();
    //}


    /**
     * 默认接口
     * /api/wxapp/shop_goods/index
     * http://xcxkf207.aubye.com/api/wxapp/shop_goods/index
     */
    public function index()
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理   (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)

        $result = [];

        $this->success('商品管理-接口请求成功', $result);
    }


    /**
     * 商品分类 列表
     * @OA\Post(
     *     tags={"商品管理"},
     *     path="/wxapp/shop_goods/find_class_list",
     *
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
     *
     *
     *
     *    @OA\Parameter(
     *         name="is_index",
     *         in="query",
     *         description="true 首页推荐",
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
     *
     *
     *    @OA\Parameter(
     *         name="pid",
     *         in="query",
     *         description="上级分类id",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
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
     *
     *
     *
     *     @OA\Parameter(
     *         name="keyword",
     *         in="query",
     *         description="(选填)关键字搜索",
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
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_goods/find_class_list
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_goods/find_class_list
     *   api:  /wxapp/shop_goods/find_class_list
     *   remark_name: 商品分类 列表
     *
     */
    public function find_class_list()
    {
        $ShopGoodsClassInit  = new \init\ShopGoodsClassInit();//商品分类   (ps:InitController)
        $ShopGoodsClassModel = new \initmodel\ShopGoodsClassModel(); //商品分类   (ps:InitModel)

        /** 获取参数 **/
        $params            = $this->request->param();
        $params["user_id"] = $this->user_id;

        /** 查询条件 **/
        $where   = [];
        $where[] = ['id', '>', 0];
        $where[] = ['is_show', '=', 1];
        $where[] = ['type', '=', $params['type'] ?? 'goods'];
        $where[] = ['pid', '=', $params['pid'] ?? 0];
        if ($params["keyword"]) $where[] = ["name", "like", "%{$params['keyword']}%"];
        if ($params["status"]) $where[] = ["status", "=", $params["status"]];
        if ($params['is_index']) $where[] = ['is_index', '=', 1];


        /** 查询数据 **/
        $params["InterfaceType"] = "api";//接口类型
        $params["DataFormat"]    = "list";//数据格式,find详情,list列表
        $params["field"]         = "*";//过滤字段
        $result                  = $ShopGoodsClassInit->get_list($where, $params);
        if (empty($result)) $this->error("暂无信息!");

        $this->success("请求成功!", $result);
    }


    /**
     * 分类,插件格式 列表
     * @OA\Post(
     *     tags={"商品管理"},
     *     path="/wxapp/shop_goods/find_class_plug_list",
     *
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
     *
     *
     *     @OA\Parameter(
     *         name="keyword",
     *         in="query",
     *         description="(选填)关键字搜索",
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
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_goods/find_class_plug_list
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_goods/find_class_plug_list
     *   api:  /wxapp/shop_goods/find_class_plug_list
     *   remark_name: 插件数据类型 列表
     *
     */
    public function find_class_plug_list()
    {
        $ShopGoodsClassModel = new \initmodel\ShopGoodsClassModel(); //商品分类   (ps:InitModel)

        /** 获取参数 **/
        $params            = $this->request->param();
        $params["user_id"] = $this->user_id;

        /** 查询条件 **/
        $where   = [];
        $where[] = ['id', '>', 0];
        $where[] = ['pid', '=', 0];
        $where[] = ['is_show', '=', 1];
        $where[] = ['type', '=', $params['type'] ?? 'goods'];


        /** 查询数据 **/
        $result = $ShopGoodsClassModel->where($where)
            ->order('list_order asc,id asc')
            ->field('id,pid,name,image,type')
            ->select()
            ->each(function ($item, $key) use ($params, $ShopGoodsClassModel) {

                $map   = [];
                $map[] = ['pid', '=', $item['id']];
                $map[] = ['is_show', '=', 1];

                $item['child_list'] = $ShopGoodsClassModel->where($map)
                    ->order('list_order asc,id asc')
                    ->field('id,pid,name,image')
                    ->select()
                    ->each(function ($item2, $key2) use ($ShopGoodsClassModel) {

                        if ($item2['image']) $item2['image'] = cmf_get_asset_url($item2['image']);

                        return $item2;
                    });


                if ($item['image']) $item['image'] = cmf_get_asset_url($item['image']);


                return $item;
            });


        if (empty($result)) $this->error("暂无信息!");

        $this->success("请求成功!", $result);
    }


    /**
     * 商品管理 列表
     * @OA\Post(
     *     tags={"商品管理"},
     *     path="/wxapp/shop_goods/find_goods_list",
     *
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
     *         name="week",
     *         in="query",
     *         description="周几 数字1-7",
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
     *
     *
     *    @OA\Parameter(
     *         name="class_id",
     *         in="query",
     *         description="分类id",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *    @OA\Parameter(
     *         name="class_two_id",
     *         in="query",
     *         description="二级分类id",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
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
     *
     *
     *
     *     @OA\Parameter(
     *         name="keyword",
     *         in="query",
     *         description="(选填)关键字搜索",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Parameter(
     *         name="is_paginate",
     *         in="query",
     *         description="false=分页(不传默认分页),true=不分页",
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
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_goods/find_goods_list
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_goods/find_goods_list
     *   api:  /wxapp/shop_goods/find_goods_list
     *   remark_name: 商品管理 列表
     *
     */
    public function find_goods_list()
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理   (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)

        /** 获取参数 **/
        $params            = $this->request->param();
        $params["user_id"] = $this->user_id;

        /** 查询条件 **/
        $where   = [];
        $where[] = ['id', '>', 0];
        $where[] = ['is_show', '=', 1];
        $where[] = ["type", "=", $params["type"] ?? 'goods'];
        if ($params["keyword"]) $where[] = ["goods_name|code", "like", "%{$params['keyword']}%"];
        if ($params["status"]) $where[] = ["status", "=", $params["status"]];
        if ($params['class_id']) $where[] = ['class_id', '=', $params['class_id']];
        if ($params['class_two_id']) $where[] = ['class_two_id', '=', $params['class_two_id']];
        if ($params['search_class_id']) $where[] = ['search_class_id', '=', $params['search_class_id']];
        if ($params['week']) $where[] = ['', 'EXP', Db::raw("FIND_IN_SET({$params['week']},weeks)")];


        /** 查询数据 **/
        $params["InterfaceType"] = "api";//接口类型
        $params["DataFormat"]    = "list";//数据格式,find详情,list列表
        $params["field"]         = "*";//过滤字段
        if ($params['is_paginate']) $result = $ShopGoodsInit->get_list($where, $params);
        if (empty($params['is_paginate'])) $result = $ShopGoodsInit->get_list_paginate($where, $params);
        if (empty($result)) $this->error("暂无信息!");

        $this->success("请求成功!", $result);
    }


    /**
     * 商品管理 详情
     * @OA\Post(
     *     tags={"商品管理"},
     *     path="/wxapp/shop_goods/find_goods",
     *
     *
     *
     *    @OA\Parameter(
     *         name="id",
     *         in="query",
     *         description="id",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *    @OA\Parameter(
     *         name="code",
     *         in="query",
     *         description="id 或 code  二选一",
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
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/shop_goods/find_goods
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/shop_goods/find_goods?id=28
     *   api:  /wxapp/shop_goods/find_goods
     *   remark_name: 商品管理 详情
     *
     */
    public function find_goods()
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理    (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)

        /** 获取参数 **/
        $params            = $this->request->param();
        $params["user_id"] = $this->user_id;

        /** 查询条件 **/
        $where = [];
        if ($params['id']) $where[] = ["id", "=", $params["id"]];
        if ($params['code']) $where[] = ["code", "=", $params["code"]];

        /** 查询数据 **/
        $params["InterfaceType"] = "api";//接口类型
        $params["DataFormat"]    = "find";//数据格式,find详情,list列表
        $result                  = $ShopGoodsInit->get_find($where, $params);
        if (empty($result)) $this->error("暂无数据");

        //规格列表
        if ($result['is_attribute'] == 1) $result['sku_list'] = $this->getSkuList($params['id']);


        $this->success("详情数据", $result);
    }




    /*************************      规格信息       ******************************/

    /**
     * 获取规格信息
     * 包括商品基本信息、SKU数据、规格属性数据等
     *
     * @return void 返回JSON格式数据
     */
    public function getSkuList($goods_id)
    {
        // 初始化各模型
        $ShopGoodsSkuModel       = new \initmodel\sku\ShopGoodsSkuModel();
        $ShopGoodsAttrModel      = new \initmodel\sku\ShopGoodsAttrModel();
        $ShopGoodsAttrValueModel = new \initmodel\sku\ShopGoodsAttrValueModel();
        $ShopGoodsSkuAttrModel   = new \initmodel\sku\ShopGoodsSkuAttrModel();


        $map       = [];
        $map[]     = ['goods_id', '=', $goods_id];
        $map[]     = ['status', '=', 1];
        $map[]     = ['stock', '>', 0];
        $goods_sku = $ShopGoodsSkuModel
            ->field('id as sku_id,goods_id,price,line_price,stock,sell_count,image')
            ->where($map)
            ->select()
            ->toArray();


        if (!empty($goods_sku)) {
            $result['price'] = $ShopGoodsSkuModel->where($map)->min('price');


            $map       = [];
            $map[]     = ['goods_id', '=', $goods_id];
            $map[]     = ['status', '=', 1];
            $attr_list = $ShopGoodsAttrModel->field('id,attr_name name')->where($map)->select();

            foreach ($attr_list as &$item) {
                $map          = [];
                $map[]        = ['goods_id', '=', $goods_id];
                $map[]        = ['status', '=', 1];
                $map[]        = ['attr_id', '=', $item['id']];
                $item['item'] = $ShopGoodsAttrValueModel->where($map)->column('attr_value_name');
            }

            foreach ($goods_sku as &$item) {
                $item['image'] = empty($item['image']) ? '' : cmf_get_asset_url($item['image']);
                $map           = [];
                $map[]         = ['a.sku_id', '=', $item['sku_id']];
                $map[]         = ['a.status', '=', 1];

                $sku_attr_list = $ShopGoodsSkuAttrModel
                    ->alias('a')
                    ->field('b.attr_name,c.attr_value_name')
                    ->join('shop_goods_attr b', 'a.attr_id=b.id')
                    ->join('shop_goods_attr_value c', 'a.attr_value_id=c.id')
                    ->where($map)
                    ->select();

                $sku_arr       = [];
                $sku_value_arr = [];
                foreach ($sku_attr_list as $value) {
                    $sku_value_arr[] = $value['attr_value_name'];
                    $sku_arr[]       = $value['attr_name'] . ':' . $value['attr_value_name'];
                }
                $item['sku']      = implode(';', $sku_value_arr);
                $item['sku_name'] = implode(';', $sku_arr);
            }
            $result['sku_list']  = $goods_sku;
            $result['attr_list'] = $attr_list;
        } else {
            $result['sku'] = [];
        }


        // 返回成功响应
        return $result;
    }

}
