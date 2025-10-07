<?php

namespace initmodel;

/**
    * @AdminModel(
    *     "name"             =>"CompanyAddress",
    *     "name_underline"   =>"company_address",
    *     "table_name"       =>"company_address",
    *     "model_name"       =>"CompanyAddressModel",
    *     "remark"           =>"地址管理",
    *     "author"           =>"",
    *     "create_time"      =>"2025-10-07 11:12:19",
    *     "version"          =>"1.0",
    *     "use"              => new \initmodel\CompanyAddressModel();
    * )
    */


use think\facade\Db;
use think\Model;
use think\model\concern\SoftDelete;


class CompanyAddressModel extends Model{

	protected $name = 'company_address';//地址管理

	//软删除
	protected $hidden            = ['delete_time'];
	protected $deleteTime        = 'delete_time';
    protected $defaultSoftDelete = 0;
    use SoftDelete;
}
