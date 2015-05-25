<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>翡翠贷-用户登陆</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/login.css"/>
    <link type="text/css" rel="stylesheet"
          href="/resource/css/registration.css"/>
    <link rel="stylesheet" type="text/css"
          href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    <script type="text/javascript" src="/resource/js/relationRegist.js"></script>
    <script>
        function checkLogin() {
            if ($("#loginName").val() == "") {
                ymPrompt.alert({
                    title: "提示",
                    message: "请输入用户名",
                    closeTxt: "关闭"
                });
                document.getElementById("loginName").focus();

            } else if ($("#loginPwd").val() == "") {
                ymPrompt.alert("请输入密码", null, null, "提示", null);
                document.getElementById("loginPwd").focus();

            } else if ($("#loginCaptcha").val() == "") {
                ymPrompt.alert("请输入验证码", null, null, "提示", null);
                document.getElementById("loginCaptcha").focus();
            } else {
                $("#Content_form_2").submit();
            }
        }
    </script>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="registr_all">
    <!--<div class="registr"><img src="images/res_title_01.jpg" width="602" height="108" alt=""/></div>-->
    <div class="registr_main">
        <div class="head_user">
            <div class="left_user user_a" id="left_user_1">没有翡翠贷账号</div>
            <div class="right_user user_a" id="left_user_2">已有翡翠贷账号</div>
            <div class="c"></div>
        </div>
        <form action="/visitorManagement/registration/registration_1_htm"
              method="post" class="content_form" id="Content_form_1">
            <input type="hidden" name="member" value="${generuser.id }"/>
            <input type="hidden" name="code" value="${code}"/>
            <input type="hidden" name="qqOpenID" value="${qqOpenID}"/>
            <input type="hidden" name="qqNickName" value="${qqNickName}"/>
            <input type="hidden" name="weiboId" value="${weiboId}"/>

            <div class="input_box">
                ${qqNickName}，您好，请完善一下信息，以后可以用该手机号/密码登录翡翠贷了!
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span><samp>*</samp>手机号码</span><input type="text" name="phone"
                                                          id="phone" placeholder="请输入真实有效的手机号码"
                                                          class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span><samp>*</samp>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span><input
                        type="password" name="pwd" id="password"
                        placeholder="至少6位，密码由字母、数字组成" class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span><samp>*</samp>确认密码</span><input type="password" name="pwd2"
                                                          id="pwd2" placeholder="确认密码" class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span><samp>&nbsp;</samp>推荐人</span> <input type="text"
                                                               id="recommend" value="${recommend}" name="recommend"
                                                               placeholder="请输入推荐人手机号码" class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>
            <div class="c"></div>
            <div class="input_box yanzheng_div_box">
                <div class="yanzheng_span">
                    <span><samp>*</samp> 验证码</span>
                </div>
                <input type="text" name="captcha" id="captcha" value=""
                       placeholder="请输入右边的验证码" class="yanzheng_input"/>

                <div class="yanzheng_pic">
                    <img src="/cic/code?name=user_login"
                         onclick="this.src= '/cic/code?name=user_login&amp;id='+new Date()"
                    <%--onclick="this.src= checkCaptcha()"--%>
                         title="看不清，点击换一张"
                         width="104" height="40" alt=""/>
                </div>
            </div>
            <div class="input_box yanzheng_div_box">
                <div class="yanzheng_span">
                    <span><samp>*</samp> 短信验证</span>
                </div>
                <input type="text" name="phoneCode" id="phoneCode"
                       placeholder="输入短信验证码" value="" class="yanzheng_input"/>

                <div class="yanzheng_pic">
                    <input type="button" value="免费获取验证码" id="phoneCaptcha"
                           onclick="send_sms(this);"/>
                </div>
                <div class="c"></div>
                <div class="text"></div>
            </div>

            <div class="input_box">
                <div class="content_input checkbox">
                    <span></span> <label> <input type="checkbox"
                                                 name="CheckboxGroup1" id="checkAgree" value=""
                                                 id="CheckboxGroup1_0" checked> 我已阅读并同意 <a
                        href="/visitorManagement/visitor/agreement" target="_blank"
                        style="color: #1980ca"> 翡翠贷《服务协议》 </a> </label>

                </div>
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span></span> <input type="button" id="enter" onclick="checkRegist()"
                                         value="立即注册" class="button_style"/>
                </div>
            </div>
        </form>
        <form id="Content_form_2" class="content_form"
              action="/visitorManagement/registration/login" method="post" >
            <input type="hidden" name="qqOpenID" value="${qqOpenID}"/>
            <input type="hidden" name="weiboId" value="${weiboId}"/>
            <input type="hidden" name="qqNickName" value="${qqNickName}"/>

            <div class="input_box">
                ${qqNickName}，您好，请用已经在翡翠贷注册的手机号/密码与QQ互联!
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span><samp>*</samp>手机号码</span><input type="text" name="userName"
                                                          id="loginName" placeholder="请输入真实有效的手机号码"
                                                          class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>
            <div class="input_box">
                <div class="content_input">
                    <span><samp>*</samp>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span><input
                        type="password" name="pwd" id="loginPwd" placeholder="请输入密码"
                        class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>
            <div class="input_box yanzheng_div_box">
                <div class="yanzheng_span">
                    <span><samp>*</samp> 验证码</span>
                </div>
                <input type="text" name="captcha" id="loginCaptcha" value=""
                       placeholder="请输入右边的验证码" class="yanzheng_input"/>

                <div class="yanzheng_pic">
                    <img src="/cic/code?name=user_login"
                         onclick="this.src= '/cic/code?name=user_login&amp;id='+new Date()"
                    <%--onclick="this.src= checkCaptcha()"--%>
                         title="看不清，点击换一张"
                         width="104" height="40" alt=""/>
                </div>
            </div>
            <div class="input_box">
                <div class="content_input">
                    <span></span> <input type="submit"  value="登录"
                                         class="button_style" onclick="checkLogin();" />
                </div>
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
        <script type="text/javascript">
            $(function () {
                $("#left_user_1").css("background", "#00bc00");
                $("#Content_form_1").css("display", "block");
                $(".user_a").click(function () {
                    $(".user_a").css("background", "#b0b0b0");
                    $(".content_form").css("display", "none");
                    var this_left_user = $(this).attr("id");
                    var nums = this_left_user.replace("left_user_", "");
                    $("#left_user_" + nums).css("background", "#00bc00");
                    $("#Content_form_" + nums).css("display", "block");
                })
            })
        </script>
    </div>
</div>
<!--------注册 End--------------->


<!-- footer -->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>


</body>
</html>
