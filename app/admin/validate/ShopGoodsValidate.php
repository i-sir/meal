<?php

namespace app\admin\validate;

use think\Validate;


/**
    * @AdminModel(
    *     "name"             =>"ShopGoods",
    *     "name_underline"   =>"shop_goods",
    *     "table_name"       =>"shop_goods",
    *     "validate_name"    =>"ShopGoodsValidate",
    *     "remark"           =>"商品管理",
    *     "author"           =>"",
    *     "create_time"      =>"2025-06-18 17:05:22",
    *     "version"          =>"1.0",
    *     "use"              =>   $this->validate($params, ShopGoods);
    * )
    */

class ShopGoodsValidate extends Validate
{

protected $rule = [];




protected $message = [];




//软删除(delete_time,0)  'action'     => 'require|unique:AdminMenu,app^controller^action,delete_time,0',

//    protected $scene = [
//        'add'  => ['name', 'app', 'controller', 'action', 'parent_id'],
//        'edit' => ['name', 'app', 'controller', 'action', 'id', 'parent_id'],
//    ];


}
