<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <script type="text/javascript" src="/resource/phone/js/regist.js"></script>
    <script type="text/javascript" src="/resource/phone/js/regist_valid.js"></script>
<title>首页</title>
</head>
<body>
<div style="width:100%;padding:2em;">
    <form id="df_rigster" action="/phoneVisitor/regist" method="post">

    <input type="hidden" name="member" value="${generuser.id }"/>
    <input type="hidden" name="code" value="${code}"/>
        <div class="row">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" name="phone" id="phone" placeholder="请输入手机号码" class="form-control"/>
                    <div class="input-group-addon" style="background: #ffffff"><img src="/resource/phone/images/res_yes.png" width="16" height="16" alt=""/></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="input-group">
                    <input type="password" name="pwd" id="password" placeholder="请输入密码" class="form-control"/>
                    <div class="input-group-addon" style="background: #ffffff"><img src="/resource/phone/images/res_yes.png" width="16" height="16" alt=""/></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="input-group">
                    <input type="password" name="pwd2" id="pwd2" placeholder="请输入确认密码" class="form-control"/>
                    <div class="input-group-addon" style="background: #ffffff"><img src="/resource/phone/images/res_yes.png" width="16" height="16" alt=""/></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="input-group" style="width: 100%">
                    <input type="text" id="recommend" name="recommend" placeholder="请输入推荐人手机号码（可不填写）"  class="form-control" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" name="phoneCode" id="phoneCode"  placeholder="请输入短信验证码" class="form-control"/>
                    <div class="input-group-addon" style="background: #ffffff;padding:0 2px;"><input type="button" class="btn btn-default btn-sm" style="border:none" id="phoneCaptcha" value="获取验证码" onclick="javascript:send_sms(this);"/></div>
                </div>
            </div>
        </div>
        <input type="button" onclick="check()" value="注册" class="btn btn-green btn-mid" style="width: 90%"/>
        <script>
            <c:if test="${!empty phone_error}">
            ymPrompt.alert("${phone_error }", 250, 200, '提示', null);
            </c:if>
            <c:if test="${!empty password_error}">
            ymPrompt.alert("${password_error }", 250, 200, '提示', null);
            </c:if>
        </script>
</form>
</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>
</body>
</html>
