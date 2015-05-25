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
<title>翡翠贷贷款平台</title>
<style>

.rightBar {
    float: right;
    width: 800px;
    background: none repeat scroll 0 0 white;
}
.rightBar .listpage {
    border: 1px solid #e7e7e7;
}
.listPageTitle {
    background: none repeat scroll 0 0 #dc2331;
    height: 41px;
    line-height: 41px;
    padding: 0 100px 0 100px;
}
.rightBar .listpage .listUL li {
    background: url(/resources/images/update/ring.png) no-repeat scroll 8px center rgba(0, 0, 0, 0);
    border-bottom: 1px dashed #cfcfcf;
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
    color: #000;
    float: left;
    font-size: 15px;
}
.listPageTitle .right {
    float: right;
}

</style>
<jsp:include page="/WEB-INF/views/visitor/common.jsp"></jsp:include>
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
	<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp" />
	<!--End top-->
	<!--Content-->
	<div class="Content">
		<div class="w960px mapString" style=" height:35px; line-height:35px; text-indent:5px; border:1px solid #ddd; color:#333; font-size:16px;;">
			<span>您当前位置：</span><a href="/">翡翠贷</a>>${deputy.topic.name }>${deputy.name }
			<input type="hidden" id="deputy_id" value="${deputy.id}" />
		</div>
		<div class="w960px"  style="background:none; margin:20px auto;">
			<jsp:include page="/WEB-INF/views/visitor/communal/left.jsp" />
			<div class="rightBar">
				<div class="listpage">
					<div class="listPageTitle">
						<span>标题</span><span class="right">发布日期</span>
					</div>
					<ul class="listUL">
						<c:set var="n" value="0" />
						<c:forEach items="${page.list}" var="art">
							<li><a href="${art[0]}">${art[1]}</a><span>${art[2]}</span></li>
							<c:set var="n" value="${n+1 }" />
						</c:forEach>
					</ul>
					<jsp:include page="/WEB-INF/views/member/communal/page.jsp" />
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!--End Content-->
	<div class="clear"></div>
	<!--footer-->
	<jsp:include page="/WEB-INF/views/visitor/footer.jsp" />
	<!--End footer-->
	<script type="text/javascript"
		src="<%=basePath%>resources/js/autolist.js"></script>
</body>
</html>
