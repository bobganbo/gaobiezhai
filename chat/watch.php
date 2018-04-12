<?php
/**
 * @name xxx
 * Created by PhpStorm.
 * User: bo
 * Date: 2018/4/5
 * Time: 17:25
 */
if (PHP_SAPI != 'cli') {
    exit('Access denied.');
}
$res = exec("ps -ef | grep '/gaobiezhai/chat/index.php'| grep -v 'grep' ");

print_r($res);
if (empty($res)) {
    exec("/usr/local/php/bin/php /data/htdocs/gaobiezhai/chat/index.php >/dev/null  &");
}
