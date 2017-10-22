<?php
/**
 * 登录模块
 */
require_once(dirname(__FILE__) . "/core/init.php");
require_once (dirname(__FILE__) ."/core/lib/LibUtil.class.php");
require_once (dirname(__FILE__) ."/core/lib/LibAuth.class.php");
require_once (dirname(__FILE__) ."/core/lib/LibVcode.class.php");

// 预防XSS漏洞
foreach ($_GET as $k => $v) {
    $_GET[$k] = LibUtil::getStr($v);
}
foreach ($_POST as $k => $v) {
    $_POST[$k] = LibUtil::getStr($v);
}
$dbm = new db_mysql();
$uname = $_POST['username'];
$pwd = $_POST['password'];
//$pwd = md5($_POST['password']);
$vcode = $_POST['vcode'];//图片验证码

if(!LibVcode::verify($vcode)){
    //echo json_encode(array('code'=>0,'msg'=>'请输入正确的验证码','data'=>''));
    //exit;
}
$data = array(
    'code' => 0,
    'msg' => 'fail',
    'data' => ''
);

$sql = "SELECT * FROM " . TB_PREFIX . "user WHERE uname = '{$uname}' AND pwd = '{$pwd}' LIMIT 1";
$res = $dbm->query($sql);
//登录成功
if($res['list']){
    $data['code'] = 1;
    $data['msg'] = 'success';
    LibAuth::setUserCookie($res['list'][0]);
    echo json_encode($data);
    exit;
}
echo json_encode($data);








