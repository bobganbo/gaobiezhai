<!--<link href="/templates/default/css/loginDialog.css?v=4.1.19" rel="stylesheet">-->
<link href="/templates/default/css/login/style.css?v=4.1.12" rel="stylesheet">
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/lib/common.js"></script>
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/lib/search.js"></script>
<script type="text/javascript">
/*搜索*/
function do_search(){
    var searchvalue = $("#seach-txt").val();
    if(searchvalue==''){return false;}
    window.location.href="<?php echo SITE_PATH?>index.php?tpl=search&q="+encodeURIComponent(searchvalue);
}
</script>
</head>
<body>
<div class="warp">
    <div class="warp-top"> <!-- 顶部  开始-->
        <div class="top-bar-area">
            <div class="marauto">
               <div class="l bar-left" style="color:#aaa;">
                    <a class="web-name" href="<?php echo SITE_URL;?>"><?php echo SITE_NAME;?></a>&nbsp;&nbsp;&nbsp;&nbsp;<?php $a=$c->get_app_info_count();echo('圈子：'.$a['app_total'].' 当日：'.$a['app_today'].' 资讯：'.$a['info_total'].' 当日：'.$a['info_today'].' '); ?>
                </div>
                <div class="r bar-right ">
                    <a href="javascript:void(0);" onclick="C.fav('<?php echo SITE_NAME;?>','<?php echo SITE_URL;?>');" id="collecttion">收藏本站</a>&nbsp;&nbsp;&nbsp;
                    <a href="javascript:void(0);" onclick="C.sethome('<?php echo SITE_URL;?>');" id="home-page">设为首页</a>&nbsp;&nbsp;&nbsp;

                    <span class="main-nav2">
                         <!--未登录-->
                         <a href="javascript:void(0);"  class="cd-signin no-login" id="login2">登录</a>
                    </span>
                    <!--已登录-->
                    <a href="javascript:void(0);" class="login" style="display: none;color:blue;"></a>

                </div>
          </div>
        </div>
        <div class="top-head">
            <div class="marauto">
                <a href="javascript:void(0);" class="l web-logo"><?php if(defined('SITE_LOGO') && SITE_LOGO != ''){ echo '<img border="0" src="'.SITE_LOGO.'" style="width:100px;height:100px;" >';}?></a>
                <ul class="r head-seach">
                    <li class="seach-bar">
                        <p class="bdr-span">
                            <input type="text" class="l seach-txt" id="seach-txt" onkeyup="search_up(this,event)" onclick="show_hot(this);" onkeydown="search_down(this,event); if(event.keyCode==13) do_search();" value="<?php if(isset($_GET['q'])) echo $_GET['q'];?>"/>
                            <a href="javascript:void(0);" class="l seach-btn" onClick="do_search()">搜圈子</a>
							
                        </p>
                    </li>
					<li class="keyword">
						热门搜索：
                        <?php foreach ($c -> get_keyword() as $v) { ?>
                        <a href="/index.php?tpl=search&q=<?php echo $v;?>"><?php echo $v;?></a>
                        <?php } ?>
					</li>
                </ul>
            </div>
        </div>
        <div class="top-nav">
            <div class="pr marauto">
                <ul class="ul-nav">
                    <li><a href="<?php echo SITE_PATH;?>" <?php if($cid<=0 && !strstr($_SERVER['QUERY_STRING'],'special') && !isset($topid) && !strstr($_SERVER['QUERY_STRING'],'lastupdate')) echo 'class="selected"';?>>首页</a></li>
                    <?php //print_r($c->categories);
                        foreach($c->categories as $a){
                            if($a['parent_id']=='0'){//只输出顶级分类
                                $style='';
                                if((intval($cid)>0 && ($a['cate_id'] == $cid || $a['cate_id']==$c->categories[$cid]['parent_id'])) || (isset($topid) && $topid == $a['cate_id'])) $style='class="selected"';
                               if($a['cat_show'] == 1) echo('<li><a href="'.$a['surl'].'" '.$style.'>'.$a['cname'].'</a></li>');
                            }
                        }
                    ?>
                </ul>
            </div>
        </div>

        <!--<div id="LoginBox">
            <div class="row1">
                登录窗口<a href="javascript:void(0)" title="关闭窗口" class="close_btn" id="closeBtn">×</a>
            </div>
            <div class="row">
                用户名: <span class="inputBox">
                <input type="text" id="txtName" placeholder="账号/邮箱" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn">*</a>
            </div>
            <div class="row">
                密&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox">
                <input type="text" id="txtPwd" placeholder="密码" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn2">*</a>
            </div>
            <div style="text-align: center">
                <a href="#" id="loginbtn">登录</a>
            </div>
        </div>-->

        <div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
            <div class="cd-user-modal-container"> <!-- this is the container wrapper -->
                <ul class="cd-switcher">
                    <li><a href="#0">登录</a></li>
                    <li><a href="#0">注册</a></li>
                </ul>

                <div id="cd-login"> <!-- log in form -->
                    <form class="cd-form">
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="signin-email">邮箱</label>
                            <input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="邮箱">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <label class="image-replace cd-password" for="signin-password">密码</label>
                            <input class="full-width has-padding has-border" id="signin-password" type="password"  placeholder="密码">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <input type="checkbox" id="remember-me" checked>
                            <label for="remember-me">记住我</label>
                        </p>

                        <p class="fieldset">
                            <input class="full-width" type="submit" value="登录">
                        </p>
                    </form>

                    <p class="cd-form-bottom-message"><a href="#0">忘记密码?</a></p>
                    <!-- <a href="#0" class="cd-close-form">Close</a> -->
                </div> <!-- cd-login -->
                <div id="cd-signup"> <!-- sign up form -->
                    <form class="cd-form">
                        <p class="fieldset">
                            <label class="image-replace cd-username" for="signup-username">用户名</label>
                            <input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="用户名">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <label class="image-replace cd-email" for="signup-email">邮箱</label>
                            <input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="邮箱">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <label class="image-replace cd-password" for="signup-password">密码</label>
                            <input class="full-width has-padding has-border" id="signup-password" type="password"  placeholder="密码">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <input type="checkbox" id="accept-terms">
                            <label for="accept-terms">同意注册条款 <a href="#0">协议</a></label>
                        </p>

                        <p class="fieldset">
                            <input class="full-width has-padding" type="submit" value="注册">
                        </p>
                    </form>

                    <!-- <a href="#0" class="cd-close-form">Close</a> -->
                </div> <!-- cd-signup -->

                <div id="cd-reset-password"> <!-- reset password form -->
                    <p class="cd-form-message">忘记密码? 请输入你的邮箱地址. 你将收到一封重置密码的邮件</p>

                    <form class="cd-form">
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="reset-email">邮箱</label>
                            <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="邮箱">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <input class="full-width has-padding" type="submit" value="重置密码">
                        </p>
                    </form>

                    <p class="cd-form-bottom-message"><a href="#0">返回登录</a></p>
                </div> <!-- cd-reset-password -->
                <a href="#0" class="cd-close-form">Close</a>
            </div> <!-- cd-user-modal-container -->
        </div> <!-- cd-user-modal -->

    </div><!-- 顶部 结束-->
