<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo $con['app_title'].'免费下载|'.$con['app_title'].'手机版下载 - '.SITE_NAME;?></title>
    <script language="javascript" type="text/javascript" src="<?php echo SITE_PATH;?>templates/lib/jquery-1.7.1.min.js" ></script>
    <link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/style.css"  type="text/css" />
    <script type="text/javascript" src="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/js/comm.js"></script>
    <?php require_once ( 'inc_head.php');?>
    <p class="line-t-15"></p>
    <div class="warp-content"> <!-- 主体内容 开始 -->
        <div class="head-locate">
            <span>您当前位置：</span>
            <?php
            //exit(print_r($con));
            $nav = "";
            foreach($c->cate_father($con['last_cate_id']) as $n){
                $nav .= '<a href="'.$n['surl'].'">'.$n['cname'].'</a>&nbsp;>&nbsp;';
            }
            echo $nav;
            ?>
            <span><?php echo $con['app_title'];?></span>
        </div>
        <div class="marauto">
            <div class="l body-left"> <!-- 左侧主体内容 -->
                <iframe frameborder=0 width="100%" height="700px" marginheight=0 marginwidth=0  src="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/inc_chat.php?id=<?php echo $con['app_id'];?>">></iframe>
            </div><!-- 左侧主体内容  结束 -->
            <!--右侧内容-->
            <?php require_once (dirname(__FILE__) . '/inc_right.php');?>
        </div>
    </div> <!-- 主体内容 结束 -->
    <p class="line-t-15"></p>
    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=0" ></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
    </script>
    <?php require_once ('inc_foot.php');?>
