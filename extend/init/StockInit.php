<?php

namespace init;

/**
 * @Init(
 *     "name"            =>"Stock",
 *     "table_name"      =>"shop_stock",
 *     "model_name"      =>"shop_stock",
 *     "remark"          =>"更改库存",
 *     "author"          =>"",
 *     "create_time"     =>"2023-05-20 10:22:00",
 *     "version"         =>"1.0",
 *     "use"             => new \init\StockInit();
 * )
 */
class StockInit
{

    /**
     * 增加库存
     * @param $operate_type    操作类型:shop_goods,point_goods
     * @param $sku_id          规格id
     * @param $count           处理库存数量
     * @param $goods_id        商品id
     * @param $order_num       订单号
     * @return void
     */
    public function inc_stock($operate_type = 'shop_goods', $sku_id, $count, $goods_id = 0, $order_num = 0)
    {
        $ShopStockModel = new \initmodel\ShopStockModel();




        //商城商品
        if ($operate_type == 'shop_goods') {
            $SkuModel   = new \initmodel\sku\ShopGoodsSkuModel();//规格
            $GoodsModel = new \initmodel\ShopGoodsModel();
        }

        //积分商品
        if ($operate_type == 'point_goods') {
            $GoodsModel = new \initmodel\PointGoodsModel(); //积分商品   (ps:InitModel)
        }

        //拼团商品
        if ($operate_type == 'group_goods') {
            $GoodsModel = new \initmodel\GroupGoodsModel(); //商品管理   (ps:InitModel)
        }

        //增加对应库存规格
        if ($sku_id) $SkuModel->where('id', '=', $sku_id)->inc('stock', $count)->update();
        if (empty($sku_id) && $goods_id) $GoodsModel->where('id', '=', $goods_id)->inc('stock', $count)->update();


            //售出数量扣除
        $GoodsModel->where('id', '=', $goods_id)->dec('sell_count', $count)->update();


        $insert['type']         = 2;//1增加销量  2减少销量
        $insert['operate_type'] = $operate_type;
        $insert['goods_id']     = $goods_id;
        $insert['sku_id']       = $sku_id;
        $insert['count']        = -$count;
        $insert['order_num']    = $order_num;
        $insert['create_time']  = time();


        $ShopStockModel->strict(false)->insert($insert);
    }


    /**
     * 减少库存
     * @param $operate_type    操作类型:shop_goods,point_goods
     * @param $sku_id          规格id
     * @param $count           处理库存数量
     * @param $goods_id        商品id
     * @param $order_num       订单号
     * @return void
     */
    public function dec_stock($operate_type = 'shop_goods', $sku_id, $count, $goods_id = 0, $order_num = 0)
    {
        $ShopStockModel = new \initmodel\ShopStockModel();

        //商城商品
        if ($operate_type == 'shop_goods') {
            $SkuModel   = new \initmodel\sku\ShopGoodsSkuModel();//规格
            $GoodsModel = new \initmodel\ShopGoodsModel();
        }

        //积分商品
        if ($operate_type == 'point_goods') {
            $GoodsModel = new \initmodel\PointGoodsModel(); //积分商品   (ps:InitModel)
        }

        //拼团商品
        if ($operate_type == 'group_goods') {
            $GoodsModel = new \initmodel\GroupGoodsModel(); //商品管理   (ps:InitModel)
        }


        //扣除对应库存规格
        if ($sku_id) $SkuModel->where('id', '=', $sku_id)->dec('stock', $count)->update();
        if (empty($sku_id) && $goods_id) $GoodsModel->where('id', '=', $goods_id)->dec('stock', $count)->update();

        //售出数量增加
        $GoodsModel->where('id', '=', $goods_id)->inc('sell_count', $count)->update();


        $insert['type']         = 1;//1增加销量  2减少销量
        $insert['operate_type'] = $operate_type;
        $insert['goods_id']     = $goods_id;
        $insert['sku_id']       = $sku_id;
        $insert['count']        = $count;
        $insert['order_num']    = $order_num;
        $insert['create_time']  = time();


        $ShopStockModel->strict(false)->insert($insert);
    }


}