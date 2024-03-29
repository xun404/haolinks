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
    <title>体验专区</title>
</head>
<body>
<div class="main">


<!--内容 Start-->

<div class="amount_head_box">

    <div class="amount_left">可用体验金</div>
    <div class="amount_right">
    <fmt:formatNumber value="${userFundInfo.experienceGold}" pattern="0.00"></fmt:formatNumber>
    元</div>
    <div class="c"></div>

</div>



<div class="experience_ul_box">
    	<div class="experience_left_box">已用体验金</div>
        <div class="experience_right_box">
        <fmt:formatNumber value="${userFundInfo.usedExperienceGold}" pattern="0.00"></fmt:formatNumber>
        元</div>
        <div class="c"></div>
</div>

<div class="experience_ul_box">
    	<div class="experience_left_box">已赚取利息</div>
        <div class="experience_right_box color_e">
        <fmt:formatNumber value="${userFundInfo.experienceGoldInterest}" pattern="0.00"></fmt:formatNumber>
        元</div>
        <div class="c"></div>
</div>


<!--内容 End-->

</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>

</body>
</html>
