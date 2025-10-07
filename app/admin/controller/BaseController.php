<?php

namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\facade\Db;


error_reporting(0);


class BaseController extends AdminBaseController
{

    /**
     * @var \app\common\model\Base
     */
    protected $model      = null;
    protected $where      = [];
    public    $admin_info = null;


    public function initialize()
    {
        parent::initialize();
        //管理员信息
        $this->admin_info = $this->get_admin_info(cmf_get_current_admin_id());
    }

    /**
     * 获取用户信息
     * @param $user_id 用户id
     * @return mixed
     */
    public function get_user_info($user_id)
    {
        $MemberModel = new \initmodel\MemberModel();//用户管理

        $item = $MemberModel->where('id', '=', $user_id)->find();
        if ($item) $item['avatar'] = cmf_get_asset_url($item['avatar']);
        return $item;
    }


    /**
     * 获取管理员信息
     * @param $user_id 用户id
     * @return mixed
     */
    public function get_admin_info($user_id)
    {
        $AdminUserInit = new \init\AdminUserInit();//管理员    (ps:InitController)
        $item          = $AdminUserInit->get_find($user_id);
        return $item;
    }


    /**
     * 获取时间区间值
     * @param $begin      开始时间 2022-11-1 15:53:55
     * @param $end        结束时间 2022-11-1 15:53:55
     * @param $Field      筛选时间字段名
     * @return array   [$beginField, 'between', [$beginTime, $endTime]];
     */
    public function getBetweenTime($begin = '', $end = '', $Field = 'create_time')
    {
        $where[] = [$Field, 'between', [0, 999999999999]];

        if (!empty($begin)) {
            unset($where);
            $beginTime = strtotime($begin);//默认 00:00:00
            $where[]   = [$Field, 'between', [$beginTime, 999999999999]];
        }

        if (!empty($end)) {
            unset($where);
            $strlen = strlen($end);
            if ($strlen > 10) $endTime = strtotime($end);//传入 年月日,时分秒不用转换
            if ($strlen <= 10) $endTime = strtotime($end . '23:59:59');//传入 年月日,年月  拼接时分秒
            $where[] = [$Field, 'between', [0, $endTime]];
        }

        if (!empty($begin) && !empty($end)) {
            unset($where);
            $beginTime = strtotime($begin);
            $strlen    = strlen($end);
            if ($strlen > 10) $endTime = strtotime($end);
            if ($strlen <= 10) $endTime = strtotime($end . '23:59:59');//传入 年月日,年月  拼接时分秒
            $where = [$Field, 'between', [$beginTime, $endTime]];
        }
        return $where;
    }



    /**
     * 获取唯一单号,或者唯一code
     * @param $table_name 表名
     * @param $field_name 字段名
     * @param $length     长度 订单号类型,默认16位,原有长度-6位
     * @param $type       1:数子 2:数字+字母 3:纯数字 4:纯字母
     */
    protected function get_only_num($table_name, $field_name = 'order_num', $length = 8, $type = 1)
    {
        if ($type == 1) $only_num = cmf_order_sn($length - 6);//订单号,默认16位,原有长度-6位
        if ($type == 2) $only_num = cmf_random_string($length);
        if ($type == 3) $only_num = $this->generatePureNumber($length);
        if ($type == 4) $only_num = $this->generatePureLetters($length);
        $is = Db::name("$table_name")->where($field_name, '=', $only_num)->count();
        if ($is) $this->get_only_num($table_name);
        return $only_num;
    }



    /**
     * 生成纯字母
     * @param $length
     * @return string
     */
    protected function generatePureLetters($length)
    {
        $letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $result  = '';
        for ($i = 0; $i < $length; $i++) {
            $result .= $letters[rand(0, strlen($letters) - 1)];
        }
        return $result;
    }

    /**
     * 生成纯数字
     * @param $length
     * @return string
     */
    protected function generatePureNumber($length)
    {
        $digits = '0123456789';
        $result = '';
        for ($i = 0; $i < $length; $i++) {
            $result .= $digits[rand(0, strlen($digits) - 1)];
        }
        return $result;
    }

}
