<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<head>
    <title>翡翠贷-用户登陆</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/login.css"/>
    <link rel="stylesheet" type="text/css"
          href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=3137127484" type="text/javascript"
            charset="utf-8"></script>
    <script>
        function checkLogin() {
            if ($("#loginName").val() == "") {
                ymPrompt.alert({title: "提示", message: "请输入用户名", closeTxt: "关闭"});
                document.getElementById("loginName").focus();
                return false;
            } else if ($("#loginPwd").val() == "") {
                ymPrompt.alert("请输入密码", null, null, "提示", null);
                document.getElementById("loginPwd").focus();
                return false;
            } else if ($("input[name='captcha']").val() == "") {
                ymPrompt.alert("请输入验证码", null, null, "提示", null);
                document.getElementById("captcha").focus();
                return false;
            } else {
                return true;
            }
        }
    </script>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>
<!--------登陆 Start--------------->

<div class="login_box">
    <div class="main">
        <div class="content_box">
            <div class="login_left_box">
                <form id="loginForm" action="/visitorManagement/registration/login" method="post"
                      id="df_login" onsubmit="return checkLogin();">
                    <div class="input_box">
                        <input type="text" name="userName" id="loginName"
                               value="${userName}" placeholder="用户名/手机号"
                               class="input_style username"/>
                    </div>
                    <div class="input_box">
                        <input type="password" name="pwd" id="loginPwd" value="${pwd}"
                               placeholder="密码" class="input_style parssword"/>
                    </div>
                    <div class="verification_box">
                        <div class="text_box">
                            <input type="text" name="captcha" id="captcha"
                                   placeholder="请输入验证码" class="text verification"/>
                        </div>
                        <div class="pic_box">
                            <img src="/cic/code?name=user_login"
                                 onclick="this.src='/cic/code?name=user_login&amp;id='+new Date();"
                                 title="看不清，点击换一张" width="102" height="40" alt=""/>
                        </div>
                        <div class="c"></div>
                    </div>
                    <div class="verification_box verification_bos">
                        <div class="text_box remember">
                            <label> <input type="checkbox" name="CheckboxGroup1"
                                           value="复选框" id="CheckboxGroup1_0" checked> 记住用户名
                            </label>
                        </div>
                        <div class="pic_box">
                            <a href="/find_password/init.do">忘记密码?</a>
                        </div>
                        <div class="c"></div>
                    </div>
                    <div class="input_button_box">
                        <input type="submit" id="loginEnter" value="登录"
                               class="button"/>

                    </div>
                    <script>
                        <c:if test="${!empty user_error}">
                        ymPrompt.alert("${user_error }", null, null, '提示', null);
                        </c:if> <c:if test="${msg eq 1}">
                        ymPrompt.alert("验证码错误", null, null, '提示', null);
                        </c:if> <c:if test="${error gt 0 && error lt 5}">
                        ymPrompt.alert("密码错误，还有${5-error}次机会。", null, null, '提示', null);
                        </c:if> <c:if test="${!empty isLock }">
                        ymPrompt.alert("对不起你的账号在${isLock}已经锁定。", null, null, '提示', null);
                        </c:if> <c:if test="${!empty lock }">
                        ymPrompt.alert("${lock}", null, null, '提示', null);
                        </c:if> <c:if test="${!empty admin_lock }">
                        ymPrompt.alert("${admin_lock}", null, null, '提示', null);
                        </c:if>
                    </script>
                </form>
            </div>
            <div class="login_right_box">
                <div class="tex_01">
                    没有账号？立即<a href="/visitorManagement/visitor/to-regist">免费注册</a>
                </div>
                <div class="tex_02">使用以下账号直接登陆：</div>
                <div class="login_icon">
                    <a href="/visitorManagement/visitor/toWeiboLogin" class="ion_1"></a>
                    <a href="/visitorManagement/visitor/toQQLogin" class="ion_2"></a>
                </div>
            </div>

            <div class="c"></div>
        </div>
    </div>
</div>


<!--------登陆 End--------------->
<!-- footer -->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>