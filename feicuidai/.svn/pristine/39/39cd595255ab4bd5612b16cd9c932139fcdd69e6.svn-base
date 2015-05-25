<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>注册</title>
<link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>


<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="resources/js/ymPrompt.js"></script>
<script type="text/javascript" src="/resource/js/jslides.js"></script>
<script type="text/javascript" src="/resource/js/global.js"></script>
<script type="text/javascript" src="/resource/js/head.js"></script>
</head>
<body>
<!-- top -->
	<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp" />

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="registr_all">
<div class="title">已有账号？<a href="#">立即登陆</a></div>
<div class="registr"><img src="/resource/images/res_title_02.jpg" width="602" height="108" alt=""/></div>
<div class="registr_main">
<div class="text_box">
	<div class="title">用户名XX，恭喜你，已注册成功！</div>
    <p>为了您的账户安全，请如实填写以下资料！或者<a href="#">以后再认证</a></p>
    <p>该资料仅作为投资和贷款的重要凭证，翡翠贷绝不泄漏您的信息</p>
</div>
<form action="registration_03.html" method="post">
<div class="input_box">
    <div class="content_input"><span><samp>*</samp>真实姓名</span><input type="text" value="" class="input_text_style"/></div>
    <div class="text">请输入你的真实姓名</div>
</div>

<div class="input_box">
    <div class="content_input"><span><samp>*</samp>身份证号</span><input type="password" value="" class="input_text_style"/></div>
    <div class="text">请输入真实有效身份证号</div>
</div>

<div class="input_box">
    <div class="content_input"><span><samp>*</samp>现居住地</span>
        <select>
        <option>北京市</option>
        </select>
        <select>
        <option>市辖区</option>
        </select>
         <select>
        <option>东城区</option>
        </select>
    </div>
    <div class="text">注：请输入推荐顾问用户名，没有可不填</div>
</div>

<div class="input_box">
    <div class="content_input"><span><samp>*</samp>详细地址</span><input type="text" value="" class="input_text_style"/></div>
    <div class="text">请填写真实详细地址</div>
</div>


<div class="input_box">
    <div class="content_input"><span></span>
		<input type="button" value="确认提交" name="c" class="button_style"/>
    </div>
</div>

</form>
</div>
</div>
<!--------注册 End--------------->

<!-- footer -->
		<jsp:include page="/WEB-INF/views/visitor/communal/footer.jsp" />

<!--------右侧QQ部分 START--------->

<ul class="float-toolbars clearfix">
    <li class="float-toolbars-item">
        <a href="http://www.yitoujr.com/calculator.action" class="float-toolbars-title" style="line-height:36px;background: url(/resource/images/feedback-8.png) no-repeat;"></a>
    </li>
    <li class="float-toolbars-item user-feedback-2" id="li_qq_service">
        <a target="_blank" href="#" class="float-toolbars-title">QQ<br>客服</a>
        <div style="display: none;" class="float-toolbars-item-sub">
            <div><span>客服1</span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2462065632&amp;site=qq&amp;menu=yes" style="background:#ddd;"><img src="/resource/images/online.png" width="70" height="20" alt=""/></a></div>
            <div><span>客服2</span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1463888503&amp;site=qq&amp;menu=yes" style="background:#ddd;"><img src="/resource/images/online.png" width="70" height="20" alt=""/></a></div>
            <div><span>客服3</span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2714153192&amp;site=qq&amp;menu=yes" style="background:#ddd;"><img src="/resource/images/online.png" width="70" height="20" alt=""/></a></div>
        </div>
    </li>
    <li class="float-toolbars-item rel" style="position:relative;" id="yt_block">
        <a href="javascript:void(0);" class="user-feedback-10 float-toolbars-title" style="line-height:36px;background: url(/resource/images/float.png) no-repeat;"></a>
        <div class="float-toolbars-item-sub" style="border: 1px solid rgb(188, 188, 188); width: 130px; height: 130px; position: absolute; left: -132px; top: 0px; display: none;">
            <img src="微信二维码.jpg" alt="" style="display:block; width:130px; height:130px;">
        </div>
    </li>
    <li style="display: block;" class="float-toolbars-item user-feedback-3" id="to_top">
        <a class="float-toolbars-title">返回<br>顶部</a>
    </li>
</ul>  

<!---------右侧QQ部分 END--------->

<script>
$(document).ready(function() {
    $('#li_qq_service').mouseover(function() {
        $(this).children('div').show();
    }).mouseout(function() {
        $(this).children('div').hide();
    });
    
    $('#yt_block').mouseover(function() {
        $(this).children('div').show();
    }).mouseout(function() {
        $(this).children('div').hide();
    });
    
    $(window).scroll(function(){
        if ($(window).scrollTop()>100){
            $("#to_top").fadeIn(1000);
        }
        else {
            $("#to_top").fadeOut(1000);
        }
    });
    
    //当点击跳转链接后，回到页面顶部位置
    $("#to_top").click(function(){
        $('body, html').animate({scrollTop:0},1000);
        return false;
    });
});
</script>
</body>
</html>
