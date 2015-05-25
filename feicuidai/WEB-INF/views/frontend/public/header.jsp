<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link type="text/css" rel="stylesheet" href="/resource/css/public.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/newCommon.css" />
<link type="text/css" rel="stylesheet" href="/resource/css/roll.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/validationEngine.jquery.css" />

<script type="text/javascript" src="/resource/js/head.js"></script>
<script type="text/javascript"
	src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/resource/js/jslides.js"></script>
<script type="text/javascript" src="/resource/js/global.js"></script>
<script type="text/javascript" src="/resource/js/public.js"></script>
<script type="text/javascript"
		src="/resources/js/jquery/jquery.validationEngine.js"></script>
<script type="text/javascript"
		src="/resources/js/jquery/jquery.validationEngine-zh_CN.js"></script>
<script type="text/javascript"
	src="/resource/js/jquery/jquery.circliful.js"></script>

<!--top-->
<!--------最顶部 START--------->
<div class="nav_all">
	<div class="nav">
		<div class="nav_left">
			<span class="nav_left_telp">${footer.phone400}</span><span>关注我们</span>
			<div class="weixin_box">
				<a target="_blank" href="${footer.xlurl}" title="新浪微博" class="list_ico_01"></a> <a
					target="_blank" href="${footer.txurl}" title="腾讯微博" class="list_ico_02"></a> <a
					href="javascript:void(0);" class="weixin list_ico_03">
					<div class="erweima">
						<img src="/resource/images/weixin_erweima.jpg" width="130"
							height="130" alt="" />
					</div> </a>
				<!-- <a href="#" class="list_ico_04"></a>-->
			</div>
		</div>
		<div class="nav_right">
			<c:if test="${empty session_user }">
				<a href="/visitorManagement/visitor/to-login" style="color:#92c12f;">登录</a>
				<a href="/visitorManagement/visitor/to-regist" style="color:#29aadf;">免费注册</a>
				<a href="/">首页</a>
				<a href="/to/latestActivity" style="color:#ff4a00;">最新活动</a>
			</c:if>
			<c:if test="${!empty session_user }">
				<span>您好，<a
					href="/visitorManagement/memberCenter/memberCenter">${session_user.userName
						}</a>
					消息<c:if test="${messagecount==0}">
					<a href="/visitorManagement/memberCenter/system_message"  style="padding:5px 0px;">（${messagecount}）</a>
					</c:if>
					<c:if test="${messagecount!=0}">
						<a href="/visitorManagement/memberCenter/system_message" style="color:#59ccfb; padding:5px 0px;">（${messagecount}）</a>
					</c:if>
					<a href="/accountManagement/userInfo/loginOut">[安全退出]</a><a
					href="/to/latestActivity" style="color:#ff4a00;">最新活动</a> </span>
			</c:if>
			<div class="c"></div>
		</div>
		<div class="c"></div>
	</div>
</div>
<!--------最顶部 END--------->

<%--会员已经登录 --%>

<!--End top-->
<!--head-->
<!--------LOGO and menu START--------->
<div class="menu_all">
	<div class="menu_box">
		<div class="logo_box">
			<a href="/"><img src="/resource/images/logo.jpg" width="473"
				height="100" alt="首页" /> </a>
		</div>
		<div class="menu">
			<div class="big_menu">
				<ul>
					<c:forEach items="${topics}" var="t">
						<c:if test="${t.isShow == 1 }">
							<li><a href="${t.url }">${t.name}</a></li>
						</c:if>
					</c:forEach>
					<div class="c"></div>
				</ul>
			</div>
		</div>
		<div class="c"></div>
	</div>
</div>
<!--------LOGO and menu END --------->
