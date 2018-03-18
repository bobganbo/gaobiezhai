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
                <div class="bor-sty bg-fff bout-content app-info">
                    <div class="app-info-i">
                        <a href="<?php echo $con['surl']?>" class="l rank-img"><img src="<?php echo $con['app_logo']?>" border="0" alt=""></a>
                        <div class="app-info-n">
                            <a class="app-title" href="<?php echo $con['surl'];?>"><b><?php echo $con['app_title'];?></b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="col-94 download-num">点击： <?php echo $con['app_visitors'];?></span>
                            <ul class="level"><li class="l<?php echo ceil($con['app_recomment']/2);?>"></li></ul>
                        </div>
                        <br /><br />
                        <div class="detailed-info">
                            <span>类型：<?php echo $con['app_type'];?></span>
                            <span>创建日期：<?php echo date("Y-m-d",$con['app_update_time']);?></span>
                            <span>剩余时间：<?php echo $con['app_version'];?></span>
                            <span>创建者：<?php echo $con['app_company'];?></span>
                        </div>
                    </div>

                    <div class="open">
                        <span class="info-and-download" style="float: left;margin-left: 26px;width: 100px;height: 50px;"><a class="dwd">申请加入</a></span>
                    </div>
                    <p class="hr"></p>
                    <div class="introduce">
                        <h3><b><?php echo $con['app_title']; ?> 圈子介绍</b></h3>
                        <br />
                        <p class="in-info">
                            <?php echo $con['app_desc']; ?>
                        </p>
                        <p class="line-t-25"></p>
                        <h3><b><?php echo $con['app_title']; ?> 圈子截图</b></h3>
                        <br />
                        <div class="scrbg">
                        <div class="screen-img">
                            <center>
                                <p class="line-t-25"></p>
                                <?php if(!empty($con['resource'])){foreach( $con['resource'] as $k => $v){?>
                                    <img src="<?php echo $v['resource_url']; ?>" onload="this.width > 600 ? this.width=600 : this.width" border="0" alt="<?php echo $con['app_title']; ?>" style="margin-bottom:10px;">
                                <?php } }?>
                                <p class="line-t-10"></p>
                            </center>
                        </div>
                        </div>
                    </div>
                    <div class="comment">
                        <?php /*echo $con['comment_code'];*/?>
                    </div>

                </div>
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
