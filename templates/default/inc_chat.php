<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>快乐聊天室</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/templates/default/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/templates/default/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/templates/default/css/animate.min.css" rel="stylesheet">
    <link href="/templates/default/css/style.min.css?v=4.1.0" rel="stylesheet">
    <link href="/templates/default/css/js/layer/skin/default/layer.css" rel="stylesheet">

    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        #left {
            float: left;
            width: 550px;
        }

        #content {
            margin-left: 550px;/*==等于左边栏宽度==*/
        }
    </style>

</head>
<body class="gray-bg">
<div class="wrapper wrapper-content  animated fadeInRight">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="ibox chat-view">
                <div class="ibox-title">
                    <a href="javascript:loginOut();" class="roll-nav roll-right J_tabExit" style="float: right;height: 20px"><i class="fa fa fa-sign-out"></i> 退出</a>
                    <span id="tips">聊天窗口</span>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div id="left" class="col-md-9 ">
                            <div class="chat-discussion" id="chatbox" style="height: 450px">
                            </div>
                        </div>
                        <div id="content" class="col-md-3">
                            <div class="chat-users">
                                <div class="users-list">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="chat-message-form">
                                <div class="form-group">
                                    <textarea class="form-control message-input" name="message" placeholder="输入消息内容，按回车键发送" id="message"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- login box -->
<div class="ibox-content" style="display: none;width:350px;height:150px" id="loginBox">
    <form class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-3 control-label">用户名：</label>

            <div class="col-sm-8">
                <input type="text" placeholder="用户名" class="form-control" id="uname">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-8">
                <button class="btn btn-sm btn-primary m-t-n-xs" type="button" id="lgbtn">登 录</button>
            </div>
        </div>
    </form>
</div>

