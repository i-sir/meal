<?php

namespace initmodel;

/**
    * @AdminModel(
    *     "name"             =>"Statistics",
    *     "name_underline"   =>"statistics",
    *     "table_name"       =>"statistics",
    *     "model_name"       =>"StatisticsModel",
    *     "remark"           =>"统计管理",
    *     "author"           =>"",
    *     "create_time"      =>"2025-10-12 10:18:28",
    *     "version"          =>"1.0",
    *     "use"              => new \initmodel\StatisticsModel();
    * )
    */


use think\facade\Db;
use think\Model;
use think\model\concern\SoftDelete;


class StatisticsModel extends Model{

	protected $name = 'statistics';//统计管理

	//软删除
	protected $hidden            = ['delete_time'];
	protected $deleteTime        = 'delete_time';
    protected $defaultSoftDelete = 0;
    use SoftDelete;
}
