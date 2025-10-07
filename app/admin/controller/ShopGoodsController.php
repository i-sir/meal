<?php

namespace app\admin\controller;


/**
 * @adminMenuRoot(
 *     "name"                =>"ShopGoods",
 *     "name_underline"      =>"shop_goods",
 *     "controller_name"     =>"ShopGoods",
 *     "table_name"          =>"shop_goods",
 *     "action"              =>"default",
 *     "parent"              =>"",
 *     "display"             => true,
 *     "order"               => 10000,
 *     "icon"                =>"none",
 *     "remark"              =>"商品管理",
 *     "author"              =>"",
 *     "create_time"         =>"2025-06-04 11:00:27",
 *     "version"             =>"1.0",
 *     "use"                 => new \app\admin\controller\ShopGoodsController();
 * )
 */


use cmf\lib\Upload;
use think\facade\Db;
use cmf\controller\AdminBaseController;


class ShopGoodsController extends AdminBaseController
{

    // public function initialize(){
    //	//商品管理
    //	parent::initialize();
    //	}


    /**
     * 首页基础信息
     */
    protected function base_index()
    {

    }

    /**
     * 编辑,添加基础信息
     */
    protected function base_edit()
    {
        $ShopGoodsInit = new \init\ShopGoodsInit();//shop_goods     (ps:InitController)
        $this->assign('type_list', $ShopGoodsInit->type);


        $ShopGoodsClassInit = new \init\ShopGoodsClassInit();//分类管理     (ps:InitController)
        $class_map          = [];
        $class_map[]        = ['id', '<>', 0];
        $class_map[]        = ['pid', '=', 0];
        $class_map[]        = ['type', '=', 'goods'];
        $this->assign('class_list', $ShopGoodsClassInit->get_list($class_map));
    }


    //获取分类列表
    public function get_class_list()
    {
        $ShopGoodsClassModel = new \initmodel\ShopGoodsClassModel(); //分类管理  (ps:InitModel)
        $ShopGoodsModel      = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)

        $params = $this->request->param();


        //商品详情
        $info = $ShopGoodsModel->where('id', '=', $params['item_id'])->field('class_two_id,id')->find();


        //分类列表
        $where   = [];
        $where[] = ['pid', '=', $params['one_id']];

        $result = $ShopGoodsClassModel
            ->where($where)
            ->select()
            ->each(function ($item, $key) use ($info) {
                //如果详情中,分类存在,回显
                if ($info['class_two_id'] == $item['id']) $item['selected'] = 'selected';
                return $item;
            });


        if (empty(count($result))) $this->error('暂无数据!');


