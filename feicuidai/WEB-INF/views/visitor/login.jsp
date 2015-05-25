<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>登陆</title>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>resource/css/public.css"/>
    <link type="text/css" rel="stylesheet"
          href="<%=basePath%>resource/css/newCommon.css"/>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>resource/css/login.css"/>


    <script type="text/javascript" src="<%=basePath%>resource/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>resource/js/jslides.js"></script>
    <script type="text/javascript" src="<%=basePath%>resource/js/global.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="<%=basePath%>resources/js/ymPrompt.js"></script>
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
<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp"/>
<div class="gren"></div>
<!--------登陆 Start--------------->

<div class="login_box">
    <div class="main">
        <div class="title">登录翡翠贷</div>
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
                        <input type="password" name="pwd" id="loginPwd" value="${pwd }"
                               placeholder="密码" class="input_style parssword"/>
                    </div>
                    <div class="verification_box">
                        <div class="text_box">
                            <input type="text" name="captcha" id="captcha"
                                   placeholder="请输入验证码" class="text"/>
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
                                           value="复选框" id="CheckboxGroup1_0"> 记住用户名
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
                    没有账号？立即<a href="/visitor/to-regist">免费注册</a>
                </div>
                <div class="tex_02">使用以下账号直接登陆：</div>
                <div class="login_icon">
                    <a href="#" class="ion_1"></a> <a href="#" class="ion_2"></a> <a
                        href="#" class="ion_3"></a>
                </div>
            </div>
            <div class="c"></div>
        </div>
    </div>
</div>


<!--------登陆 End--------------->
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
            }
            else {
                $("#to_top").fadeOut(1000);
            }
        });

        //当点击跳转链接后，回到页面顶部位置
        $("#to_top").click(function () {
            $('body, html').animate({scrollTop: 0}, 1000);
            return false;
        });
    });
</script>
<script>
    function initPlaceHolders() {
        if ('placeholder' in document.createElement('input')) { //如果浏览器原生支持placeholder
            return;
        }
        function target(e) {
            var e = e || window.event;
            return e.target || e.srcElement;
        }

        function _getEmptyHintEl(el) {
            var hintEl = el.hintEl;
            return hintEl && g(hintEl);
        }

        function blurFn(e) {
            var el = target(e);
            if (!el || el.tagName != 'INPUT' && el.tagName != 'TEXTAREA') return;//IE下，onfocusin会在div等元素触发
            var emptyHintEl = el.__emptyHintEl;
            if (emptyHintEl) {
                //clearTimeout(el.__placeholderTimer||0);
                //el.__placeholderTimer=setTimeout(function(){//在360浏览器下，autocomplete会先blur再change
                if (el.value) emptyHintEl.style.display = 'none';
                else emptyHintEl.style.display = '';
                //},600);
            }
        }

        function focusFn(e) {
            var el = target(e);
            if (!el || el.tagName != 'INPUT' && el.tagName != 'TEXTAREA') return;//IE下，onfocusin会在div等元素触发
            var emptyHintEl = el.__emptyHintEl;
            if (emptyHintEl) {
                //clearTimeout(el.__placeholderTimer||0);
                emptyHintEl.style.display = 'none';
            }
        }

        if (document.addEventListener) {//ie
            document.addEventListener('focus', focusFn, true);
            document.addEventListener('blur', blurFn, true);
        }
        else {
            document.attachEvent('onfocusin', focusFn);
            document.attachEvent('onfocusout', blurFn);
        }

        var elss = [document.getElementsByTagName('input'), document.getElementsByTagName('textarea')];
        for (var n = 0; n < 2; n++) {
            var els = elss[n];
            for (var i = 0; i < els.length; i++) {
                var el = els[i];
                var placeholder = el.getAttribute('placeholder'),
                        emptyHintEl = el.__emptyHintEl;
                if (placeholder && !emptyHintEl) {
                    emptyHintEl = document.createElement('span');
                    emptyHintEl.innerHTML = placeholder;
                    emptyHintEl.className = 'emptyhint';
                    emptyHintEl.onclick = function (el) {
                        return function () {
                            try {
                                el.focus();
                            } catch (ex) {
                            }
                        }
                    }(el);
                    if (el.value) emptyHintEl.style.display = 'none';
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
