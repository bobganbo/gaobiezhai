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
$res = exec("/bin/ps -ef|/bin/grep '/data/htdocs/gaobiezhai/chat/index.php'|/bin/grep -v 'grep'");
if (empty($res)) {
    exec("/usr/local/php/bin/php /data/htdocs/gaobiezhai/chat/index.php >/dev/null  &");
}