        $this->success("list", '', $result);
    }


    /**
     * 首页列表数据
     * @adminMenu(
     *     'name'             => 'ShopGoods',
     *     'name_underline'   => 'shop_goods',
     *     'parent'           => 'index',
     *     'display'          => true,
     *     'hasView'          => true,
     *     'order'            => 10000,
     *     'icon'             => '',
     *     'remark'           => '商品管理',
     *     'param'            => ''
     * )
     */
    public function index()
    {
        $this->base_index();//处理基础信息


        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理    (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)
        $params         = $this->request->param();

        /** 查询条件 **/
        $where = [];
        if ($params["keyword"]) $where[] = ["goods_name", "like", "%{$params["keyword"]}%"];
        $where[] = ["type", "=", $params["type"] ?? 'goods'];
        if ($params["test"]) $where[] = ["test", "=", $params["test"]];
        //if($params["status"]) $where[]=["status","=", $params["status"]];
        //$where[]=["type","=", 1];


        /** 查询数据 **/
        $params["InterfaceType"] = "admin";//接口类型
        $params["DataFormat"]    = "list";//数据格式,find详情,list列表
        $params["field"]         = "*";//过滤字段


        /** 导出数据 **/
        if ($params["is_export"]) $this->export_excel($where, $params);


        /** 查询数据 **/
        $result = $ShopGoodsInit->get_list_paginate($where, $params);


        /** 数据渲染 **/
        $this->assign("list", $result);
        $this->assign("pagination", $result->render());//单独提取分页出来
        $this->assign("page", $result->currentPage());//当前页码


        return $this->fetch();
    }


    //添加
    public function add()
    {
        $this->base_edit();//处理基础信息


        return $this->fetch();
    }


    //编辑详情
    public function edit()
    {
        $this->base_edit();//处理基础信息

        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理  (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)
        $params         = $this->request->param();

        /** 查询条件 **/
        $where   = [];
        $where[] = ["id", "=", $params["goods_id"]];

        /** 查询数据 **/
        $params["InterfaceType"] = "admin";//接口类型
        $params["DataFormat"]    = "find";//数据格式,find详情,list列表
        $result                  = $ShopGoodsInit->get_find($where, $params);
        if (empty($result)) $this->error("暂无数据");

        /** 数据格式转数组 **/
        $toArray = $result->toArray();

        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    //添加&&编辑 提交
    public function edit_post()
    {
        $ShopGoodsInit = new \init\ShopGoodsInit();//商品管理  (ps:InitController)


        // 获取请求参数
        $params = $this->request->param();
        unset($params['id']);
        $goods_id = $params['goods_id'] ?? 0;

        // 基础验证
        if (empty($params['images'])) $this->error('请上传商品图片');
        if (empty($params['image'])) $this->error('请上传商品图片');

        // 处理图片数据
        $params['images']      = $this->setParams($params['images']);
        $params['update_time'] = time();

        //处理分类
        if ($params['class_id']) $params['search_class_id'] = $params['class_id'];
        if ($params['class_two_id']) $params['search_class_id'] = $params['class_two_id'];


        //处理规格数据
        $ShopGoodsInit->edit_sku_post($params, $goods_id);//普通商品-规格


        $this->success('保存成功', "index{$this->params_url}");
    }


    public function uploadImage()
    {
        $uploader = new Upload();

        $result = $uploader->upload();

        if ($result === false) {
            $this->error($uploader->getError());
        } else {
            $result['url'] = cmf_get_asset_url($result['filepath']);
            $this->success('上传成功', '', $result);
        }
    }


    //删除
    public function delete()
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理   (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)
        $params         = $this->request->param();

        if ($params["id"]) $id = $params["id"];
        if (empty($params["id"])) $id = $this->request->param("ids/a");

        /** 删除数据 **/
        $result = $ShopGoodsInit->delete_post($id);
        if (empty($result)) $this->error("失败请重试");

        $this->success("删除成功");//   , "index{$this->params_url}"
    }


    //批量操作
    public function batch_post()
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理   (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)
        $params         = $this->request->param();

        $id = $this->request->param("id/a");
        if (empty($id)) $id = $this->request->param("ids/a");

        //提交编辑
        $result = $ShopGoodsInit->batch_post($id, $params);
        if (empty($result)) $this->error("失败请重试");

        $this->success("保存成功");//   , "index{$this->params_url}"
    }


    //更新排序
    public function list_order_post()
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理   (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)
        $params         = $this->request->param("list_order/a");

        //提交更新
        $result = $ShopGoodsInit->list_order_post($params);
        if (empty($result)) $this->error("失败请重试");

        $this->success("保存成功"); //   , "index{$this->params_url}"
    }


    /**
     * 导出数据
     * @param array $where 条件
     */
    public function export_excel($where = [], $params = [])
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理   (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)


        $result = $ShopGoodsInit->get_list($where, $params);

        $result = $result->toArray();
        foreach ($result as $k => &$item) {

            //订单号过长问题
            if ($item["order_num"]) $item["order_num"] = $item["order_num"] . "\t";

            //图片链接 可用默认浏览器打开   后面为展示链接名字 --单独,多图特殊处理一下
            if ($item["image"]) $item["image"] = '=HYPERLINK("' . cmf_get_asset_url($item['image']) . '","图片.png")';


            //用户信息
            $user_info        = $item['user_info'];
            $item['userInfo'] = "(ID:{$user_info['id']}) {$user_info['nickname']}  {$user_info['phone']}";


            //背景颜色
            if ($item['unit'] == '测试8') $item['BackgroundColor'] = 'red';
        }

        $headArrValue = [
            ["rowName" => "ID", "rowVal" => "id", "width" => 10],
            ["rowName" => "用户信息", "rowVal" => "userInfo", "width" => 30],
            ["rowName" => "名字", "rowVal" => "name", "width" => 20],
            ["rowName" => "年龄", "rowVal" => "age", "width" => 20],
            ["rowName" => "测试", "rowVal" => "test", "width" => 20],
            ["rowName" => "创建时间", "rowVal" => "create_time", "width" => 30],
        ];


        //副标题 纵单元格
        //        $subtitle = [
        //            ["rowName" => "列1", "acrossCells" => count($headArrValue)/2],
        //            ["rowName" => "列2", "acrossCells" => count($headArrValue)/2],
        //        ];

        $Excel = new ExcelController();
        $Excel->excelExports($result, $headArrValue, ["fileName" => "导出"]);
    }


    /*************************      规格信息       ******************************/

    /**
     * 获取商品编辑数据
     * 包括商品基本信息、SKU数据、规格属性数据等
     *
     * @return void 返回JSON格式数据
     */
    public function getEditData()
    {
        // 获取请求参数中的商品ID
        $goods_id = $this->request->param('goods_id');

        // 初始化各模型
        $ShopGoodsSkuModel       = new \initmodel\sku\ShopGoodsSkuModel();
        $ShopGoodsAttrModel      = new \initmodel\sku\ShopGoodsAttrModel();
        $ShopGoodsAttrValueModel = new \initmodel\sku\ShopGoodsAttrValueModel();
        $ShopGoodsSkuAttrModel   = new \initmodel\sku\ShopGoodsSkuAttrModel();
        $ShopGoodsModel          = new \initmodel\ShopGoodsModel();

        // 获取商品基本信息
        $goods_info   = $ShopGoodsModel->where(['id' => $goods_id])->find();
        $is_attribute = $goods_info['is_attribute']; // 是否是多规格商品

        // 需要获取的字段数组
        $field_arr = ['image', 'price', 'line_price', 'stock'];

        // 初始化返回数据
        $result = [
            'skuData'      => [],
            'specData'     => [],
            'is_attribute' => $is_attribute
        ];

        // 多规格商品处理
        if ($is_attribute == 1) {
            // 1. 获取规格属性列表
            $attr_list = $ShopGoodsAttrModel->field('id,attr_name title')
                ->where(['status' => 1, 'goods_id' => $goods_id])
                ->order('list_order')
                ->select();

            // 2. 获取每个规格属性下的属性值
            foreach ($attr_list as &$item) {
                $item['child'] = $ShopGoodsAttrValueModel->field('id,attr_value_name title')
                    ->where(['attr_id' => $item['id'], 'status' => 1])
                    ->order('list_order')
                    ->select();
            }

            // 3. 获取SKU列表
            $sku_list = $ShopGoodsSkuModel->where(['goods_id' => $goods_id, 'status' => 1])->select();

            // 4. 处理SKU数据
            foreach ($sku_list as $sku) {
                // 处理SKU图片路径
                $sku['image'] = $sku['image'] ? cmf_get_asset_url($sku['image']) : '';

                // 获取该SKU对应的属性值ID
                $map               = [
                    ['sku_id', '=', $sku['id']],
                    ['status', '=', 1]
                ];
                $attr_value_id_arr = $ShopGoodsSkuAttrModel->where($map)->column('attr_value_id');
                $attr_value_id_str = implode('-', $attr_value_id_arr);

                // 组织SKU数据格式
                foreach ($field_arr as $field) {
                    $result['skuData']['skus[' . $attr_value_id_str . '][' . $field . ']'] = $sku[$field];
                }
            }

            $result['specData'] = $attr_list;
        } // 单规格商品处理
        else {
            // 直接从商品信息中获取基本字段
            foreach ($field_arr as $field) {
                $result['skuData'][$field] = $goods_info[$field] ?? null;
            }
        }

        // 返回成功响应
        $this->success('', '', $result);
    }

}
