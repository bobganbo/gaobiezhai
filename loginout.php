<?php
/**
 * @name xxx
 * Created by PhpStorm.
 * User: bo
 * Date: 2018/3/26
 * Time: 21:43
 */

require_once(dirname(__FILE__) . "/core/init.php");
require_once (dirname(__FILE__) ."/core/lib/LibUtil.class.php");
require_once (dirname(__FILE__) ."/core/lib/LibAuth.class.php");


LibAuth::clearUserCookie();

$data = array(
    'code' => 1,
    'msg' => 'success',
    'data' => ''
);

echo json_encode($data);