<script src="/templates/default/css/js/jquery.min.js?v=2.1.4"></script>
<script src="/templates/default/css/js/jquery.cookie.js?v=2.1.4"></script>
<script src="/templates/default/css/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/templates/default/css/js/layer/layer.js"></script>
<script type="text/javascript">
    var _s="close";
    window.onunload = function() {
        if (_s == "fresh")
        {
            loginOut();
        }
    }
    window.onbeforeunload = function(){
        _s="fresh";
    }

    var logbox;
    $(function(){
        //check login
        if(!checkLogin()){
            var uname = $.cookie('ck_username');
            var uid = $.cookie('ck_userid');
            if(!uname || !uid){
                return false;
            }
            doLogin(uname,uid);
        }
        //send message
        document.getElementById('message').addEventListener('keydown',function(e){
            if(e.keyCode!=13) return;
            e.preventDefault();  //取消事件的默认动作
            sendMessage();
            this.value = '';
        });

    });

    //检查登录
    function checkLogin(){
        var user_info = localStorage.getItem("userInfo");
        if( !user_info ){
            //showLogin();
            //$('#login').trigger('click');
            //$('#login').click();
            return user_info;
        }else{
            user_info = $.parseJSON( user_info );
        }
        return user_info;
    }

    //登录操作
    function showLogin(){
        logbox = layer.open({
            type: 1,
            title:'欢迎加入快乐聊天室',
            skin: 'layui-layer-demo', //加上边框
            closeBtn: 0, //不显示关闭按钮
            area: ['380px', '200px'], //宽高
            content: $("#loginBox")
        });
    }

    function UrlValue(name) { //获取页面URL地址参数方法
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); //声明正则表达式
        var r = window.location.search.substr(1).match(reg); //用正则表达式匹配URL地址参数
        if (r != null) return unescape(r[2]); return null; //如果匹配到参数，返回参数结果，如果没有匹配到，返回null
    }

    function doLogin( name ,uid){
        //获取头像
        var avar = parseInt(Math.random() * 10);
        if( avar == 0 ) avar = 1;
        avar = 'a' + avar + '.jpg';
        var roomId =UrlValue('id');
        // 创建一个Socket实例
        ws = new WebSocket('ws://192.168.80.133:8090/');
        var loading = layer.load(0, {shade: false}); //0代表加载的风格，支持0-2
        ws.onopen = function(){
            //console.log("握手成功");
            layer.close(loading);
            localStorage.setItem('userInfo', '{"uname" : "' + name + '", "avar" : "' + avar + '","roomid" : "' + roomId + '","uid" : "' + uid +'"}');
            $("#tips").text('您好：' + name);
            var msg = '{"type" : "1", "user" : "' + name + '", "avar" : "' + avar + '","roomid" : "' + roomId + '","uid":"'+uid+'"}';
            ws.send( msg );
        };

        ws.onmessage = function(e){
            var data = $.parseJSON( e.data );

            if( data.type == 2 ){
                tellOnline( data.user );
            }
            if( data.type == 3 ){
                var message = parseMessage( data.user, data.stime, data.avar, data.msg );
                $("#chatbox").append( message );
                var ex = document.getElementById("chatbox");
                ex.scrollTop = ex.scrollHeight;
            }
            if( data.type == 5 ){
                //console.log( data );
                var user_list = showOnlineUser( data.info );
                $(".users-list").html( user_list );
            }
            if( data.type == 6 ){
                tellOutline( data.user );
            }

        };

        ws.onerror = function(){

            layer.close( loading );
            layer.msg( "登录失败", {'time' : 1000});
        };
    }

    //退出登录
    function loginOut(){
        var roomId =UrlValue('id');
        var msg = '{"type" : "4", "msg" : "login out","roomid":"'+roomId+'"}';
        ws.send( msg );
        localStorage.setItem('userInfo', '');
        layer.load(0, {shade: false}); //0代表加载的风格，支持0-2
        setTimeout( function(){
            window.parent.location = '/';
        }, 3);
    }

    //提示上线
    function tellOnline( name ){
        layer.msg( name + '上线了', {time : 3000});
    }

    //提示下线
    function tellOutline( name ){
        layer.msg( name + '下线了', {time : 1000});
    }

    //发送消息
    function sendMessage(){

        //format date
        Date.prototype.format =function(format)
        {
            var o = {
                "M+" : this.getMonth()+1, //month
                "d+" : this.getDate(), //day
                "h+" : this.getHours(), //hour
                "m+" : this.getMinutes(), //minute
                "s+" : this.getSeconds(), //second
                "q+" : Math.floor((this.getMonth()+3)/3), //quarter
                "S" : this.getMilliseconds() //millisecond
            }
            if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
                (this.getFullYear()+"").substr(4- RegExp.$1.length));
            for(var k in o)if(new RegExp("("+ k +")").test(format))
                format = format.replace(RegExp.$1,
                    RegExp.$1.length==1? o[k] :
                        ("00"+ o[k]).substr((""+ o[k]).length));
            return format;
        }

        var times = new Date().format("yyyy-MM-dd hh:mm:ss");
        var userinfo = checkLogin();
        if( userinfo ){
            //socket send
            var msg = '{"type" : "3", "user" : "' + userinfo.uname + '", "avar" : "' + userinfo.avar + '", "stime" : "'
                + times + '", "msg": "' + $("#message").val() + '","roomid":"'+userinfo.roomid+'","uid":"'+userinfo.uid+'"}';
            // console.log(msg);
            ws.send( msg );

            var message = parseMessage( userinfo.uname, times, userinfo.avar, $("#message").val() );
            $(".chat-discussion").append( message );
            $("#message").val('');
            //滚动条自动定位到最底端
            var ex = document.getElementById("chatbox");
            ex.scrollTop = ex.scrollHeight;
        }
    }

    //解析消息发送样式
    function parseMessage( user, time, avar, message ){

        var _html = '<div class="chat-message"><img class="message-avatar" src="css/img/chat/' + avar + '" alt="">';
        _html += '<div class="message"><a class="message-author" href="#"> ' + user + '</a>';
        _html += '<span class="message-date"> ' + time + ' </span>';
        _html += '<span class="message-content">' + message + '</span></div></div>';

        return _html;
    }

    //展示在线人员
    function showOnlineUser( info ){
        var _html = '';
        $.each( info, function(k, v){
            _html += '<div class="chat-user"><span class="pull-right label label-primary">在线</span>';
            _html += '<img class="chat-avatar" src="css/img/chat/' + v.avar + '" alt=""><div class="chat-user-name">';
            _html += '<a href="#">' + v.user + '</a></div></div>';
        });

        return _html;
    }
</script>
</body>
</html>
