<?php

namespace app\admin\controller;


/**
 * @adminMenuRoot(
 *     "name"                =>"Statistics",
 *     "name_underline"      =>"statistics",
 *     "controller_name"     =>"Statistics",
 *     "table_name"          =>"statistics",
 *     "action"              =>"default",
 *     "parent"              =>"",
 *     "display"             => true,
 *     "order"               => 10000,
 *     "icon"                =>"none",
 *     "remark"              =>"统计管理",
 *     "author"              =>"",
 *     "create_time"         =>"2025-10-12 10:18:28",
 *     "version"             =>"1.0",
 *     "use"                 => new \app\admin\controller\StatisticsController();
 * )
 */


use think\facade\Db;
use cmf\controller\AdminBaseController;


class StatisticsController extends AdminBaseController
{


    /**
     * 首页列表数据
     * @adminMenu(
     *     'name'             => 'Statistics',
     *     'name_underline'   => 'statistics',
     *     'parent'           => 'index',
     *     'display'          => true,
     *     'hasView'          => true,
     *     'order'            => 10000,
     *     'icon'             => '',
     *     'remark'           => '统计管理',
     *     'param'            => ''
     * )
     */
    public function index()
    {
        $MemberModel    = new \initmodel\MemberModel();//用户管理
        $ShopOrderModel = new \initmodel\ShopOrderModel();//订单管理


        $params = $this->request->param();


        //数量统计
        $member_count = $MemberModel->count();


        $map         = [];
        $map[]       = ['status', 'in', [2, 4, 6, 8]];
        $order_count = $ShopOrderModel->where($map)->count();


        $order_total = $ShopOrderModel->where($map)->sum('amount');
        $this->assign("member_count", $member_count);
        $this->assign("order_count", $order_count);
        $this->assign("order_total", $order_total);

        // 初始化日期范围数组
        $begin_time = $params['begin_time'];
        $end_time   = $params['end_time'];

        if ($begin_time) $begin_time = strtotime($begin_time);
        if ($end_time) $end_time = strtotime($end_time);


        $startDate  = $begin_time ?? strtotime('-1 month');
        $endDate    = $end_time ?? strtotime('now');
        $day_list   = [];
        $count_list = [];

        // 初始化每日注册量 - 用户注册
        $tempDate = $startDate;
        while ($tempDate <= $endDate) {
            $date         = date('Y-m-d', $tempDate);
            $tempDate     = strtotime('+1 day', $tempDate);
            $day_list[]   = $date; //日期
            $count_list[] = $MemberModel->where('create_time', 'between', [strtotime($date . ' 00:00:00'), strtotime($date . ' 23:59:59')])->count();
        }
        $xAxis_data  = json_encode([
            'type'     => 'category',
            'data'     => $day_list,
            'axisTick' => ['alignWithLabel' => true],
        ]);
        $series_data = json_encode([
            'name'     => '用户注册增长',
            'type'     => 'bar',
            'barWidth' => '60%',
            'data'     => $count_list,
        ]);

        $this->assign('xAxis_data', $xAxis_data);
        $this->assign('series_data', $series_data);


        // 订单金额
        $tempDate = $startDate;
        while ($tempDate <= $endDate) {
            $date          = date('Y-m-d', $tempDate);
            $tempDate      = strtotime('+1 day', $tempDate);
            $day_list[]    = $date; //日期
            $count2_list[] = $ShopOrderModel->where('status', 'in', [2, 4, 6, 8])->where('create_time', 'between', [strtotime($date . ' 00:00:00'), strtotime($date . ' 23:59:59')])->sum('amount');
        }
        $series2_data = json_encode([
            'name'     => '订单金额',
            'type'     => 'bar',
            'barWidth' => '60%',
            'data'     => $count2_list,
        ]);
        $this->assign('xAxis2_data', $xAxis_data);
        $this->assign('series2_data', $series2_data);


        //时间回显
        $this->assign('begin_time', date('Y-m-d', $startDate));
        $this->assign('end_time', date('Y-m-d', $endDate));

        return $this->fetch();
    }


}
