<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/index.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/index.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/validationEngine.jquery.css"/>

<script type="text/javascript" src="/resources/js/head.js"></script>
<script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/resource/js/jslides.js"></script>
<script type="text/javascript" src="/resource/js/global.js"></script>
<script type="text/javascript" src="/resource/js/public.js"></script>
<script type="text/javascript" src="/resource/js/jquery/jquery.circliful.js"></script>
<script type="text/javascript" src="/resources/js/jquery/jquery.validationEngine.js"></script>
<script type="text/javascript" src="/resources/js/jquery/jquery.validationEngine-zh_CN.js"></script>
<!--top-->

<%--会员未登录 --%>


<!--------最顶部 START--------->
<div class="nav_all">
    <div class="nav">
        <div class="nav_left">中国翡翠玉石行业互联网金融开创者</div>
        <div class="nav_right">
            <c:if test="${empty session_user }">
                <a href="/visitor/to-login" class="nav_a_login">登陆</a>
                <a href="/visitor/to-regist" class="nav_a_registration">注册</a>
            </c:if>
            <c:if test="${!empty session_user }">
                <span><a href="/memberCenter/memberCenter">您好，${session_user.userName }</a>555<a
                        href="/update_info/login_out">[安全退出]</a></span>

            </c:if>
            <div class="c"></div>
        </div>
        <div class="c"></div>
    </div>
</div>
<!--------最顶部 END--------->

<%--会员已经登录 --%>

<!--End top-->
<!--head-->
<!--------LOGO and menu START--------->
<div class="menu_all">
    <div class="menu_box">

        <div class="logo_box">
            <a href="/"><img src="/resource/images/logo.jpg" width="540"
                             height="137" alt="首页" style="position: relative; top: 0px;"/></a>
        </div>
        <div class="menu">
            <div class="big_menu">
                <ul>
                    <c:forEach items="${topics}" var="t">
                        <c:if test="${t.isShow == 1 }">
                            <li><a href="${t.url }">${t.name}</a>
                            </li>
                        </c:if>
                    </c:forEach>
                    <div class="c"></div>
                </ul>
            </div>
        </div>
        <div class="c"></div>

    </div>
</div>
<!--------LOGO and menu END --------->
