<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>翡翠贷</title>
<style type="text/css">
html{background:url(images/paper.jpg)!important;}
a,fieldset,img{border:0;}
a{color:#221919;text-decoration:none;outline:none;}
a:hover{color:#3366cc;text-decoration:underline;}
body{font-size:24px;color:#B7AEB4;}
body a.link,body h1,body p{-webkit-transition:opacity 0.5s ease-in-out;-moz-transition:opacity 0.5s ease-in-out;transition:opacity 0.5s ease-in-out;}
#wrapper{text-align:center;margin:100px auto;width:594px;}
a.link{text-shadow:0px 1px 2px white;font-weight:600;color:#3366cc;opacity:0;}
h1{text-shadow:0px 1px 2px white;font-size:24px;opacity:0;}
img{-webkit-transition:opacity 1s ease-in-out;-moz-transition:opacity 1s ease-in-out;transition:opacity 1s ease-in-out; opacity:0;}
p{text-shadow:0px 1px 2px white;font-weight:normal;font-weight:200;opacity:0;}
.fade{opacity:1;}
.chengeOK{width:100%; height:100px; display:block; text-align:center;}
.chengeOK span{width:63px; height:55px; display:inline-block;}
.chengeOK span img{width:63px; height:55px; overflow:hidden;}
.chengeOK label{width:auto; line-height:30px; font-size:20px; color:#333333; display:inline-block; margin-left:7px; font-weight:bold;}

@media only screen and (min-device-width:320px) and (max-device-width:480px){
	#wrapper{margin:40px auto;text-align:center;width:280px;}
}
</style>
<script type="text/javascript" src="/resources/js/jquery-1.7.2.min.js"></script>
<!--解决 IE6 背景缓存-->
<!--[if IE 6]><script type="text/javascript">document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<script type="text/javascript">
$(document).ready(function(){
	if (!$.browser.msie){
		$("img").addClass('fade').delay(800).queue(function(next){
			$("h1, p").addClass("fade");
			$("a.link").css("opacity", 1);
			next();
		});
	}else{
		$("img, h1, p").addClass('fade');
		$('a.link').css('opacity', 1);
	}
});
</script>
</head>

<body>


    <div id="wrapper">
        <div class="chengeOK"><span><img src="/resources/images/OK_icon.png" width="63"  height="55"/></span>
    <label>操作成功！</label></div>
        <div>
            <p>如果无法跳转请点击这里：<a style="color:#ff6600;" href="/">返回首页</a></p>
            <input type="hidden" value="${url}" id="url"/>
            <a class="link" href="/member/mail" onclick="history.go(-1)"><span id="sec">5</span> 秒后返回，同一笔订单不可重复提交!</a>
			<br /><br /><br />
        </div>
    </div>
	
	<script type="text/javascript">
	$(function () {            
	   setTimeout("lazyGo();", 1000);
	});
	function lazyGo() {
		var url = $("#url").val();
		var sec = $("#sec").text();
		$("#sec").text(--sec);
		if (sec > 0)
			setTimeout("lazyGo();", 1000);
		else
			window.location.href=url;
	}
	</script>

	
</body>
</html>
