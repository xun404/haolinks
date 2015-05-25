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
<base href="<%=basePath%>" />
<title>${deputy.topic.name}-${deputy.name}</title>
	<link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
	<link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>
	<link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
	<link type="text/css" rel="stylesheet" href="/resource/css/main.css"/>
	<script type="text/javascript" src="/resource/js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="/resource/js/jslides.js"></script>
	<script type="text/javascript" src="/resourcejs/global.js"></script>
	<link rel="stylesheet" type="text/css" href="/resource/css/listpage.css"/>
<style>
.rightBar {
    float: right;
    width: 700px;
    background: none repeat scroll 0 0 white;
}
.rightBar .listpage {
    border: 1px solid #e7e7e7;
}
.listPageTitle {
    background: none repeat scroll 0 0 #00bc00;
    height: 41px;
    line-height: 41px;
    padding: 0 100px 0 100px;
}
.rightBar .listpage .listUL li {
    background: url(/resources/images/update/ring.png) no-repeat scroll 8px center rgba(0, 0, 0, 0);
    border-bottom: 1px dashed #00bc00;
    height: 51px;
    line-height: 51px;
    overflow: hidden;
    padding: 0 63px 0 25px;
}
.rightBar .listpage .listUL li a {
    float: left;
    font-size: 15px;
}
a {
    color: #333;
    text-decoration: none;   
}
.rightBar .listpage .listUL li span {
    color: #7b7b7b;
    float: right;
    font-size: 15px;
}
.listPageTitle span {
    color: #ffffff;
    float: left;
    font-size: 15px;
}
.listPageTitle .right {
    float: right;
}

</style>


<script type="text/javascript">
	function jumpPage(pageno, totalPage) {
		if (pageno<=0 || pageno>totalPage) {
			return;
		}
		top.window.location = '/to/list-1-' + $("#deputy_id").val()
				+ '.htm?no=' + pageno;
	}
</script>
</head>
<body>
	<!--top-->
	<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

	<div class="gren"></div>
	<!--End top-->
	<!--Content-->
	<div class="registr_all borrow user_evaluation_all">
		<div class="title"><span>您当前位置：</span><a href="/">翡翠贷 ></a><a href="${deputy.topic.url}">${deputy.topic.name }></a><a>${deputy.name }</a></div>
		<div class="common_main">
			<jsp:include page="/WEB-INF/views/frontend/public/leftMenu_aboutUs.jsp"/>
			<input type="hidden" id="deputy_id" value="${deputy.id}" />

				<div class="rightBar">
					<div class="listpage">
						<ul class="listUL">
							<c:set var="n" value="0" />
							<c:forEach items="${page.list}" var="art">
								<li><a href="${art[0]}">${art[1]}</a><span>${art[2]}</span></li>
								<c:set var="n" value="${n+1 }" />
							</c:forEach>
						</ul>

					</div>
				</div>
		</div>
		<div class="c"></div>
	</div>

</div>
	<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
	<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

	<script>

		$(document).ready(function () {
			$(".myStat").each(function () {
				$(this).circliful({
					dimension: 85,
					backgroundColor: "#eee"
				});
			});

		});

	</script>
</body>
</html>
