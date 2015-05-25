<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>注册</title>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>resource/css/public.css"/>
    <link type="text/css" rel="stylesheet"
          href="<%=basePath%>resource/css/newCommon.css"/>
    <link type="text/css" rel="stylesheet"
          href="<%=basePath%>resource/css/registration.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="<%=basePath%>resources/js/ymPrompt.js"></script>
    <script type="text/javascript" src="<%=basePath%>resource/js/jslides.js"></script>
    <script type="text/javascript" src="<%=basePath%>resource/js/global.js"></script>
    <script type="text/javascript" src="<%=basePath%>resource/js/head.js"></script>

    <script>
        function checkOnly(name, value) {
            if (name == "phone" && $("input[name='phone']").val() != "") {
                return $.ajax({
                    url: '/visitorManagement/registration/checkOnly_phone?fieldValue=' + value,
                    async: false
                }).responseText;
            }
        }
        function check() {
            if ($("input[name='phone']").val() == "") {
                document.getElementById("phone").focus();
                $("input[name='phone']").parent().next().text("请输入您的手机号");
                return;
            }
            var myreg = /^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/;
            if (!myreg.test($("input[name='phone']").val())) {
                document.getElementById("phone").focus();
                $("input[name='phone']").parent().next().text("请输入正确的手机号");
                return;
            }
            if ($("input[name='pwd']").val() == "") {
                document.getElementById("password").focus();
                $("input[name='pwd']").parent().next().text("请输入密码");
                return;
            }
            if ($("input[name='pwd']").val().length < 6) {
                document.getElementById("password").focus();
                $("input[name='pwd']").parent().next().text("密码长度至少6位");
                return;
            }
            if ($("input[name='pwd2']").val() == "") {
                document.getElementById("pwd2").focus();
                $("input[name='pwd2']").parent().next().text("请输入确认密码");
                return;
            }
            if ($("input[name='pwd2']").val() != $("input[name='pwd']").val()) {
                document.getElementById("pwd2").focus();
                $("input[name='pwd2']").parent().next().text("两次输入密码不一致");
                return;
            }
            if ($("input[name='phone']").val() == "") {
                document.getElementById("phone").focus();
                $("input[name='phone']").parent().next().text("请输入您的手机号");
                return;
            }
            if (checkOnly("phone", $("input[name='phone']").val()) == "[null,false]") {
                document.getElementById("phone").focus();
                return;
            }
            /* if ($("input[name='character']:checked").val() == ""
             || $("input[name='character']:checked").val() == null) {
             ymPrompt.alert("请角色类型");
             return;
             } */
            if ($("input[name='phoneCode']").val() == "") {
                document.getElementById("phoneCode").focus();
                ymPrompt.alert("请输入手机验证码");
                return;
            }
            if (checkPhoneCode($("input[name='phoneCode']").val(), $(
                            "input[name='code']").val()) == "[false]") {
                ymPrompt.alert("手机验证码错误，请重新输入");
                document.getElementById("phoneCode").focus();
                return;
            }
            if (!$("#checkAgree").attr('checked')) {
                ymPrompt.alert("您还未同意翡翠贷金融平台服务协议");
                return;
            } else {
                $("#df_rigster").submit();
            }
        }
        function checkPhoneCode(phoneCode, code) {
            if ($("input[name='phoneCode']").val() != "") {
                return $.ajax({
                    url: '/visitorManagement/registration/checkPhoneCode?phoneCode=' + phoneCode
                    + '&code=' + code,
                    async: false
                }).responseText;
            }
        }

        //限制发送信息时间
        var countdown=180;
        function settime(val) {
            if (countdown == 0) {
                val.removeAttribute("disabled");
                val.value="免费获取验证码";
                countdown = 180;
                return false;
            } else {
                val.setAttribute("disabled", true);
                val.value="重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                settime(val)
            },1000)
        }

        // 发送手机验证码
        function send_sms(val) {
            var phone = $("input[name='phone']").val();// 手机号
            if (!/^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/.test(phone)) {
                ymPrompt.alert("请输入有效的手机号码！", 400, 200, '提示', null);
                return;
            } else {
                settime(val);
                //发送验证码
                fn_ajax("/member/sendRegistSMS", {
                    phone: phone
                }, function (data) {
                    //alert(data);
                    if (data != "0") {
                        var code = data;
                        $("input[name='code']").val(data);
                        ymPrompt.succeedInfo('手机验证码已成功发送至您的手机，请注意查收', 400,
                                200, '成功', null);
                    } else {
                        ymPrompt.errorInfo('手机验证码发送失败！', 400, 200, '失败', null);

                    }
                })
            }


        }

        function enterPress(e) {
            var e = e || window.event;
            if (e.keyCode == 13) {
                $("#enter").click();
            }
        }
    </script>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp"/>

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
            <div class="input_box yanzheng_div_box">
                <div class="yanzheng_span">
                    <span><samp>*</samp> 短信验证</span>
                </div>
                <input type="text" name="phoneCode" id="phoneCode" placeholder="输入短信验证码" value=""
                       class="input_text_style yanzheng_input"/>

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
                                                 id="CheckboxGroup1_0"> 我已阅读并同意
                    <a href="javascript:showAgreeContent();" style="color: #1980ca">
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

        </form>
    </div>
</div>
<!--------注册 End--------------->

<!-- footer -->
<jsp:include page="/WEB-INF/views/visitor/communal/footer.jsp"/>

<!--------右侧QQ部分 START--------->

