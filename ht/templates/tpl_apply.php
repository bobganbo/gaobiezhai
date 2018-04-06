<?php require_once(dirname(__FILE__).'/inc_header.php');?>
<script language="javascript" type="text/javascript" src="templates/css/js/apply.js" ></script>
<script>

</script>
<?php require_once(dirname(__FILE__).'/inc_top.php');?>
<?php require_once(dirname(__FILE__)."/inc_menu.php");?>

<!-- 右侧区域开始 -->
<div class="right_body">
    <!-- 当前位置开始 -->
    <div class="snav">您的位置：<a href="frame.php">管理首页</a> » 申请列表</div><!-- 当前位置结束 -->
    <!-- 右侧主体内容开始 -->
    <div class="mbody">
        <div class="mt10 clearfix">
            <div class="l">
                <?php if($page['get']['type']=="0"){
                    $type="type=0";
                }else if( $page['get']['type']=="1" ){
                    $type="type=1";
                }?>
                <a href="javascript:void(0);" class="but2" onclick="C.form.batch_modify('apply.php?m=pass','.cklist');">审核通过选中</a>
                <a href="javascript:void(0);" class="but2" onclick="C.form.batch_modify('apply.php?m=nopass','.cklist');">审核不通过选中</a>
                <a href="javascript:void(0);" class="but2" onclick="C.form.batch_modify('apply.php?m=del','.cklist');">删除选中</a>
            </div>
            <div class="r">
                <div class="select-box l">
                    <div class="select-wrap">
                        <select id="search_type" class="search_type">
                            <option value="title">圈子标题</option>
                            <option value="nickname">玩家昵称</option></select>
                    </div>
                </div>
                <div class="l">
                    <input type="txt" id="search_txt" class="ipt seachIpt" onkeydown="if(event.keyCode==13) search_submit('apply.php?<?php echo $type?>');" />&nbsp;
                    <a href="javascript:void(0);" class="but2 mr0" onclick="search_submit('apply.php?<?php echo $type?>');" >查 询</a>
                </div>
            </div>
        </div>
        <div>
            <form action="" name="form_order" method="post">
                <table class="tb mt10">
                    <tr>
                        <th width="80"><a href="javascript:void(0);" onclick="C.form.check_all('.cklist');">全选/反选</a></th>
                        <th width="50">ID</th>
                        <th align='center' width="200">圈子标题</th> <!-- class="alignleft" -->
                        <th align='center' width="150">用户昵称</th>
                        <th width="200">申请时间</th>
                        <th width="80">审核状态</th>
                        <th width="200"></th>
                    </tr>
                    <?php
                    if(!empty($page['applys']['list'])){
                        foreach ($page['applys']['list'] as $kn => $vn){
                            ?>
                            <tr>
                                <td><input type="checkbox" class="cklist" value="<?php echo $vn['id']; ?>" /></td>
                                <td><?php echo $vn['id']; ?></td>
                                <td><?php echo $vn['room_name']; ?></td>
                                <td><?php echo $vn['uname']; ?></td>
                                <td><?php echo date("Y-m-d H:i:s",$vn['apply_time']); ?></td>
                                <td><?php if($vn['status'] ==1)
                                         {echo '通过';}elseif($vn['status'] ==0){echo "待审核";}elseif($vn['status'] ==2){echo "不通过";} ?></td>
                                <td>
                                    <a class="but2 but2s" href="javascript:void(0);" onClick="apply_action('apply.php?ajax=json&m=pass',<?php echo $vn['id'] ?>);">审核通过</a>
                                    <a class="but2 but2s" href="javascript:void(0);" onClick="apply_action('apply.php?ajax=json&m=nopass',<?php echo $vn['id'] ?>);">审核不通过</a>
                                    <a class="but2 but2s" href="javascript:void(0);" onClick="apply_action('apply.php?ajax=json&m=del',<?php echo $vn['id'] ?>);">删除</a>
                                </td>
                            </tr>
                        <?php
                        }
                    }
                    ?>
                </table>
            </form>

            <div class="pagebar clearfix">
                <?php if(!empty($page['applys']['pagebar']['pagecode'])) echo($page['applys']['pagebar']['pagecode']); ?>
            </div>
        </div>

    </div><!-- 右侧主体内容结束 -->

    <?php require_once(dirname(__FILE__)."/inc_footer.php");?>

</div><!-- 右侧区域结束 -->
</body>
</html>