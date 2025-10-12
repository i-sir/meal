<?php
// +----------------------------------------------------------------------
// | Copyright (c) 2017-2018 http://www.wuwuseo.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: wuwu <15093565100@163.com>
// +----------------------------------------------------------------------
namespace plugins\fe_print;

use cmf\lib\Plugin;
use plugins\fe_print\lib\HttpClient;

//以下参数不需要修改
define('IP', 'api.feieyun.cn');      //接口IP或域名
define('PORT', 80);            //接口IP端口
define('PATH', '/Api/Open/');    //接口路径

class FePrintPlugin extends Plugin
{

    public $info = array(
        'name'        => 'FePrint',
        'title'       => '飞蛾打印',
        'description' => '飞蛾打印面单',
        'status'      => 1,
        'author'      => 'wjb',
        'datetime'    => '2023-03-12',
        'version'     => '1.0'
    );

    public $has_admin = 0;//插件是否有后台管理界面

    public function install()
    {
        return true;//安装成功返回true，失败false
    }

    public function uninstall()
    {
        return true;//卸载成功返回true，失败false
    }

    /**
     * [打印订单接口 Open_printMsg]
     * @param string $sn      [打印机编号sn]
     * @param string $content [打印内容]
     * @param int    $times   [打印联数]
     * @return array          [接口返回值]
     */
    function InfoPrint(string $sn, string $content, int $times = 1): array
    {
        $config = $this->getConfig();

        //根据打印纸张的宽度，自行调整内容的格式，可参考下面的样例格式
        /*$content = '<CB>测试打印</CB><BR>';
        $content .= '名称　　　　　 单价  数量 金额<BR>';
        $content .= '--------------------------------<BR>';
        $content .= '饭　　　　　 　10.0   10  100.0<BR>';
        $content .= '炒饭　　　　　 10.0   10  100.0<BR>';
        $content .= '蛋炒饭　　　　 10.0   10  100.0<BR>';
        $content .= '鸡蛋炒饭　　　 10.0   10  100.0<BR>';
        $content .= '西红柿炒饭　　 10.0   10  100.0<BR>';
        $content .= '西红柿蛋炒饭　 10.0   10  100.0<BR>';
        $content .= '西红柿鸡蛋炒饭 10.0   10  100.0<BR>';
        $content .= '--------------------------------<BR>';
        $content .= '备注：加辣<BR>';
        $content .= '合计：xx.0元<BR>';
        $content .= '送货地点：广州市南沙区xx路xx号<BR>';
        $content .= '联系电话：13888888888888<BR>';
        $content .= '订餐时间：2014-08-08 08:08:08<BR>';
        $content .= '<QR>http://www.feieyun.com</QR>';//把二维码字符串用标签套上即可自动生成二维码*/

        $time    = time();         //请求时间
        $msgInfo = [
            'user'    => $config['user_id'],
            'stime'   => $time,
            'sig'     => $this->signature($time),
            'apiname' => 'Open_printMsg',
            'sn'      => $sn,
            'content' => $content,
            'times'   => $times//打印次数
        ];
        $client  = new HttpClient(IP, PORT);
        if (!$client->post(PATH, $msgInfo)) {
            $result = ['code' => 0, 'msg' => $client->getError(), 'data' => ''];
        } else {
            $data   = json_decode($client->getContent(), true);
            $result = ['code' => 1, 'msg' => '打印成功！', 'data' => $data];
        }
        return $result;
    }

    /**
     * [标签机打印订单接口 Open_printLabelMsg]
     * @param string $sn      [打印机编号sn]
     * @param string $content [打印内容]
     * @param int    $times   [打印联数]
     * @return array          [接口返回值]
     */
    function LabelPrint(string $sn, string $content, int $times = 1): array
    {
        $config = $this->getConfig();

        //$content = "<DIRECTION>1</DIRECTION>";//设定打印时出纸和打印字体的方向，n 0 或 1，每次设备重启后都会初始化为 0 值设置，1：正向出纸，0：反向出纸，
        //$content .= "<TEXT x='9' y='10' font='12' w='1' h='2' r='0'>#001       五号桌      1/3</TEXT><TEXT x='80' y='80' font='12' w='2' h='2' r='0'>可乐鸡翅</TEXT><TEXT x='9' y='180' font='12' w='1' h='1' r='0'>张三先生       13800138000</TEXT>";//40mm宽度标签纸打印例子，打开注释调用标签打印接口打印

        $time    = time();         //请求时间
        $msgInfo = [
            'user'    => $config['user_id'],
            'stime'   => $time,
            'sig'     => $this->signature($time),
            'apiname' => 'Open_printLabelMsg',
            'sn'      => $sn,
            'content' => $content,
            'times'   => $times//打印次数
        ];
        $client  = new HttpClient(IP, PORT);
        if (!$client->post(PATH, $msgInfo)) {
            $result = ['code' => 0, 'msg' => $client->getError(), 'data' => ''];
        } else {
            $data = json_decode($client->getContent(), true);
            if ($data['ret'] == 0) {
                $result = ['code' => 1, 'msg' => '打印成功！', 'data' => $data];
            } else {
                $result = ['code' => 0, 'msg' => $data['msg'], 'data' => ''];
            }
        }
        return $result;
    }

    /**
     * [批量添加打印机接口 Open_printerAddlist]
     * @param string $printerContent [打印机的sn#key]
     * @return array                 [接口返回值]
     */
    function PrinterAdd(string $printerContent): array
    {
        $config = $this->getConfig();

        //$printerConten => 打印机编号sn(必填) # 打印机识别码key(必填) # 备注名称(选填) # 流量卡号码(选填)，多台打印机请换行（\n）添加新打印机信息，每次最多100台。

        $time    = time();         //请求时间
        $msgInfo = [
            'user'           => $config['user_id'],
            'stime'          => $time,
            'sig'            => $this->signature($time),
            'apiname'        => 'Open_printerAddlist',
            'printerContent' => $printerContent
        ];
        $client  = new HttpClient(IP, PORT);
        if (!$client->post(PATH, $msgInfo)) {
            $result = ['code' => 0, 'msg' => $client->getError(), 'data' => ''];
        } else {
            $data = json_decode($client->getContent(), true);
            if ($data['ret'] == 0) {
                $result = ['code' => 1, 'msg' => '打印成功！', 'data' => $data];
            } else {
                $result = ['code' => 0, 'msg' => json_encode($data['data']['no']), 'data' => ''];
            }
        }
        return $result;
    }

    /**
     * [signature 生成签名]
     * @param  [string] $time [当前UNIX时间戳，10位，精确到秒]
     * @return string [string]       [接口返回值]
     */
    function signature($time): string
    {
        $config = $this->getConfig();
        return sha1($config['user_id'] . $config['user_key'] . $time);//公共参数，请求公钥
    }
}
