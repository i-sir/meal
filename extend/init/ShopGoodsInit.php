<?php

namespace init;


/**
 * @Init(
 *     "name"            =>"ShopGoods",
 *     "name_underline"  =>"shop_goods",
 *     "table_name"      =>"shop_goods",
 *     "model_name"      =>"ShopGoodsModel",
 *     "remark"          =>"商品管理",
 *     "author"          =>"",
 *     "create_time"     =>"2025-06-04 11:00:27",
 *     "version"         =>"1.0",
 *     "use"             => new \init\ShopGoodsInit();
 * )
 */

use api\wxapp\controller\PublicController;
use think\facade\Db;


class ShopGoodsInit extends Base
{

    public $type = [
        'goods' => '普通商品'
    ];//商品类型

    public $type_simple = [
        'goods' => '普',
    ];//商品类型简写


    protected $Field         = "*";//过滤字段,默认全部
    protected $Limit         = 100000;//如不分页,展示条数
    protected $PageSize      = 15;//分页每页,数据条数
    protected $Order         = "list_order,id desc";//排序
    protected $InterfaceType = "api";//接口类型:admin=后台,api=前端
    protected $DataFormat    = "find";//数据格式,find详情,list列表

    //本init和model
    public function _init()
    {
        $ShopGoodsInit  = new \init\ShopGoodsInit();//商品管理   (ps:InitController)
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)
    }

    /**
     * 处理公共数据
     * @param array $item   单条数据
     * @param array $params 参数
     * @return array|mixed
     */
    public function common_item($item = [], $params = [])
    {
        $ShopGoodsClassModel = new \initmodel\ShopGoodsClassModel();//分类管理   (ps:InitModel)
        //$BaseLikeModel       = new \initmodel\BaseLikeModel(); //点赞&收藏   (ps:InitModel)


        //接口类型
        if ($params['InterfaceType']) $this->InterfaceType = $params['InterfaceType'];
        //数据格式
        if ($params['DataFormat']) $this->DataFormat = $params['DataFormat'];


        /** 数据格式(公共部分),find详情&&list列表 共存数据 **/
        $item['type_name'] = $this->type_simple[$item['type']] ?? '';

        //分类名称
        $one_info = $ShopGoodsClassModel->where('id', '=', $item['class_id'])->find();
        $two_info = $ShopGoodsClassModel->where('id', '=', $item['class_two_id'])->find();
        if ($one_info) $item['class_name'] = $one_info['name'];
        if ($two_info) $item['class_name'] = $two_info['name'];
        if ($two_info && $one_info) $item['class_name'] = $one_info['name'] . ' - ' . $two_info['name'];


        /** 处理文字描述 **/


        /** 处理数据 **/
        if ($this->InterfaceType == 'api') {
            /** api处理文件 **/
            if ($item['image']) $item['image'] = cmf_get_asset_url($item['image']);//封面
            if ($item['qr_image']) $item['qr_image'] = cmf_get_asset_url($item['qr_image']);//二维码信息
            if ($item['images']) $item['images'] = $this->getImagesUrl($item['images']);//图集
            if ($item['tag']) $item['tag'] = $this->getParams($item['tag'], '/');


            //是否点赞
            //            $item['is_like'] = false;
            //            if ($params['user_id']) {
            //                $map_like   = [];
            //                $map_like[] = ['pid', '=', $item['id']];
            //                $map_like[] = ['type', 'in', ['paid', 'full', 'goods']];
            //                $map_like[] = ['user_id', '=', $params['user_id']];
            //                $is_like    = $BaseLikeModel->where($map_like)->count();
            //                if ($is_like) $item['is_like'] = true;
            //            }


            if ($this->DataFormat == 'find') {
                /** find详情数据格式 **/


                /** 处理富文本 **/
                if ($item['content']) $item['content'] = htmlspecialchars_decode(cmf_replace_content_file_url($item['content']));//图文详情


            } else {
                /** list列表数据格式 **/

            }


        } else {
            /** admin处理文件 **/
            if ($item['images']) $item['images'] = $this->getParams($item['images']);//图集


            if ($this->DataFormat == 'find') {
                /** find详情数据格式 **/


                /** 处理富文本 **/
                if ($item['content']) $item['content'] = htmlspecialchars_decode(cmf_replace_content_file_url($item['content']));//图文详情


            } else {
                /** list列表数据格式 **/

            }

        }


        /** 导出数据处理 **/
        if (isset($params["is_export"]) && $params["is_export"]) {
            $item["create_time"] = date("Y-m-d H:i:s", $item["create_time"]);
            $item["update_time"] = date("Y-m-d H:i:s", $item["update_time"]);
        }

        return $item;
    }


    /**
     * 获取列表
     * @param $where  条件
     * @param $params 扩充参数 order=排序  field=过滤字段 limit=限制条数  InterfaceType=admin|api后端,前端
     * @return false|mixed
     */
    public function get_list($where = [], $params = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)


        /** 查询数据 **/
        $result = $ShopGoodsModel
            ->where($where)
            ->order($params['order'] ?? $this->Order)
            ->field($params['field'] ?? $this->Field)
            ->limit($params["limit"] ?? $this->Limit)
            ->select()
            ->each(function ($item, $key) use ($params) {

                /** 处理公共数据 **/
                $item = $this->common_item($item, $params);

                return $item;
            });

        /** 根据接口类型,返回不同数据类型 **/
        if ($params['InterfaceType']) $this->InterfaceType = $params['InterfaceType'];
        if ($this->InterfaceType == 'api' && empty(count($result))) return false;

        return $result;
    }


    /**
     * 分页查询
     * @param $where  条件
     * @param $params 扩充参数 order=排序  field=过滤字段 page_size=每页条数  InterfaceType=admin|api后端,前端
     * @return mixed
     */
    public function get_list_paginate($where = [], $params = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)


        /** 查询数据 **/
        $result = $ShopGoodsModel
            ->where($where)
            ->order($params['order'] ?? $this->Order)
            ->field($params['field'] ?? $this->Field)
            ->paginate(["list_rows" => $params["page_size"] ?? $this->PageSize, "query" => $params])
            ->each(function ($item, $key) use ($params) {

                /** 处理公共数据 **/
                $item = $this->common_item($item, $params);

                return $item;
            });

        /** 根据接口类型,返回不同数据类型 **/
        if ($params['InterfaceType']) $this->InterfaceType = $params['InterfaceType'];
        if ($this->InterfaceType == 'api' && $result->isEmpty()) return false;


        return $result;
    }

    /**
     * 获取列表
     * @param $where  条件
     * @param $params 扩充参数 order=排序  field=过滤字段 limit=限制条数  InterfaceType=admin|api后端,前端
     * @return false|mixed
     */
    public function get_join_list($where = [], $params = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)

        /** 查询数据 **/
        $result = $ShopGoodsModel
            ->alias('a')
            ->join('member b', 'a.user_id = b.id')
            ->where($where)
            ->order($params['order'] ?? $this->Order)
            ->field($params['field'] ?? $this->Field)
            ->limit($params["limit"] ?? $this->Limit)
            ->select()
            ->each(function ($item, $key) use ($params) {

                /** 处理公共数据 **/
                $item = $this->common_item($item, $params);


                return $item;
            });

        /** 根据接口类型,返回不同数据类型 **/
        if ($params['InterfaceType']) $this->InterfaceType = $params['InterfaceType'];
        if ($this->InterfaceType == 'api' && empty(count($result))) return false;

        return $result;
    }


    /**
     * 获取详情
     * @param $where     条件 或 id值
     * @param $params    扩充参数 field=过滤字段  InterfaceType=admin|api后端,前端
     * @return false|mixed
     */
    public function get_find($where = [], $params = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)

        /** 可直接传id,或者where条件 **/
        if (is_string($where) || is_int($where)) $where = ["id" => (int)$where];
        if (empty($where)) return false;

        /** 查询数据 **/
        $item = $ShopGoodsModel
            ->where($where)
            ->order($params['order'] ?? $this->Order)
            ->field($params['field'] ?? $this->Field)
            ->find();


        if (empty($item)) return false;


        /** 处理公共数据 **/
        $item = $this->common_item($item, $params);


        return $item;
    }


    /**
     * 前端  编辑&添加
     * @param $params 参数
     * @param $where  where条件
     * @return void
     */
    public function api_edit_post($params = [], $where = [])
    {
        $result = false;

        /** 接口提交,处理数据 **/
        if ($params['images']) $params['images'] = $this->setParams($params['images']);//图集


        $result = $this->edit_post($params, $where);//api提交

        return $result;
    }


    /**
     * 后台  编辑&添加
     * @param $model  类
     * @param $params 参数
     * @param $where  更新提交(编辑数据使用)
     * @return void
     */
    public function admin_edit_post($params = [], $where = [])
    {
        $result = false;

        /** 后台提交,处理数据 **/
        if ($params['images']) $params['images'] = $this->setParams($params['images']);//图集


        $result = $this->edit_post($params, $where);//admin提交

        return $result;
    }


    /**
     * 提交 编辑&添加
     * @param $params
     * @param $where where条件(或传id)
     * @return void
     */
    public function edit_post($params, $where = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)


        /** 查询详情数据 && 需要再打开 **/
        //if (!empty($params["id"])) $item = $this->get_find(["id" => $params["id"]],["DataFormat"=>"list"]);
        //if (empty($params["id"]) && !empty($where)) $item = $this->get_find($where,["DataFormat"=>"list"]);

        /** 可直接传id,或者where条件 **/
        if (is_string($where) || is_int($where)) $where = ["id" => (int)$where];


        /** 公共提交,处理数据 **/
        if ($params['class_id']) $params['search_class_id'] = $params['class_id'];
        if ($params['second_class_id']) $params['search_class_id'] = $params['second_class_id'];


        if (!empty($where)) {
            //传入where条件,根据条件更新数据
            $params["update_time"] = time();
            $result                = $ShopGoodsModel->where($where)->strict(false)->update($params);
            //if ($result) $result = $item["id"];
        } elseif (!empty($params["id"])) {
            //如传入id,根据id编辑数据
            $params["update_time"] = time();
            $result                = $ShopGoodsModel->where("id", "=", $params["id"])->strict(false)->update($params);
            //if($result) $result = $item["id"];
        } else {
            //无更新条件则添加数据
            $params["create_time"] = time();
            $result                = $ShopGoodsModel->strict(false)->insert($params, true);
        }

        return $result;
    }

    /**
     * 提交 规格 编辑&添加
     * @param $params
     * @param $goods_id 商品id
     * @return void
     */
    public function edit_sku_post($params, $goods_id)
    {
        // 初始化模型
        $ShopGoodsModel          = new \initmodel\ShopGoodsModel();
        $ShopGoodsSkuModel       = new \initmodel\sku\ShopGoodsSkuModel();
        $ShopGoodsAttrModel      = new \initmodel\sku\ShopGoodsAttrModel();
        $ShopGoodsAttrValueModel = new \initmodel\sku\ShopGoodsAttrValueModel();
        $ShopGoodsSkuAttrModel   = new \initmodel\sku\ShopGoodsSkuAttrModel();
        $QrInit                  = new QrInit();//生成二维码


        // 1. 保存商品基础信息
        if (empty($goods_id)) {
            $params['create_time'] = time();
            $goods_id              = $ShopGoodsModel->strict(false)->insert($params, true);
        } else {
            $params['update_time'] = time();
            $ShopGoodsModel->where(['id' => $goods_id])->strict(false)->update($params);
        }

        //生成溯源码
        $code                 = $params['shop_code'] . date("Y") . $goods_id;
        $goods_update['code'] = $code;

        //生成二小程序码
        $goods_update['qr_image']    = $QrInit->get_qr($code);
        $goods_update['update_time'] = time();
        $ShopGoodsModel->where(['id' => $goods_id])->strict(false)->update($goods_update);

        // 2. 处理多规格商品
        if (!empty($params['is_attribute'])) {
            // 2.1 先标记所有旧数据为无效
            $delete_where = [['goods_id', '=', $goods_id]];
            $ShopGoodsSkuModel->where($delete_where)->update(['status' => 0]);
            $ShopGoodsAttrModel->where($delete_where)->update(['status' => 0]);
            $ShopGoodsAttrValueModel->where($delete_where)->update(['status' => 0]);
            $ShopGoodsSkuAttrModel->where($delete_where)->update(['status' => 0]);

            // 验证规格数据
            if (empty($params['attr_data']) || empty($params['skus'])) $this->error('请先设置规格');

            // 2.2 处理属性数据
            $attr_id_arr  = [];
            $uuid_to_name = [];
            foreach ($params['attr_data'] as $attr_key => $attr_item) {
                // 保存属性
                $attr_data = [
                    'attr_name'   => $attr_item['title'],
                    'status'      => 1,
                    'goods_id'    => $goods_id,
                    'list_order'  => $attr_key,
                    'update_time' => time()
                ];

                $map     = [
                    ['attr_name', '=', $attr_item['title']],
                    ['goods_id', '=', $goods_id]
                ];
                $is_attr = $ShopGoodsAttrModel->where($map)->find();

                if (empty($is_attr)) {
                    $attr_data['create_time'] = time();
                    $attr_id                  = $ShopGoodsAttrModel->insertGetId($attr_data);
                } else {
                    $ShopGoodsAttrModel->where($map)->update($attr_data);
                    $attr_id = $is_attr['id'];
                }
                $attr_id_arr[] = $attr_id;

                // 保存属性值
                foreach ($attr_item['child'] as $attr_value_key => $attr_value_item) {
                    $uuid_to_name[$attr_value_item['id']] = $attr_value_item['title'];
                    $attr_value_data                      = [
                        'attr_id'         => $attr_id,
                        'attr_value_name' => $attr_value_item['title'],
                        'status'          => 1,
                        'goods_id'        => $goods_id,
                        'list_order'      => $attr_value_key,
                        'update_time'     => time()
                    ];

                    $map           = [
                        ['attr_id', '=', $attr_id],
                        ['attr_value_name', '=', $attr_value_item['title']]
                    ];
                    $is_attr_value = $ShopGoodsAttrValueModel->where($map)->find();

                    if (empty($is_attr_value)) {
                        $attr_value_data['create_time'] = time();
                        $ShopGoodsAttrValueModel->insert($attr_value_data);
                    } else {
                        $ShopGoodsAttrValueModel->where($map)->update($attr_value_data);
                    }
                }
            }

            // 2.3 处理SKU数据
            foreach ($params['skus'] as $uuid_key => $sku_item) {
                // 生成SKU名称
                $uuid_key_arr = explode('-', $uuid_key);
                $sku_name_arr = [];
                foreach ($uuid_key_arr as $uuid_key_item) {
                    $sku_name_arr[] = $uuid_to_name[$uuid_key_item];
                }
                $sku_name = implode(';', $sku_name_arr);

                // 保存SKU
                $sku_data = [
                    'line_price'  => $sku_item['line_price'] ?? 0,
                    'price'       => $sku_item['price'] ?? 0,
                    'stock'       => $sku_item['stock'] ?? 0,
                    'image'       => $sku_item['image'],
                    'status'      => 1,
                    'goods_id'    => $goods_id,
                    'update_time' => time()
                ];

                $map      = [
                    ['goods_id', '=', $goods_id],
                    ['sku_name', '=', $sku_name]
                ];
                $have_sku = $ShopGoodsSkuModel->where($map)->find();

                if ($have_sku) {
                    $ShopGoodsSkuModel->where($map)->update($sku_data);
                    $sku_id = $have_sku['id'];
                } else {
                    $sku_data['sku_name']    = $sku_name;
                    $sku_data['create_time'] = time();
                    $sku_id                  = $ShopGoodsSkuModel->insertGetId($sku_data);
                }

                // 保存SKU属性关联
                foreach ($sku_name_arr as $k => $sku_value_item) {
                    // 获取属性值ID
                    $map           = [
                        ['goods_id', '=', $goods_id],
                        ['attr_id', '=', $attr_id_arr[$k]],
                        ['status', '=', 1],
                        ['attr_value_name', '=', $sku_value_item]
                    ];
                    $attr_value_id = $ShopGoodsAttrValueModel->where($map)->value('id');

                    // 保存关联
                    $sku_attr_data = [
                        'goods_id'      => $goods_id,
                        'sku_id'        => $sku_id,
                        'attr_id'       => $attr_id_arr[$k],
                        'attr_value_id' => $attr_value_id,
                        'status'        => 1,
                        'update_time'   => time()
                    ];

                    $map          = [
                        ['sku_id', '=', $sku_id],
                        ['attr_id', '=', $attr_id_arr[$k]],
                        ['attr_value_id', '=', $attr_value_id]
                    ];
                    $have_sku_arr = $ShopGoodsSkuAttrModel->where($map)->find();

                    if ($have_sku_arr) {
                        $ShopGoodsSkuAttrModel->where($map)->update($sku_attr_data);
                    } else {
                        $sku_attr_data['create_time'] = time();
                        $ShopGoodsSkuAttrModel->insert($sku_attr_data);
                    }
                }
            }

            // 2.4 更新商品最小价格和总库存
            $min_price      = $ShopGoodsSkuModel->where(['status' => 1, 'goods_id' => $goods_id])->min('price');
            $min_line_price = $ShopGoodsSkuModel->where(['status' => 1, 'goods_id' => $goods_id])->min('line_price');
            $total_stock    = $ShopGoodsSkuModel->where(['status' => 1, 'goods_id' => $goods_id])->sum('stock');
            $ShopGoodsModel->where(['id' => $goods_id])->strict(false)->update(['stock' => $total_stock, 'price' => $min_price, 'line_price' => $min_line_price]);
        }

        // 3. 删除无效数据
        $delete_where = [
            ['goods_id', '=', $goods_id],
            ['status', '=', 0]
        ];
        $ShopGoodsSkuModel->where($delete_where)->delete();
        $ShopGoodsAttrModel->where($delete_where)->delete();
        $ShopGoodsAttrValueModel->where($delete_where)->delete();
        $ShopGoodsSkuAttrModel->where($delete_where)->delete();

        return true;
    }


    /**
     * 提交(副本,无任何操作,不查询详情,不返回id) 编辑&添加
     * @param $params
     * @param $where where 条件(或传id)
     * @return void
     */
    public function edit_post_two($params, $where = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)


        /** 可直接传id,或者where条件 **/
        if (is_string($where) || is_int($where)) $where = ["id" => (int)$where];


        /** 公共提交,处理数据 **/


        if (!empty($where)) {
            //传入where条件,根据条件更新数据
            $params["update_time"] = time();
            $result                = $ShopGoodsModel->where($where)->strict(false)->update($params);
        } elseif (!empty($params["id"])) {
            //如传入id,根据id编辑数据
            $params["update_time"] = time();
            $result                = $ShopGoodsModel->where("id", "=", $params["id"])->strict(false)->update($params);
        } else {
            //无更新条件则添加数据
            $params["create_time"] = time();
            $result                = $ShopGoodsModel->strict(false)->insert($params);
        }

        return $result;
    }


    /**
     * 删除数据 软删除
     * @param $id     传id  int或array都可以
     * @param $type   1软删除 2真实删除
     * @param $params 扩充参数
     * @return void
     */
    public function delete_post($id, $type = 1, $params = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)


        if ($type == 1) $result = $ShopGoodsModel->destroy($id);//软删除 数据表字段必须有delete_time
        if ($type == 2) $result = $ShopGoodsModel->destroy($id, true);//真实删除

        return $result;
    }


    /**
     * 后台批量操作
     * @param $id
     * @param $params 修改值
     * @return void
     */
    public function batch_post($id, $params = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理  (ps:InitModel)

        $where   = [];
        $where[] = ["id", "in", $id];//$id 为数组


        $params["update_time"] = time();
        $result                = $ShopGoodsModel->where($where)->strict(false)->update($params);//修改状态

        return $result;
    }


    /**
     * 后台  排序
     * @param $list_order 排序
     * @param $params     扩充参数
     * @return void
     */
    public function list_order_post($list_order, $params = [])
    {
        $ShopGoodsModel = new \initmodel\ShopGoodsModel(); //商品管理   (ps:InitModel)

        foreach ($list_order as $k => $v) {
            $where   = [];
            $where[] = ["id", "=", $k];
            $result  = $ShopGoodsModel->where($where)->strict(false)->update(["list_order" => $v, "update_time" => time()]);//排序
        }

        return $result;
    }


}
