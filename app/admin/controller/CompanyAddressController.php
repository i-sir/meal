<?php

namespace app\admin\controller;


/**
 * @adminMenuRoot(
 *     "name"                =>"CompanyAddress",
 *     "name_underline"      =>"company_address",
 *     "controller_name"     =>"CompanyAddress",
 *     "table_name"          =>"company_address",
 *     "action"              =>"default",
 *     "parent"              =>"",
 *     "display"             => true,
 *     "order"               => 10000,
 *     "icon"                =>"none",
 *     "remark"              =>"地址管理",
 *     "author"              =>"",
 *     "create_time"         =>"2025-10-07 11:12:19",
 *     "version"             =>"1.0",
 *     "use"                 => new \app\admin\controller\CompanyAddressController();
 * )
 */


use think\facade\Db;
use cmf\controller\AdminBaseController;


class CompanyAddressController extends AdminBaseController
{

    // public function initialize(){
    //	//地址管理
    //	parent::initialize();
    //	}


    /**
     * 首页基础信息
     */
    protected function base_index()
    {

    }

    /**
     * 编辑,添加基础信息
     */
    protected function base_edit()
    {


    }



    /**
     * 地址转换为坐标(高德地图)
     */
    public function search_address_ii()
    {
        $address = $this->request->param('address');
        $key     = "0f7cbfb881a2bea61d912a4cc920b663";

        $url    = "https://restapi.amap.com/v3/geocode/geo?address={$address}&key={$key}";
        $result = file_get_contents($url);
        $result = json_decode($result, true);
        if ($result['status'] == 1) {

            $geocodes = $result['geocodes'];
            $return   = [];
            foreach ($geocodes as $item) {
                $location = explode(',', $item['location']);
                $return[] = ['lon' => $location[0], 'lat' => $location[1]];
            }
            $this->success('', '', $return);
        } else {
            $this->success('', '', $result['info']);
        }
    }

    /**
     * 坐标转换地址(高德地图)
     */
    public function reverse_address_ii()
    {
        $lng = $this->request->param('lng');
        $lat = $this->request->param('lat');
        $key = "0f7cbfb881a2bea61d912a4cc920b663";
        $url = "https://restapi.amap.com/v3/geocode/regeo?location={$lng},{$lat}&key={$key}";

        $result = file_get_contents($url);
        $result = json_decode($result, true);
        if ($result['status'] == 1) {

            $regeocode         = $result['regeocode'];
            $formatted_address = $regeocode['formatted_address'];
            $this->success('', '', $formatted_address);
        } else {
            $this->success('', '', $result['info']);
        }
    }



    /**
     * 首页列表数据
     * @adminMenu(
     *     'name'             => 'CompanyAddress',
     *     'name_underline'   => 'company_address',
     *     'parent'           => 'index',
     *     'display'          => true,
     *     'hasView'          => true,
     *     'order'            => 10000,
     *     'icon'             => '',
     *     'remark'           => '地址管理',
     *     'param'            => ''
     * )
     */
    public function index()
    {
        $this->base_index();//处理基础信息


        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理    (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        /** 查询条件 **/
        $where = [];
        //$where[]=["type","=", 1];
        if ($params["keyword"]) $where[] = ["name|address", "like", "%{$params["keyword"]}%"];
        if ($params["test"]) $where[] = ["test", "=", $params["test"]];


        //$where[] = $this->getBetweenTime($params['begin_time'], $params['end_time']);
        //if($params["status"]) $where[]=["status","=", $params["status"]];
        //$where[]=["type","=", 1];


        /** 查询数据 **/
        $params["InterfaceType"] = "admin";//接口类型
        $params["DataFormat"]    = "list";//数据格式,find详情,list列表
        $params["field"]         = "*";//过滤字段


        /** 导出数据 **/
        if ($params["is_export"]) $CompanyAddressInit->export_excel($where, $params);


        /** 查询数据 **/
        $result = $CompanyAddressInit->get_list_paginate($where, $params);


        /** 数据渲染 **/
        $this->assign("list", $result);
        $this->assign("pagination", $result->render());//单独提取分页出来
        $this->assign("page", $result->currentPage());//当前页码


        return $this->fetch();
    }


    //添加
    public function add()
    {
        $this->base_edit();//处理基础信息

        return $this->fetch();
    }


    //添加提交
    public function add_post()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();


        /** 检测参数信息 **/
        $validateResult = $this->validate($params, 'CompanyAddress');
        if ($validateResult !== true) $this->error($validateResult);


        /** 插入数据 **/
        $result = $CompanyAddressInit->admin_edit_post($params);
        if (empty($result)) $this->error("失败请重试");

        $this->success("保存成功", "index{$this->params_url}");
    }


