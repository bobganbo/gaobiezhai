/**
 * Created by bo on 2018/4/6.
 */
/* */
function apply_action($url,id) {
    if (!confirm("确认操作")) return;
    $.post($url, {
        "id": id
    }, function(result) {
        try {
            var ret = $.evalJSON(result);
            if(ret.code == 0){
                C.alert.tips({"content":""+ret.msg+"","timeout":"2000"});
                setTimeout(function(){
                    window.location.reload();
                },1000);
            }else{
                C.alert.tips({"content": "" + ret.msg + ""});
            }
        } catch (e) {
            alert(result + ":e");
        }
    });
}
/* 提交查找 */
function search_submit(url){
    var search_type=$("#search_type").val();
    var search_txt=$("#search_txt").val();
    if(search_txt==''){
        C.alert.tips({"content":"查找内容不能为空"});
        $('#search_txt').focus();
        return false;
    }
    var url = url+'&search_type='+search_type+'&search_txt='+encodeURI(search_txt);
    window.location.href=url;
}