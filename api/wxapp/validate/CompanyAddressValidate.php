<?php

namespace api\wxapp\validate;

use think\Validate;


/**
    * @AdminModel(
    *     "name"             =>"CompanyAddress",
    *     "name_underline"   =>"company_address",
    *     "table_name"       =>"company_address",
    *     "validate_name"    =>"CompanyAddressValidate",
    *     "remark"           =>"地址管理",
    *     "author"           =>"",
    *     "create_time"      =>"2025-10-07 11:12:19",
    *     "version"          =>"1.0",
    *     "use"              =>   $this->validate($params, CompanyAddress);
    * )
    */

class CompanyAddressValidate extends Validate
{

protected $rule = [];




protected $message = [];





//软删除(delete_time,0)  'action'     => 'require|unique:AdminMenu,app^controller^action,delete_time,0',


//    protected $scene = [
//        'add'  => ['name', 'app', 'controller', 'action', 'parent_id'],
//        'edit' => ['name', 'app', 'controller', 'action', 'id', 'parent_id'],
//    ];


}