    //查看详情
    public function find()
    {
        $this->base_edit();//处理基础信息

        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理    (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        /** 查询条件 **/
        $where   = [];
        $where[] = ["id", "=", $params["id"]];

        /** 查询数据 **/
        $params["InterfaceType"] = "admin";//接口类型
        $params["DataFormat"]    = "find";//数据格式,find详情,list列表
        $result                  = $CompanyAddressInit->get_find($where, $params);
        if (empty($result)) $this->error("暂无数据");

        /** 数据格式转数组 **/
        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    //编辑详情
    public function edit()
    {
        $this->base_edit();//处理基础信息

        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理  (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        /** 查询条件 **/
        $where   = [];
        $where[] = ["id", "=", $params["id"]];

        /** 查询数据 **/
        $params["InterfaceType"] = "admin";//接口类型
        $params["DataFormat"]    = "find";//数据格式,find详情,list列表
        $result                  = $CompanyAddressInit->get_find($where, $params);
        if (empty($result)) $this->error("暂无数据");

        /** 数据格式转数组 **/
        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    //提交编辑
    public function edit_post()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();


        /** 检测参数信息 **/
        $validateResult = $this->validate($params, 'CompanyAddress');
        if ($validateResult !== true) $this->error($validateResult);


        /** 更改数据条件 && 或$params中存在id本字段可以忽略 **/
        $where = [];
        if ($params['id']) $where[] = ['id', '=', $params['id']];


        /** 提交数据 **/
        $result = $CompanyAddressInit->admin_edit_post($params, $where);
        if (empty($result)) $this->error("失败请重试");

        $this->success("保存成功", "index{$this->params_url}");
    }


    //提交(副本,无任何操作) 编辑&添加
    public function edit_post_two()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        /** 更改数据条件 && 或$params中存在id本字段可以忽略 **/
        $where = [];
        if ($params['id']) $where[] = ['id', '=', $params['id']];

        /** 提交数据 **/
        $result = $CompanyAddressInit->edit_post_two($params, $where);
        if (empty($result)) $this->error("失败请重试");

        $this->success("保存成功", "index{$this->params_url}");
    }


    //驳回
    public function refuse()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理  (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        /** 查询条件 **/
        $where   = [];
        $where[] = ["id", "=", $params["id"]];


        /** 查询数据 **/
        $params["InterfaceType"] = "admin";//接口类型
        $params["DataFormat"]    = "find";//数据格式,find详情,list列表
        $result                  = $CompanyAddressInit->get_find($where, $params);
        if (empty($result)) $this->error("暂无数据");

        /** 数据格式转数组 **/
        $toArray = $result->toArray();
        foreach ($toArray as $k => $v) {
            $this->assign($k, $v);
        }

        return $this->fetch();
    }


    //驳回,更改状态
    public function audit_post()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        /** 更改数据条件 && 或$params中存在id本字段可以忽略 **/
        $where = [];
        if ($params['id']) $where[] = ['id', '=', $params['id']];


        /** 查询数据 **/
        $params["InterfaceType"] = "admin";//接口类型
        $params["DataFormat"]    = "find";//数据格式,find详情,list列表
        $item                    = $CompanyAddressInit->get_find($where);
        if (empty($item)) $this->error("暂无数据");

        /** 通过&拒绝时间 **/
        if ($params['status'] == 2) $params['pass_time'] = time();
        if ($params['status'] == 3) $params['refuse_time'] = time();

        /** 提交数据 **/
        $result = $CompanyAddressInit->edit_post_two($params, $where);
        if (empty($result)) $this->error("失败请重试");

        $this->success("操作成功");
    }

    //删除
    public function delete()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        if ($params["id"]) $id = $params["id"];
        if (empty($params["id"])) $id = $this->request->param("ids/a");

        /** 删除数据 **/
        $result = $CompanyAddressInit->delete_post($id);
        if (empty($result)) $this->error("失败请重试");

        $this->success("删除成功");//   , "index{$this->params_url}"
    }


    //批量操作
    public function batch_post()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param();

        $id = $this->request->param("id/a");
        if (empty($id)) $id = $this->request->param("ids/a");

        //提交编辑
        $result = $CompanyAddressInit->batch_post($id, $params);
        if (empty($result)) $this->error("失败请重试");

        $this->success("保存成功");//   , "index{$this->params_url}"
    }


    //更新排序
    public function list_order_post()
    {
        $CompanyAddressInit  = new \init\CompanyAddressInit();//地址管理   (ps:InitController)
        $CompanyAddressModel = new \initmodel\CompanyAddressModel(); //地址管理   (ps:InitModel)
        $params              = $this->request->param("list_order/a");

        //提交更新
        $result = $CompanyAddressInit->list_order_post($params);
        if (empty($result)) $this->error("失败请重试");

        $this->success("保存成功"); //   , "index{$this->params_url}"
    }


}
