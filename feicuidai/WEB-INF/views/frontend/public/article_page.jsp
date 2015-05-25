<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>${deputy.topic.name}-${deputy.name}</title>
<link type="text/css" rel="stylesheet" href="/resource/css/public.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/newCommon.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/registration.css" />
<link type="text/css" rel="stylesheet" href="/resource/css/main.css" />


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
			<span>您当前位置：</span><a href="/">翡翠贷 ></a><a href="${deputy.topic.url}">${deputy.topic.name}></a><a>${deputy.name }</a>
		</div>
		<div class="common_main">
			<jsp:include
				page="/WEB-INF/views/frontend/public/leftMenu_aboutUs.jsp" />

			<div class="right_box_content">
				<div class="content_P"><h2 align="middle">${article.title}</h2><br/>${article.context }</div>
			</div>

		</div>

		<div class="c"></div>

	</div>
	</div>


	<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp" />

	<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp" />

	<script>
		$(document).ready(function() {
			$(".myStat").each(function() {
				$(this).circliful({
					dimension : 85,
					backgroundColor : "#eee"
				});
			});

		});
	</script>
</body>
</html>


