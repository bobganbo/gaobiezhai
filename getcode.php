<?php
ini_set('display_errors',1);            //错误信息  
ini_set('display_startup_errors',1);    //php启动错误信息  
error_reporting(-1);                    //打印出所有的 错误信息  
if (!session_id()) session_start();
require_once(dirname(__FILE__)."/core/imgcode.class.php");
//echo "cc";die;
$name=(!isset($_GET['c']) || $_GET['c']=='')?'login':$_GET['c'];
if($name=='login' || $name=='reg' || $name='feedback'){
    Image::buildImageVerify(5, 2, 'png', 60, 32, $name);
}
?>
