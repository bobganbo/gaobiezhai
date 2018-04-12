<?php
/**
 * 注册模块
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
$uname = addslashes($_POST['username']);
$pwd = addslashes($_POST['password']);
$email = $_POST['email'];
//$pwd = md5($_POST['password']);
$vcode = $_POST['vcode'];//图片验证码

//验证码检测
if(!LibVcode::verify($vcode)){
    //echo json_encode(array('code'=>0,'msg'=>'请输入正确的验证码','data'=>''));
    //exit;
}

//邮箱地址检测
if(!LibUtil::checkEmail($email)){

    echo json_encode(array('code'=>0,'msg'=>'请输入正确的邮箱地址','data'=>''));
    exit;
}

$data = array(
    'code' => 0,
    'msg' => 'fail',
    'data' => ''
);

$sql  = "INSERT INTO ".TB_PREFIX."user (uname,pwd,email) VALUES('{$uname}','{$pwd}','{$email}')";
$res = $dbm->query_insert($sql);

//注册成功
if($res['autoid']){
    $data['code'] = 1;
    $data['msg'] = 'success';
    $userInfo = array(
       'uname' => $uname,
       'id' => $res['autoid']
    );
    LibAuth::setUserCookie($userInfo);
    echo json_encode($data);
    exit;
}
echo json_encode($data);