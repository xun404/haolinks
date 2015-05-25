<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="format-detection" content="telephone=no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <!-- meta keywords 和 description 及其它项请动态载入-->
    <link href="/resource/phone/bootstrap3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <script src="/resource/phone/bootstrap3.3.4/js/jquery1.11.2.min.js"></script>
    <script src="/resource/phone/bootstrap3.3.4/js/bootstrap.min.js"></script>
    <!-- 以上请按顺序写入，路径请调整-->
    <link href="/resource/phone/bootstrap3.3.4/css/mobi.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/resource/phone/ymPrompt/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    <title>翡翠贷-登陆</title>
    <script>
        function checkLogin() {
            if ($("#loginName").val() == "") {
                ymPrompt.alert("请输入用户名", 250, 200, "提示", null);
                document.getElementById("loginName").focus();
                return false;
            } else if ($("#loginPwd").val() == "") {
                ymPrompt.alert("请输入密码", 250, 200, "提示", null);
                document.getElementById("loginPwd").focus();
                return false;
            } else {
                return true;
            }
        }
    </script>
</head>
<body>
<div style="width:100%;padding:2em;">


    <!--内容 Start-->

    <form id="loginForm" action="/phoneVisitor/login" method="post" onsubmit="return checkLogin();">
       <div class="row">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">
                <div class="glyphicon glyphicon-phone"></div>
                </div>
                <input type="text" name="userName" id="loginName"
                       value="${userName}" placeholder="用户名/手机号"
                       class="form-control"/>
            </div>
        </div>
       </div>
        <div class="row">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">
                    <div class="glyphicon glyphicon-lock"></div>
                </div>
                <input type="password" name="pwd" id="loginPwd" value="${pwd}"
                       placeholder="密码" class="form-control"/>
            </div>
        </div>
            </div>
        <div class="row" style="text-align: center">
            <div class="form-group">
        <input type="submit" id="loginEnter" value="登录" class="btn btn-green btn-mid" style="width: 90%"/>
            </div>
        </div>
        <div class="row" style="text-align: center">
            <div class="form-group">
                <input type="button" class="btn btn-default btn-mid" value="注册" style="width: 90%" onclick="window.top.location='/phoneVisitor/registView';"/>
                </div>
        </div>
            <script>
            <c:if test="${!empty user_error}">
            ymPrompt.alert("${user_error }", 250, 200, '提示', null);
            </c:if> <c:if test="${msg eq 1}">
            ymPrompt.alert("验证码错误", 250, 200, '提示', null);
            </c:if> <c:if test="${error gt 0 && error lt 5}">
            ymPrompt.alert("密码错误，还有${5-error}次机会。", 250, 200, '提示', null);
            </c:if> <c:if test="${!empty isLock }">
            ymPrompt.alert("对不起你的账号在${isLock}已经锁定。", 250, 200, '提示', null);
            </c:if> <c:if test="${!empty lock }">
            ymPrompt.alert("${lock}", 250, 200, '提示', null);
            </c:if> <c:if test="${!empty admin_lock }">
            ymPrompt.alert("${admin_lock}", 250, 200, '提示', null);
            </c:if>
        </script>
    </form>
    <!--内容 End-->

</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>
</body>
</html>
