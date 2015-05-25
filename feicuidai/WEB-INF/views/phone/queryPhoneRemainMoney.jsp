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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>
    <link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
    <title>首页</title>
</head>
<body>
<div class="main">


<!--内容 Start-->

<div class="amount_head_box">

    <div class="amount_left">投资待收详情!</div>
   
    <div class="c"></div>

</div>


<c:forEach var="myInvest" items="${list}">

<div class="div_index_box">
 <div style="width:100%;border-bottom:1px solid #e6e6e6">
    <div class="icon">
    <c:if test="${ myInvest[8] == 1}">
    <img src="/resource/phone/images/ya.png" width="26" height="26" alt=""/>&nbsp;&shy;
    </c:if>
      <c:if test="${ myInvest[8] == 8}">
    <img src="/resource/phone/images/ti.jpg" width="26" height="26" alt=""/>&nbsp;&shy;
    </c:if>
    </div>
    <div class="content">
    	<div class="content_half">
        	<p class="up">${myInvest[1]}</p>
            <p class="down">年化利率 : 
            <fmt:formatNumber pattern="0.00" value="${myInvest[3]*100}"></fmt:formatNumber>
            %</p>
        </div>
    	<div class="content_half">
        	<p class="up">金额：
        	<fmt:formatNumber value="${myInvest[2]}" pattern="00"></fmt:formatNumber>
        	元</p>
            <p class="down">期限 : ${myInvest[4]}个月</p>
        </div>
        <div class="c"></div>
    </div>
    <div>
    <div class="amount_right">
        <p class="color_1">待收金额</p>
        <p class="color_2">
        <fmt:formatNumber pattern="0.00" value="${myInvest[6]+myInvest[5]-(myInvest[6]*myInvest[7])}"></fmt:formatNumber>
        元</p>    
    </div>
    
   
    
    
    <div class="c"></div>
    </div>
</div>

</c:forEach>

<c:if test="${empty list}">
        <div class="recharge_records_box">
            <div class="list_recharge records_center" style="text-align: center;">
             没有记录!
            </div>
        </div>
    </c:if>

<!--内容 End-->

</div>
<div class="co_text"></div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>

</body>
</html>
