<?php

namespace initmodel;

/**
    * @AdminModel(
    *     "name"             =>"ShopGoodsClass",
    *     "name_underline"   =>"shop_goods_class",
    *     "table_name"       =>"shop_goods_class",
    *     "model_name"       =>"ShopGoodsClassModel",
    *     "remark"           =>"分类管理",
    *     "author"           =>"",
    *     "create_time"      =>"2025-06-18 17:05:38",
    *     "version"          =>"1.0",
    *     "use"              => new \initmodel\ShopGoodsClassModel();
    * )
    */


use think\facade\Db;
use think\Model;
use think\model\concern\SoftDelete;


class ShopGoodsClassModel extends Model{

	protected $name = 'shop_goods_class';//分类管理

	//软删除
	protected $hidden            = ['delete_time'];
	protected $deleteTime        = 'delete_time';
    protected $defaultSoftDelete = 0;
    use SoftDelete;
}
