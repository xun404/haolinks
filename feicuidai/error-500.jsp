<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>翡翠贷-你访问的页面出错了</title>
<style>
*{margin:0px; padding:0px; list-style:none; text-decoration:none; outline:none; font-size:12px; font-family:"微软雅黑", "Microsoft YaHei";}
</style>
<script type="text/javascript" src="/resources/js/jquery-1.7.2.min.js"></script>
</head>
<body>
<div style="width:100%;height:100px;background-color:#fff;border-bottom:1px solid #e7e7e7">
	<div style="width:1000px;height:100px;margin:0 auto;">
		<img src="/resources/images/update/login.png" style="margin-top:15px;float:left" />
		<span style="display:block;height:60px;margin-top:20px;margin-left:300px;float:left;">
			<font style="font-size:18px;color:#666;line-height:20px;">客服电话</font><br/>
			<font style="font-size:28px;color:#333;line-height:40px;font-weight:bold">${footer.phone }</font>
		</span>
	</div>
</div>
<div style="width:1000px;height:400px;margin:0 auto;">
	<div style="width:465px;height:370px;margin-top:30px;background:url(/resources/images/img/404-sprite.jpg) no-repeat 0 -58px;float:left">
	</div>
	<div style="width:452px;margin-top:100px;float:left">
		<div style="width: 134px;height: 47px;font-size:44px;color:#15446e;font-style:italic;font-weight: bold;letter-spacing: 5px;line-height: 47px;">500!</div>
		<span style="display:block;color: red;font-size: 24px;border-bottom: solid 1px #e3e3e3;padding-bottom: 10px;margin-bottom: 10px;">
			亲，抱歉！您访问的页面出错了~
		</span>
		<span style="display:block;color:#333;line-height:25px;font-size:16px;width:450px">
			500，异常：${msg }<br/>
			详情：<%=exception.getCause().getMessage()%>
		</span>
		<div style="text-align: center;line-height: 44px;margin: 20px auto;">
			<a href="/index" style="width: 160px;height: 44px;background: #15446e;color: #fff;font-size: 18px;float: left;">返回首页</a>
		</div>
	</div>
</div>
</body>
</html>