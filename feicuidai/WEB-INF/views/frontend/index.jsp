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
    <meta name="keywords" content="${footer.indexKeywords}"/>
    <meta name="description" content="${footer.description}" />
    <meta property="qc:admins" content="260221613766513514116375"/>
    <meta property="wb:webmaster" content="c00f6141c94f3c9c"/>
    <meta name="baidu-site-verification" content="CoaiXRlM0w"/>
    <title>${footer.indexTitle}</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/banner.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/index.css"/>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?5db3fd313630f5741ee74e667241e249";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<!-------banner START------>

<div id="full-screen-slider">
    <ul id="slides">
        <c:forEach items="${application_banner}" var="v" varStatus="vs">
            <c:if test="${v.type==1}">
                <li
                        style="background-image: url(${v.imgUrl}); background-position:center "
                        id="indexSlide1_s${vs.index }"><c:if test="${empty v.url}">
                    <a href="javascript:void(0)"> </a>
                </c:if> <c:if test="${!empty v.url}">
                    <a href="${v.url }"></a>
                </c:if></li>
            </c:if>
        </c:forEach>
    </ul>
</div>
<div class="c"></div>
<!-------banner END-------->

<jsp:include page="/WEB-INF/views/frontend/public/investmentInfo.jsp"/>

<!-- 专家顾问信息 -->
<jsp:include
        page="/WEB-INF/views/frontend/public/expertAdvisorInfo.jsp"/>

<!-- 官方公告，新闻等 -->
<jsp:include page="/WEB-INF/views/frontend/public/information.jsp"/>

<!------合作伙伴 START------>
<div class="cooperation_all">
    <div class="cooperation">
        <div class="title">合作伙伴</div>
        <div class="hezuo" style="margin-bottom: 30px">
            <table>
                <tr>
                    <td align="left">
                        <div class="move" id="demo">
                            <table>
                                <tr>
                                    <td id="item1">
                                        <table>
                                            <tr>
                                                <c:forEach items="${application_link}" var="link">
                                                    <c:if test="${link.type eq 1 && link.isShow eq 1 }">
                                                        <td><a href="${link.url }" target="_blank"><img
                                                                style="height: 40px;" src="${link.verifyImg }"
                                                                alt="${link.name }"/> </a></td>
                                                    </c:if>
                                                </c:forEach>
                                            </tr>
                                        </table>
                                    </td>
                                    <td id="item2"></td>
                                    <td id="item3"></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>

            <script language="javascript" type="text/javascript">
                var demo = document.getElementById("demo");
                var demo1 = document.getElementById("item1");
                var demo2 = document.getElementById("item2");
                var demo3 = document.getElementById("item3");
                var speed = 20; //数值越大滚动速度越慢
                demo2.innerHTML = demo1.innerHTML;
                demo3.innerHTML = demo1.innerHTML;
                function Marquee() {
                    if (demo3.offsetWidth - demo.scrollLeft <= 0)
                        demo.scrollLeft -= demo1.offsetWidth;
                    else {
                        demo.scrollLeft++;
                    }
                }
                var MyMar = setInterval(Marquee, speed);
                demo.onmouseover = function () {
                    clearInterval(MyMar);
                };
                demo.onmouseout = function () {
                    MyMar = setInterval(Marquee, speed);
                };
            </script>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!------合作伙伴 END------>

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

<script>
    $(document).ready(function () {
        $(".myStat").each(function () {
            $(this).circliful({
                dimension: 55,
                backgroundColor: "#eee"
            });
        });

    });
</script>
</body>
</html>
