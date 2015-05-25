<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <title>账户管理-银行卡信息</title>
    <script type="text/javascript" src="/resource/js/jquery-1.8.0.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resource/js/ymPrompt.js"></script>
    <script type="text/javascript" >
        function deleteBankCard(userbank_id) {
            ymPrompt.confirmInfo('是否确认删除银行卡？', 320, 160, '是否删除银行卡', function (tp) {
                if (tp == 'ok') {
                    fn_ajax("/accountManagement/userInfo/deleteUserBank", {
                        userbank_id: userbank_id
                    }, function (data) {
                        if (data != "") {
                            <%--jQuery("#userBanklist").html("");--%>
                            <%--var json_obj = $.parseJSON(data);--%>
                            <%--for (var i in json_obj) {--%>
                            <%--jQuery("#userBanklist").append(--%>
                            <%--"<img src='/resource/images/bank/boc.jpg' width='149' height='47' alt=''/><p>" +--%>
                            <%--${userBank.bankAccount} +"</p><div class='item_a'><a href='#' class='item_left_a'>修改</a><a href='#' class='item_right_a'>删除</a><div class='c'></div></div>"--%>
                            <%--);--%>
                            <%--}--%>
                            //这里需要修改，因为异步返回处理时有点问题
                            top.window.location = "/accountManagement/userInfo/getUserBankList?fatherMenu=2&sonMenu=2";
                        } else {
                            ymPrompt.errorInfo('删除银行卡失败！', 400, 200, '失败', null);
                        }
                    });
                }
            });
        }
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <div class="title_alert tetle_alert_text">温馨提示：<p>· 每个翡翠贷用户最多只能绑定3张银行卡。</p>

                <p>· 同一银行卡号连续出现三次绑定失败，该卡不能再进行绑定，需更换银行卡进行绑定。</p>

                <p>· 请您使用储蓄卡进行绑定，禁止使用信用卡绑定。</p></div>
            <div class="bank_box" style="padding: 45px">
                <div class="title">已添加银行卡</div>
                <c:forEach items="${bankList}" var="userBank">
                    <div class="item_bank"  id="userBanklist">
                                <img src="/resource/images/bank/${userBank.bankType.bankCode}.jpg" width="149" height="47" alt=""/>
                        <p>${userBank.bankAccount}</p>
                        <div class="item_a">
                            <a href="/accountManagement/userInfo/updateBankInfo?id=${userBank.id}" class="item_left_a">修改</a>
                            <a href="javascript:deleteBankCard(${userBank.id});" class="item_right_a">删除</a>
                            <div class="c"></div>
                        </div>

                </div>
                </c:forEach>
                <c:if test="${fn:length(bankList) < 3 }">
                <a href="/accountManagement/userInfo/bankInfo?fatherMenu=2&sonMenu=2">
                    <div class="item_bank add_bank">
                        <div class="item_a item_a_bank">
                            新增银行卡
                        </div>
                    </div>
                </a>
                </c:if>
                <div class="c"></div>
            </div>

        </div>
        <div class="c"></div>

    </div>

</div>
<!--------注册 End--------------->

<!--------公告、咨询  END---------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
