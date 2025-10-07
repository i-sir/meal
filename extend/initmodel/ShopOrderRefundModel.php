<?php

namespace initmodel;

/**
    * @AdminModel(
    *     "name"             =>"ShopOrderRefund",
    *     "name_underline"   =>"shop_order_refund",
    *     "table_name"       =>"shop_order_refund",
    *     "model_name"       =>"ShopOrderRefundModel",
    *     "remark"           =>"退款管理",
    *     "author"           =>"",
    *     "create_time"      =>"2025-06-06 10:53:27",
    *     "version"          =>"1.0",
    *     "use"              => new \initmodel\ShopOrderRefundModel();
    * )
    */


use think\facade\Db;
use think\Model;
use think\model\concern\SoftDelete;


class ShopOrderRefundModel extends Model{

	protected $name = 'shop_order_refund';//退款管理

	//软删除
	protected $hidden            = ['delete_time'];
	protected $deleteTime        = 'delete_time';
    protected $defaultSoftDelete = 0;
    use SoftDelete;
}
