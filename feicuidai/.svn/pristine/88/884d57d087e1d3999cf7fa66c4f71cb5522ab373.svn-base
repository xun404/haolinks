<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关于我们-专家顾问</title>
<link type="text/css" rel="stylesheet" href="/resource/css/public.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/newCommon.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/registration.css" />
<link type="text/css" rel="stylesheet" href="/resource/css/main.css" />
<link type="text/css" rel="stylesheet" href="/resource/css/team.css" />


<script type="text/javascript" src="/resource/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/resource/js/jslides.js"></script>
<script type="text/javascript" src="js/global.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/frontend/public/header.jsp" />

	<div class="gren"></div>

	<!--------注册 Start--------------->
	<div class="registr_all borrow user_evaluation_all">
		<div class="title">
			<span>您当前位置：</span><a href="/">翡翠贷 ></a><a href="${deputy.topic.url}">${deputy.topic.name
				}></a><a>${deputy.name }</a>
		</div>
		<div class="common_main">
			<jsp:include
				page="/WEB-INF/views/frontend/public/leftMenu_aboutUs.jsp" />

			<div class="right_box_content">
				<div class="content_P">${deputy.pageHtml}</div>
			</div>

		</div>
		<div class="c"></div>
	</div>

	<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp" />
	<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp" />
</body>
</html>