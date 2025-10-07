<?php

namespace api\wxapp\controller;

use initmodel\AssetModel;
use initmodel\MemberModel;

/**
 * @ApiController(
 *     "name"                    =>"Init",
 *     "name_underline"          =>"init",
 *     "controller_name"         =>"Init",
 *     "table_name"              =>"无",
 *     "remark"                  =>"基础接口,封装的接口"
 *     "api_url"                 =>"/api/wxapp/init/index",
 *     "author"                  =>"",
 *     "create_time"             =>"2024-04-24 17:16:22",
 *     "version"                 =>"1.0",
 *     "use"                     => new \api\wxapp\controller\InitController();
 *     "test_environment"        =>"http://meal.ikun:9090/api/wxapp/init/index",
 *     "official_environment"    =>"http://xcxkf207.aubye.com/api/wxapp/init/index",
 * )
 */
class InitController
{
    /**
     * 本模块,用于封装常用方法,复用方法
     */


    /**
     * 给上级发放佣金
     * @param $p_user_id 上级id
     * @param $child_id 子级id
     *                  http://xcxkf207.aubye.com/api/wxapp/init/send_invitation_commission?p_user_id=1
     */
    public function sendInvitationCommission($p_user_id = 0, $child_id = 0)
    {
        //邀请佣金
        $price  = cmf_config('invitation_rewards');
        $remark = "操作人[邀请奖励];操作说明[邀请好友得佣金];操作类型[佣金奖励];";//管理备注

        AssetModel::incAsset('邀请注册奖励,给上级发放佣金 [120]', [
            'operate_type'  => 'balance',//操作类型，balance|point ...
            'identity_type' => 'member',//身份类型，member| ...
            'user_id'       => $p_user_id,
            'price'         => $price,
            'order_num'     => cmf_order_sn(),
            'order_type'    => 120,
            'content'       => '邀请奖励',
            'remark'        => $remark,
            'order_id'      => 0,
            'child_id'      => $child_id
        ]);

        return true;
    }




    /**
     * 订单完成,发放佣金
     * @param $order_num
     */
    public function sendShopOrderAccomplish($order_num)
    {
        $ShopOrderModel      = new \initmodel\ShopOrderModel();//订单管理
        $MemberModel         = new \initmodel\MemberModel();//用户管理



        $map        = [];
        $map[]      = ['order_num', '=', $order_num];
        $order_info = $ShopOrderModel->where($map)->find();
        if (empty($order_info)) return false;




        //查询上级
        $p_user_id = $MemberModel->where('id', '=', $order_info['user_id'])->value('pid');
        if ($p_user_id && $order_info['commission']) {
            $remark = "操作人[下单得佣金];操作说明[下单得佣金];操作类型[下单得佣金];";//管理备注
            AssetModel::incAsset('下单得佣金,给上级发放佣金 [120]', [
                'operate_type'  => 'balance',//操作类型，balance|point ...
                'identity_type' => 'member',//身份类型，member| ...
                'user_id'       => $p_user_id,
                'price'         => $order_info['commission'],
                'order_num'     => $order_num,
                'order_type'    => 120,
                'content'       => '商城下单奖励',
                'remark'        => $remark,
                'order_id'      => $order_info['id'],
            ]);

            //查询上上级
            $sp_user_id = $MemberModel->where('id', '=', $p_user_id)->value('pid');
            if ($sp_user_id && $order_info['commission2']) {
                $remark = "操作人[下单得佣金];操作说明[下单得佣金];操作类型[下单得佣金];";//管理备注
                AssetModel::incAsset('下单得佣金,给上级发放佣金 [130]', [
                    'operate_type'  => 'balance',//操作类型，balance|point ...
                    'identity_type' => 'member',//身份类型，member| ...
                    'user_id'       => $sp_user_id,
                    'price'         => $order_info['commission2'],
                    'order_num'     => $order_num,
                    'order_type'    => 130,
                    'content'       => '商城下单奖励',
                    'remark'        => $remark,
                    'order_id'      => $order_info['id'],
                ]);
            }
        }

        return true;
    }



    /**
     * 获取所有子级ID（递归方法）
     * @param int    $pid      父级ID
     * @param array &$childIds 用于存储结果的数组
     * @return array
     */
    public function getAllChildIds($pid, &$childIds = [])
    {
        $MemberModel = new \initmodel\MemberModel();


        // 查询直接子级
        $map      = [];
        $map[]    = ['pid', '=', $pid];
        $map[]    = ['is_show', '=', 1];
        $children = $MemberModel->where($map)->column('id');

        if (!empty($children)) {
            foreach ($children as $childId) {
                $childIds[] = $childId;
                // 递归查询子级的子级
                $this->getAllChildIds($childId, $childIds);
            }
        }

        return $childIds;
    }

}