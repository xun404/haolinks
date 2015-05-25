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
    
    <style type="text/css">
     .vspan{
            width:25%;padding:0;margin:0;
            float:left;display:inline-block;
            height:3em;line-height:3em;font-size:1em;
            vertical-align: middle;text-align:center;
        }
      .vLine{
        width: 100%;clear:both;margin:0;padding:0;
        height:3em;border-bottom:1px solid #e6e6e6;
        background:#fff;
      }
    </style>
    <title>首页</title>
</head>
<body>
<div class="main">


<!--内容 Start-->

<div class="amount_head_box">
    <div class="amount_left">最近10笔利息收益列表!</div>
    <div class="c"></div>
</div>


<c:forEach var="myInvest" items="${list}">

<div class="vLine" >
<span class="vspan" style="font-size:1em">
<c:if test="${ myInvest[2] == 1}">
<img src="/resource/phone/images/ya.png" width="26" height="26" alt=""/>
</c:if>
  <c:if test="${ myInvest[2] == 8}">
<img src="/resource/phone/images/ti.jpg" width="26" height="26" alt=""/>
</c:if>
 &nbsp;&shy;</span>
<span class="vspan">${myInvest[0] }</span>
<span class="vspan">${myInvest[3] }</span>
<span class="vspan">
<fmt:formatNumber value="${myInvest[1]}" pattern="0.00"></fmt:formatNumber>
元
</span>
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
