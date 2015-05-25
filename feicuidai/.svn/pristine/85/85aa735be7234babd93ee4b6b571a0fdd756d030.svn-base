<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>顺金所贷款平台-借款列表</title>
	<link type="text/css" rel="stylesheet" href="/resource/css/login.css"/>
	<link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
	<link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>
	<link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
	<link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
<%--<link rel="stylesheet" type="text/css" href="resources/css/base.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="resources/css/huitou.css" />--%>

	<script src="resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
	<script src="resources/js/jquery_1.7.2.js" type="text/javascript"></script>
	<script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
	<link rel="stylesheet" type="text/css"
		  href="/resources/css/skin/simple_gray/ymPrompt.css"/>
	<script type="text/javascript" src="/resources/js/global.js"></script>
	<script type="text/javascript" src="/resource/js/findpassword.js"></script>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>
<!--------登陆 Start--------------->

<div class="login_box">
	<div class="main">
		<div class="right_box">
			<div class="password_management" id="password_management_01">
				<form action="registration_02.html" method="post">
					<div class="process_img"><img src="/resource/images/processs_01.jpg" width="430" height="80" alt=""/></div>
					<div class="input_box">
						<div class="content_input"><span>手机号码</span><input type="text" id="yhphone" name="phone" onkeyup="value=value.replace(/[^\d\.]/g,'')" placeholder="" class="input_text_style"/></div>
					</div>
					<div class="input_box yanzheng_div_box">
						<div class="yanzheng_span"><span> 验  证   码</span></div>
						<input type="text" value="" class="input_text_style yanzheng_input" id="yhmphone" name="smsCode" style="padding:0px;" onkeyup="value=value.replace(/[^\d\.]/g,'')"/>
						<div class="yanzheng_pic"><input type="button" value="获取短信验证码" id="getcode" onkeyup="value=value.replace(/[^\d\.]/g,'')"/></div>
						<div class="c"></div>
					</div>
					<div class="input_box">
						<div class="content_input"><span></span>
							<input type="button" value="确认提交" id="findbyphone" class="button_style"/>
						</div>
					</div>
				</form>
			</div>

				<div class="password_management" id="password_management_02">

					<form action="find_password_form" method="post" id="find_password_form" onsubmit="return false;">
						<div class="process_img"><img src="/resource/images/processs_02.jpg" width="430" height="80" alt=""/></div>
						<div class="input_box">
							<div class="content_input"><span><samp>*</samp>新密码</span><input type="password" placeholder="" class="input_text_style" name="passwordfd" id="passwordfd"/></div>
						</div>
						<div class="input_box">
							<div class="content_input"><span><samp>*</samp>确认密码</span><input type="password" placeholder="" class="input_text_style" name="passwordfd_again" id="passwordfd_again"/></div>
						</div>

						<div class="input_box">
							<div class="content_input"><span></span>
								<input type="submit" value="重置密码"  class="button_style"/>
							</div>
						</div>
					</form>
				</div>

				<div class="password_management" id="password_management_03">
					<form action="find_password_form" method="post" >
						<div class="process_img"><img src="/resource/images/processs_03.jpg" width="430" height="80" alt=""/></div>
						<p>修改成功！返回登录页面</p>
					</form>
				</div>

		</div>

	</div>
</div>

<!--------登陆 End--------------->
<!-- footer -->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>

