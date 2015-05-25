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
    <title>翡翠贷-会员注册</title>
    <link type="text/css" rel="stylesheet"
          href="/resource/css/registration.css"/>
    <link rel="stylesheet" type="text/css"
          href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    <script type="text/javascript" src="/resource/js/regist.js"></script>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="registr_all">
    <div class="title">
        已有账号？<a href="to-login">立即登录</a>
    </div>
    <!--<div class="registr"><img src="images/res_title_01.jpg" width="602" height="108" alt=""/></div>-->
    <div class="registr_main">
        <form id="df_rigster" action="/visitorManagement/registration/registration_1_htm" method="post">
            <input type="hidden" name="member" value="${generuser.id }"/>
            <input type="hidden" name="code" value="${code}"/>
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
                        type="password" name="pwd" id="password" placeholder="至少6位，密码由字母、数字组成"
                        class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span><samp>*</samp>确认密码</span><input type="password" name="pwd2" id="pwd2"
                                                          placeholder="确认密码" class="input_text_style"/>
                </div>
                <div class="text"></div>
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span><samp>&nbsp;</samp>推荐人</span>
                    <input type="text" id="recommend" value="${recommend}" name="recommend"
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
                                placeholder="请输入右边的验证码" class="yanzheng_input" />

                     <div class="yanzheng_pic">
                         <img src="/cic/code?name=user_login"
                              onclick="this.src= '/cic/code?name=user_login&amp;id='+new Date()"
                              <%--onclick="this.src= checkCaptcha()"--%>
                              title="看不清，点击换一张" width="104" height="40" alt=""/>
                     </div>
                 </div>
            <div class="input_box yanzheng_div_box">
                <div class="yanzheng_span">
                    <span><samp>*</samp> 短信验证</span>
                </div>
                <input type="text" name="phoneCode" id="phoneCode" placeholder="输入短信验证码" value=""
                       class="yanzheng_input"/>

                <div class="yanzheng_pic">
                    <input type="button" value="免费获取验证码" id="phoneCaptcha" onclick="send_sms(this);"/>
                </div>
                <div class="c"></div>
                <div class="text"></div>
            </div>

            <div class="input_box">
                <div class="content_input checkbox">
                    <span></span> <label> <input type="checkbox"
                                                 name="CheckboxGroup1" id="checkAgree" value=""
                                                 id="CheckboxGroup1_0" checked> 我已阅读并同意
                    <a href="/visitorManagement/visitor/agreement" target="_blank" style="color: #1980ca">
                        翡翠贷《服务协议》
                    </a>
                </label>

                </div>
            </div>

            <div class="input_box">
                <div class="content_input">
                    <span></span> <input type="button" id="enter" onclick="check()" value="立即注册"
                                         class="button_style"/>
                </div>
            </div>
            <script>
                <c:if test="${!empty phone_error}">
                ymPrompt.alert("${phone_error }", null, null, '提示', null);
                </c:if>
            </script>
        </form>
    </div>
</div>
<!--------注册 End--------------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
