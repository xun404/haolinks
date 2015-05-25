<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" >
<meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
<link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
<title>充值记录</title>
</head>
<body>
<div class="main">


<!--内容 Start-->
    <div class="amount_head_box">

        <div class="amount_left">最近10笔充值记录!</div>

        <div class="c"></div>

    </div>
    <c:if test="${empty expenses}">
        <div class="recharge_records_box">
            <div class="list_recharge records_center" style="text-align: center;">
                暂无充值记录
            </div>
        </div>
    </c:if>
    <c:forEach var="myRechange" items="${expenses}">
        <div class="recharge_records_box">
    <div class="list_recharge records_left">
        <fmt:parseDate value="${myRechange[0]}" var="date" pattern="yyyy-MM-dd HH:mm:ss" /> <%-- 转换为时间格式 --%>
        <fmt:formatDate value="${date}" pattern="yyyy-MM-dd" /><%--格式化时间 --%>
    </div>
    <div class="list_recharge records_center">充值：<fmt:formatNumber value="${myRechange[1]}" pattern="0"/></div>
    <div class="list_recharge records_right">账户余额：
        <fmt:formatNumber value="${myRechange[2]}" pattern="0"/></div>
    <div class="c"></div>

</div>

    </c:forEach>
<!--内容 End-->

</div>
<div class="co_text"></div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>
</body>
</html>
