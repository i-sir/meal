<?php

namespace initmodel;

/**
    * @AdminModel(
    *     "name"             =>"ShopGoods",
    *     "name_underline"   =>"shop_goods",
    *     "table_name"       =>"shop_goods",
    *     "model_name"       =>"ShopGoodsModel",
    *     "remark"           =>"商品管理",
    *     "author"           =>"",
    *     "create_time"      =>"2025-06-18 17:05:22",
    *     "version"          =>"1.0",
    *     "use"              => new \initmodel\ShopGoodsModel();
    * )
    */


use think\facade\Db;
use think\Model;
use think\model\concern\SoftDelete;


class ShopGoodsModel extends Model{

	protected $name = 'shop_goods';//商品管理

	//软删除
	protected $hidden            = ['delete_time'];
	protected $deleteTime        = 'delete_time';
    protected $defaultSoftDelete = 0;
    use SoftDelete;
}
