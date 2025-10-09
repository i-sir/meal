<?php

namespace api\wxapp\controller;

/**
 * @ApiController(
 *     "name"                    =>"CompanyAddress",
 *     "name_underline"          =>"company_address",
 *     "controller_name"         =>"CompanyAddress",
 *     "table_name"              =>"company_address",
 *     "remark"                  =>"公司地址列表"
 *     "api_url"                 =>"/api/wxapp/company_address/index",
 *     "author"                  =>"",
 *     "create_time"             =>"2025-10-07 11:12:19",
 *     "version"                 =>"1.0",
 *     "use"                     => new \api\wxapp\controller\CompanyAddressController();
 *     "test_environment"        =>"http://meal.ikun:9090/api/wxapp/company_address/index",
 *     "official_environment"    =>"http://xcxkf207.aubye.com/api/wxapp/company_address/index",
 * )
 */


use think\facade\Db;
use think\facade\Log;
use think\facade\Cache;


error_reporting(0);


class CompanyAddressController extends AuthController
{

    //public function initialize(){
    //	//公司地址列表
    //	parent::initialize();
    //}


    /**
     * 默认接口
     * /api/wxapp/company_address/index
     * http://xcxkf207.aubye.com/api/wxapp/company_address/index
     */
    public function index()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//公司地址列表   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //公司地址列表   (ps:InitModel)

        $result = [];

        $this->success('公司地址列表-接口请求成功', $result);
    }


    /**
     * 公司地址列表 列表
     * @OA\Post(
     *     tags={"公司地址列表"},
     *     path="/wxapp/company_address/find_address_list",
     *
     *
     *
     *
     *    @OA\Parameter(
     *         name="openid",
     *         in="query",
     *         description="openid",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *     @OA\Parameter(
     *         name="keyword",
     *         in="query",
     *         description="(选填)关键字搜索",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *     @OA\Parameter(
     *         name="is_paginate",
     *         in="query",
     *         description="false=分页(不传默认分页),true=不分页",
     *         required=false,
     *         @OA\Schema(
     *             type="string",
     *         )
     *     ),
     *
     *
     *
     *
     *     @OA\Response(response="200", description="An example resource"),
     *     @OA\Response(response="default", description="An example resource")
     * )
     *
     *
     *   test_environment: http://meal.ikun:9090/api/wxapp/company_address/find_address_list
     *   official_environment: http://xcxkf207.aubye.com/api/wxapp/company_address/find_address_list
     *   api:  /wxapp/company_address/find_address_list
     *   remark_name: 公司地址列表 列表
     *
     */
    public function find_address_list()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//公司地址列表   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //公司地址列表   (ps:InitModel)

        /** 获取参数 **/
        $params            = $this->request->param();
        $params["user_id"] = $this->user_id;

        /** 查询条件 **/
        $where   = [];
        $where[] = ['id', '>', 0];
        if ($params["keyword"]) $where[] = ["name|address", "like", "%{$params['keyword']}%"];
        if ($params["status"]) $where[] = ["status", "=", $params["status"]];


        /** 查询数据 **/
        $params["InterfaceType"] = "api";//接口类型
        $params["DataFormat"]    = "list";//数据格式,find详情,list列表
        $params["field"]         = "*";//过滤字段
        if ($params['is_paginate']) $result = $CompanyAddressInit->get_list($where, $params);
        if (empty($params['is_paginate'])) $result = $CompanyAddressInit->get_list_paginate($where, $params);
        if (empty($result)) $this->error("暂无信息!");

        $this->success("请求成功!", $result);
    }


 

}
