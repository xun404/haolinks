<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
<link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
<title>账号信息</title>
</head>
<body>
<div class="main">


<!--内容 Start-->



<div class="individual_center_box">
    <div class="user_name_head"><c:if test="${empty user.userRelationInfo.imgUrl}">
        <img width="60" height="60" src="/resources/images/img/user.gif"/>
    </c:if>
        <c:if test="${!empty user.userRelationInfo.imgUrl}">
            <img width="60" height="60" src="${user.userRelationInfo.imgUrl}"
                 alt="${user.userName }"
                 title="${user.userName }"/>
        </c:if></div>
    <div class="user_box">
      <p>可用余额：<fmt:formatNumber value="${empty user.userFundInfo.cashBalance ? '0.00':user.userFundInfo.cashBalance}" pattern="0.00"/>元</p>
    </div>
    <div class="c"></div>
</div>


<div class="div_style_box">
    <div class="icon"><img src="/resource/phone/images/nane_03.png" width="30" height="26" alt=""/></div>
    <div class="content">姓名</div>
    <div class="date"><c:if
            test="${empty user.realName || fn:length(user.realName)<=0}">未设置</c:if>
        <c:if test="${!empty user.realName }"> ${user.realName }</c:if>
    </div>
    <div class="c"></div>
</div>

<div class="div_style_box">
    <div class="icon"><img src="/resource/phone/images/tple_07.png" width="33" height="32" alt=""/></div>
    <div class="content">手机号码</div>
    <div class="date"><c:if
            test="${empty user.userRelationInfo.phone || fn:length(user.userRelationInfo.phone)<=0}">未设置</a></c:if>
        <c:if test="${!empty user.userRelationInfo.phone }"> ${user.userRelationInfo.phone }</c:if></div>
    <div class="c"></div>
</div>

<div class="div_style_box">
    <div class="icon"><img src="/resource/phone/images/email_10.png" width="33" height="25" alt=""/></div>
    <div class="content">电子邮箱</div>
    <div class="date"><c:if
            test="${user.userRelationInfo.emailisPass!=1  || fn:length(user.userRelationInfo.email)<=0}">未设置</a></c:if>
        <c:if test="${user.userRelationInfo.emailisPass==1 }"> ${user.userRelationInfo.email }</c:if></div>
    <div class="c"></div>
</div>

<div class="div_style_box">
    <div class="icon"><img src="/resource/phone/images/shenfen_num_13.png" width="34" height="29" alt=""/></div>
    <div class="content">身份证号码</div>
    <div class="date"><c:if
            test="${empty user.userRelationInfo.cardId || fn:length(user.userRelationInfo.cardId)<=0}">未设置</c:if>
        <c:if test="${!empty user.userRelationInfo.cardId }"> ${fn:substring(user.userRelationInfo.cardId,0,4)}
            <c:forEach begin="" end="${fn:length(fn:substring(user.userRelationInfo.cardId,4,18))-5}">*</c:forEach>
            ${fn:substring(user.userRelationInfo.cardId,fn:length(user.userRelationInfo.cardId)-4,fn:length(user.userRelationInfo.cardId))}
        </c:if></div>
    <div class="c"></div>
</div>

<div class="div_style_box">
    <div class="icon"><img src="/resource/phone/images/bank_15.png" width="34" height="24" alt=""/></div>
    <div class="content">绑定银行卡</div>
    <div class="date">${bankListNum}张</div>
    <div class="c"></div>
</div>



<!--内容 End-->

</div>

<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>
</body>
</html>