<ul class="float-toolbars clearfix">
    <li class="float-toolbars-item"><a
            href="http://www.yitoujr.com/calculator.action"
            class="float-toolbars-title"
            style="line-height: 36px; background: url(/resource/images/feedback-8.png) no-repeat;"></a>
    </li>
    <li class="float-toolbars-item user-feedback-2" id="li_qq_service">
        <a target="_blank" href="#" class="float-toolbars-title">QQ<br>客服
        </a>

        <div style="display: none;" class="float-toolbars-item-sub">
            <div>
                <span>客服1</span><a target="_blank"
                                   href="http://wpa.qq.com/msgrd?v=3&amp;uin=2462065632&amp;site=qq&amp;menu=yes"
                                   style="background: #ddd;"><img
                    src="/resource/images/online.png" width="70" height="20" alt=""/></a>
            </div>
            <div>
                <span>客服2</span><a target="_blank"
                                   href="http://wpa.qq.com/msgrd?v=3&amp;uin=1463888503&amp;site=qq&amp;menu=yes"
                                   style="background: #ddd;"><img
                    src="/resource/images/online.png" width="70" height="20" alt=""/></a>
            </div>
            <div>
                <span>客服3</span><a target="_blank"
                                   href="http://wpa.qq.com/msgrd?v=3&amp;uin=2714153192&amp;site=qq&amp;menu=yes"
                                   style="background: #ddd;"><img
                    src="/resource/images/online.png" width="70" height="20" alt=""/></a>
            </div>
        </div>
    </li>
    <li class="float-toolbars-item rel" style="position: relative;"
        id="yt_block"><a href="javascript:void(0);"
                         class="user-feedback-10 float-toolbars-title"
                         style="line-height: 36px; background: url(/resource/images/float.png) no-repeat;"></a>

        <div class="float-toolbars-item-sub"
             style="border: 1px solid rgb(188, 188, 188); width: 130px; height: 130px; position: absolute; left: -132px; top: 0px; display: none;">
            <img src="微信二维码.jpg" alt=""
                 style="display: block; width: 130px; height: 130px;">
        </div>
    </li>
    <li style="display: block;"
        class="float-toolbars-item user-feedback-3" id="to_top"><a
            class="float-toolbars-title">返回<br>顶部
    </a></li>
</ul>

<!---------右侧QQ部分 END--------->

<script>
    $(document).ready(function () {
        $('#li_qq_service').mouseover(function () {
            $(this).children('div').show();
        }).mouseout(function () {
            $(this).children('div').hide();
        });

        $('#yt_block').mouseover(function () {
            $(this).children('div').show();
        }).mouseout(function () {
            $(this).children('div').hide();
        });

        $(window).scroll(function () {
            if ($(window).scrollTop() > 100) {
                $("#to_top").fadeIn(1000);
            } else {
                $("#to_top").fadeOut(1000);
            }
        });

        //当点击跳转链接后，回到页面顶部位置
        $("#to_top").click(function () {
            $('body, html').animate({
                scrollTop: 0
            }, 1000);
            return false;
        });
    });
</script>

<!-- 验证 -->
<script>
    function showAgreeContent() {
        showAgree();
        $('#agree').show();
    }
    function initPlaceHolders() {
        if ('placeholder' in document.createElement('input')) { //如果浏览器原生支持placeholder
            return;
        }
        function target(e) {
            var e = e || window.event;
            return e.target || e.srcElement;
        }
        ;
        function _getEmptyHintEl(el) {
            var hintEl = el.hintEl;
            return hintEl && g(hintEl);
        }
        ;
        function blurFn(e) {
            var el = target(e);
            if (!el || el.tagName != 'INPUT' && el.tagName != 'TEXTAREA')
                return;//IE下，onfocusin会在div等元素触发
            var emptyHintEl = el.__emptyHintEl;
            if (emptyHintEl) {
                //clearTimeout(el.__placeholderTimer||0);
                //el.__placeholderTimer=setTimeout(function(){//在360浏览器下，autocomplete会先blur再change
                if (el.value)
                    emptyHintEl.style.display = 'none';
                else
                    emptyHintEl.style.display = '';
                //},600);
            }
        }
        ;
        function focusFn(e) {
            var el = target(e);
            if (!el || el.tagName != 'INPUT' && el.tagName != 'TEXTAREA')
                return;//IE下，onfocusin会在div等元素触发
            var emptyHintEl = el.__emptyHintEl;
            if (emptyHintEl) {
                //clearTimeout(el.__placeholderTimer||0);
                emptyHintEl.style.display = 'none';
            }
        }
        ;
        if (document.addEventListener) {//ie
            document.addEventListener('focus', focusFn, true);
            document.addEventListener('blur', blurFn, true);
        } else {
            document.attachEvent('onfocusin', focusFn);
            document.attachEvent('onfocusout', blurFn);
        }

        var elss = [document.getElementsByTagName('input'),
            document.getElementsByTagName('textarea')];
        for (var n = 0; n < 2; n++) {
            var els = elss[n];
            for (var i = 0; i < els.length; i++) {
                var el = els[i];
                var placeholder = el.getAttribute('placeholder'), emptyHintEl = el.__emptyHintEl;
                if (placeholder && !emptyHintEl) {
                    emptyHintEl = document.createElement('span');
                    emptyHintEl.innerHTML = placeholder;
                    emptyHintEl.className = 'login_holder';
                    emptyHintEl.onclick = function (el) {
                        return function () {
                            try {
                                el.focus();
                            } catch (ex) {
                            }
                        }
                    }(el);
                    if (el.value)
                        emptyHintEl.style.display = 'none';
                    el.parentNode.insertBefore(emptyHintEl, el);
                    el.__emptyHintEl = emptyHintEl;
                }
            }
        }
    }

    initPlaceHolders();
</script>
</body>
</html>
