<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>翡翠贷-投资列表</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/financial_management.css"/>
    <jsp:include page="/WEB-INF/views/visitor/common_2.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css"href="/resources/css/loanlist.css" />
    <link rel="stylesheet" type="text/css"href="/resource/css/index.css" />
	<script type="text/javascript" src="/resources/js/condition.js"></script>
	<script type="text/javascript" src="/resources/js/loanSign/loanlist.js"></script>
</head>
<body>

<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>
<div class="registr_all borrow">
<div class="title"><a href="/" style="cursor: pointer;color:#7f7f7f;">首页 </a>> 我要投资</div>

	<div class="Content">
		<div class="w960px">
			<!--mapLinkBox-->
			<%--<div class="mapLinkBox"><span>您当前的位置：</span><a href="#">翡翠贷</a>><a href="#">借款列表</a></div>
 --%>
			<!--End mapLinkBox-->

			<!--搜索条件-->
			<div style="background-color: #fff; border-radius: 5px;">
				<%--<h1>筛选借款项目</h1>
   --%>
				<ul class="conditionList" style="padding: 10px 0 10px 10px;">
					
					<li>
						<dl>
							<dt>项目期限&nbsp;</dt>
							<dd name="deadline">
								<span value="0" class="active">全部</span><span value="1">3个月以下</span><span
									value="2">3-6个月</span><span value="3">6-9个月</span><span
									value="4">9-12个月</span><span value="5">12个月以上</span>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>项目状态&nbsp;</dt>
							<dd name="type">
								<span value="0" class="active">全部</span><span value="1">我要投资</span><span
									value="2">满标复审中</span><span value="3">还款中</span><span value="4">还款完成</span>
							</dd>
						</dl>
					</li>
				</ul>
				<div class="clear"></div>
			</div>
			<!--End 搜索条件-->

			<!--jiekuanList-->
			<div class="jiekuanList"></div>
			<!--End jiekuanList-->
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
