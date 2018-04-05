<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $c->categories[$cid]['cname'].'-'.SITE_NAME;?></title>
<script language="javascript" type="text/javascript" src="<?php echo SITE_PATH;?>templates/lib/jquery-1.7.1.min.js" ></script>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/style.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/js/comm.js"></script>
<?php require_once ("inc_head.php")  ;?>
    <div class="warp-content"> <!-- 主体内容 开始 -->
        <div class="marauto">
            <div class="locate">
                 <span>类别：
                 <?php 
                    if(intval($c->categories[$cid]['parent_id'])>0){
                        echo('<a href="'.$c->categories[$c->categories[$cid]['parent_id']]['surl'].'" '.$style.'>全部</a>');
                    }else{
                        echo('<a href="'.$c->categories[$cid]['surl'].'" '.$style.'>全部</a>');
                    }
                    if($c->categories[$cid]['parent_id']==0){
                        $a=$c->cate_son($cid);
                    }else{
                        $a=$c->cate_son($c->categories[$cid]['parent_id']);
                    }
                    foreach($a as $b){
                        $style='';
                        if($b['cate_id'] == $cid) $style='class="loc-selected"';
                        echo('<a href="'.$b['surl'].'" '.$style.'>'.$b['cname'].'</a>');
                    }
                 ?>
                 </span>
            </div>
            <p class="line-t-10"></p>
            <div class="l body-left"> <!-- 左侧主体内容 -->
                <div class="pr zIndex10 tab-content">
                    <div class="bor-sty bg-fff">
                    <?php $lists = $c->get_list(array('pagesize'=>PAGESIZE,'count'=>1,'cate_id'=>$cid,'rewrite'=>SITE_REWRITEURL,'p'=>$p));
                    ?>
                        <div class="app-list boutique-cnt">
                        <?php if(!empty($lists['list'])){foreach($lists['list'] as $key=> $val){?>
                          <div class="app-cnt">     
                            <a href="<?php echo $val['surl']; ?>" class="l app-ico"><img src="<?php echo $val['app_logo']; ?>" border="0" alt="<?php echo $val['app_title']; ?>"></a>
                            <div class="app-info">
                                <div style="width:100%;">
                                    <a class="app-title" href="<?php echo $val['surl']; ?>"><?php echo $val['app_title']; ?></a>
                                    <ul class="level" ><li class="<?php echo "l".ceil($val['app_recomment']/2); ?>"></li></ul>
                                </div>
                                <span class="app-describe">
                                    <?php echo helper::utf8_substr($val['app_desc'],0,70);?>
                                </span>
                                <p class="app-data">
                                    <span>发布时间：&nbsp;&nbsp;<em><?php echo date("Y-m-d",$val['start_time']);?></em></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span>剩余时间：&nbsp;&nbsp;<em><?php echo LibUtil::STSH($val['end_time']); ?></em></span>
                                </p>
                            </div>
                            <div class="app-btn">
                                <a class="btn-down" href="<?php echo $val['surl']; ?>">申请加入</a>
                                <br /><br />
                                <span>访问:<em><?php echo $val['app_down']; ?>次</em></span>
                            </div>
                          </div>
                          <?php } }else{ echo '<div class="h788"><span>没有找到数据</span></div>';}?>
                        </div>
                        <div class="pagebar">
                            <?php if(!empty($lists['list']))echo $lists['pagebar']['pagecode']?>
                        </div>
                        <P class="line-t-15"></p> 
                    </div>
                </div>
                
            </div><!-- 左侧主体内容  结束 -->
            <?php require_once (dirname(__FILE__) . '/inc_right.php');?>
            <!-- 右侧主体内容  结束 -->
        </div>
    </div> <!-- 主体内容 结束 -->
    <p class="line-t-15"></p>
    
    <?php require_once ('inc_foot.php');?>