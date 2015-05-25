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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" >
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
    <script type="text/javascript" >
        function deleteBankCard(userbank_id) {
            ymPrompt.confirmInfo('是否确认删除银行卡？', 250, 200, '是否删除银行卡', function (tp) {
                if (tp == 'ok') {
                    $.ajax({
                        type : 'post',
                        url : '/accountManagement/userInfo/deleteUserBank',
                        data:{
                            userbank_id: userbank_id
                        },
                        success:function (data) {
                            if (data != "") {
                                //这里需要修改，因为异步返回处理时有点问题
                                top.window.location = "/phoneVisitor/bankManagement";
                            } else {
                                ymPrompt.errorInfo('删除银行卡失败！', 250, 200, '失败', null);
                            }
                        }
                    });
                }
            });
        }
    </script>
<title>银行卡管理</title>
</head>
<body>
<div class="main">


<!--内容 Start-->
<%--<div class="bank_managent_box">--%>
    <%--<div class="bank_img"><img src="" width="35" height="30" alt=""/></div>--%>
    <%--<div class="bank_content"><p style="color:#666;">中国邮政储蓄银行</p><p style="color:#ccc;">尾号2973</p></div>--%>
    <%--<div class="bank_a"><img src="/resource/phone/images/res_no.png" width="25" height="25" alt=""/></div>--%>
    <%--<div class="c"></div>--%>
<%--</div>--%>
<c:forEach items="${banklist}" var="bank">
<div class="bank_managent_box">
    <div class="bank_img"><img src="/resource/phone/images/bank/${bank.bankType.bankCode}.png" width="35" height="35" alt=""/></div>
    <div class="bank_content"><p style="color:#666;">${bank.bankType.name}</p><p style="color:#ccc;">卡号：${bank.bankAccount}</p></div>
    <div class="bank_a"><a href="javascript:deleteBankCard(${bank.id})"><img src="/resource/phone/images/res_no.png" width="25" height="25" alt=""/></a></div>
    <div class="c"></div>
</div>
</c:forEach>
<div class="tliy">注：不能提现到信用卡，新增银行卡最多为3张</div>
<c:if test="${fn:length(banklist) < 3 }">
<a href="/phoneVisitor/add_bank" class="button_style">新增银行卡</a>
</c:if>
<!--内容 End-->

</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>
</body>
</html>
