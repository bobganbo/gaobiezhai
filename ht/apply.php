<?php
/**
 * @name 进入圈子申请列表
 * Created by PhpStorm.
 * User: bo
 * Date: 2018/4/6
 * Time: 9:23
 */

/**
 * 加载核心文件类和公用方法函数
 */
require_once(dirname(__FILE__) . "/../core/init.php");

$time_start = helper :: getmicrotime(); //开始时间

$dbm = new db_mysql(); //数据库类实例

$page['get'] = $_GET; //get参数的 m 和 ajax 参数是默认占用的，一个用来执行动作函数，一个用来判断是否启用模板还是直接输出JSON格式数据
$page['post'] = $_POST;

check_admin(); //判断用户是否登录

/**
 * 页面动作 model 分支选择
 *    动作函数写在文件末尾，全部以前缀 m__ 开头
 */
$page['get']['m'] = isset($_GET['m'])?$_GET['m']:'list';

if (function_exists("m__" . $page['get']['m'])) {
    call_user_func("m__" . $page['get']['m']);
}
$time_end = helper :: getmicrotime(); //主程序执行时间，如果要包含模板的输出时间，则可以调用该静态时间方法单独计算
$page['data_fill_time'] = $time_end - $time_start;
$page['on'] = 6; //设置高亮的显示条

/**
 * 模板载入选择
 *    模板页面为PHP+HTML混合编写，如果模板页面中也有区块函数，模板函数以 tpl__ 为前缀
 */
if (!isset($page['get']['ajax']) || $page['get']['ajax'] == null || $page['get']['ajax'] == '') {
    $tpl_filename=str_replace('\\', '', str_replace(dirname(__FILE__), '', __FILE__));
    $tpl_filename=str_replace('/','',$tpl_filename);
    require(dirname(__FILE__) . '/templates/tpl_' . $tpl_filename);
} else {
    if ($page['get']['ajax'] == 'json') {
        echo json_encode($page);
    }
}

/**
 * 页面动作函数和其他函数
 */

/**
 * 获取列表
 */
function m__list() {
    global $page, $dbm;
    $p = isset($page['get']['p']) ? $page['get']['p'] : 1;
    // 判断是否需要查找
    $params['where'] = " 1=1";
    if (isset($page['get']['search_type']) && isset($page['get']['search_txt']) && !empty($page['get']['search_txt']) && !empty($page['get']['search_type'])) {
        if ($page['get']['search_type'] == 'title') {
            //圈子名称
            $where = " and  room_name like  '%" . $page['get']['search_txt'] . "%'" ;
            $params['where'] .= $where;
        } else {
            //玩家昵称
            $where = " and uname like '%" . $page['get']['search_txt'] . "%'" ;
            $params['where'] .= $where;
        }
    }

    $params['table_name'] = TB_PREFIX . "user_room_apply";
    $params['count'] = 1 ;
    $params['suffix'] = " order by id DESC ";
    $params['pagesize'] = PAGESIZE;
    $params['suffix'] .= $dbm -> get_limit_sql(PAGESIZE, $p);
    $applys = $dbm -> single_query($params);
    $page['applys'] = $applys;
}

/**
 * 删除选中
 */
function m__del() {
    global $page, $dbm;
    // 直接传过来的删除动作
    if (isset($page['post']['id'])) {
        $page['post']['params'] = $page['post']['id'];
    }
    if (empty($page['post']['params'])) die('{"code":"100","msg":"没有选中要删除的项"}');
    $ids = stripslashes($page['post']['params']);
    $ids = explode(',', $ids);
    $count = 0;
    foreach($ids as $id) {
        $id = intval($id);
        $where = " id = '" . $id . "'";
        $params['status'] = -1;
        $params['op_uid'] = -1;
        $params['op_time'] = time();
        $res = $dbm -> single_update(TB_PREFIX . "user_room_apply", $params, $where);
        if (!empty($res['error'])) continue;
        $count++;
    }
    die('{"code":"0","msg":"删除成功"}');
}
/**
 * 审核通过
 */
function m__pass() {
    global $page, $dbm;
    if (isset($page['post']['id'])) {
        $page['post']['params'] = $page['post']['id'];
    }
    if (empty($page['post']['params'])) die('{"code":"100","msg":"没有选中要删除的项"}');
    $ids = stripslashes($page['post']['params']);
    $ids = explode(',', $ids);
    $count = 0;
    foreach($ids as $id) {
        $id = intval($id);
        $where = " id = '" . $id . "'";
        $params['status'] = 1;
        $params['op_uid'] = -1;
        $params['op_time'] = time();
        $res = $dbm -> single_update(TB_PREFIX . "user_room_apply", $params, $where);
        if (!empty($res['error'])) continue;
        $sql = "SELECT * FROM ".TB_PREFIX."user_room_apply where id=".$id ;
        $res = $dbm->query($sql);
        if (is_array($res['list']) && count($res['list']) > 0) {
            $sql = "insert into ".TB_PREFIX . "user_room_map (`uid`,`roomid`) values('{$res['list'][0]['uid']}','{$res['list'][0]['room_id']}')";
            $dbm->query_insert($sql);
        }
        $count++;
    }
    $msg = "审核通过成功";
    die('{"code":"0","msg":"' . $msg . '"}');
}

/**
 * 审核不通过
 */
function m__nopass() {
    global $page, $dbm;
    if (isset($page['post']['id'])) {
        $page['post']['params'] = $page['post']['id'];
    }
    if (empty($page['post']['params'])) die('{"code":"100","msg":"没有选中要不通过的项"}');
    $ids = stripslashes($page['post']['params']);
    $ids = explode(',', $ids);
    $count = 0;
    foreach($ids as $id) {
        $id = intval($id);
        $where = " id = '" . $id . "'";
        $params['status'] = 2;
        $params['op_uid'] = -1;
        $params['op_time'] = time();
        $res = $dbm -> single_update(TB_PREFIX . "user_room_apply", $params, $where);
        if (!empty($res['error'])) continue;
        $count++;
    }
    $msg = "审核不通过成功";
    die('{"code":"0","msg":"' . $msg . '"}');
}

?>

