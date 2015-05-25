<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
<link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css"href="/resource/phone/ymPrompt/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resource/js/ymPrompt.js"></script>
<script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/resource/phone/js/bank.js"></script>
    <script type="text/javascript">

    </script>
<title>新增银行卡</title>
</head>
<body>
<div class="main" style="text-indent: 10px;">

    <input type="hidden" id="province" value="">
    <input type="hidden" id="bankType" value="">
<!--内容 Start-->
<div class="add_bank_box" >
<div class="language_selected add_bank">
	<div class="name_bank">开户银行：</div>
    <div class=" content_bank">请选择开户银行</div>
    <div class="icon_add_bank"><img src="/resource/phone/images/down_arrow.png" width="15" height="10" alt=""/></div>
    <div class="c"></div>
</div>
<div class="language_list add_bank_son">
    <c:forEach items="${bankType }" var="bt">
        <div class="language_selected son_list"><input type="hidden" value="${bt.id}">${bt.name }</div>
    </c:forEach>
</div>
</div>
    <div class="add_province_box">
    <div class="language_selected province">
        <div class="name_province">省份：</div>
        <div class="content_province">请选择省份</div>
        <div class="icon_province"><img src="/resource/phone/images/down_arrow.png" width="15" height="10" alt=""/></div>
        <div class="c"></div>
    </div>
    <div class="language_list province_son">
        <c:forEach items="${provinces }" var="p">
            <div class="language_selected son_list">
                <input type="hidden" value="${p.id}">
            ${p.name}
            </div>
        </c:forEach>
    </div>
</div>
    <div class="add_citys_box">
    <div class="language_selected citys">
        <div class="name_citys">城市：</div>
        <div class="content_citys">请选择城市</div>
        <div class="icon_citys"><img src="/resource/phone/images/down_arrow.png" width="15" height="10" alt=""/></div>
        <div class="c"></div>
    </div>
    <div class="language_list citys_son">
        <c:forEach items="${citys }" var="c">
            <div class="language_selected citys_son_list">${c.name}</div>
            <%--</c:if>--%>
        </c:forEach>
    </div>
</div>
<div class="card">
    <div class="name_card">支行名称</div>
    <div class="input_card"><input type="text" size="19" placeholder="请输入你的支行名称" id="bankName" /></div>
</div>
<div class="card">
    <div class="name_card">银行账户</div>
    <div class="input_card"><input type="text" size="19" placeholder="请输入你的银行账号" id="bankAccount"/></div>
</div>
    <a href="javascript:bindBankCard()" class="button_style">新增银行卡</a>
<!--内容 End-->

</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>
</body>
</html>
