<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head lang="zh-cn">
    <meta charset="UTF-8">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="format-detection" content="telephone=no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <!-- meta keywords 和 description 及其它项请动态载入-->
    <link href="/resource/phone/bootstrap3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <script src="/resource/phone/bootstrap3.3.4/js/jquery1.11.2.min.js"></script>
    <script src="/resource/phone/bootstrap3.3.4/js/bootstrap.min.js"></script>
    <script src="/resource/phone/bootstrap3.3.4/js/jquery.touchSwipe.min.js"></script>
    <!-- 以上请按顺序写入，路径请调整-->
    <link href="/resource/phone/bootstrap3.3.4/css/mobi.css" rel="stylesheet">
</head>
<body>
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
        <li data-target="#myCarousel" data-slide-to="1" ></li>
        <li data-target="#myCarousel" data-slide-to="2" ></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner" style="background: #000">
        <c:set var="n" value="0"/>
<c:forEach items="${application_banner}" var="v" varStatus="vs">
    <c:if test="${v.type==3}">
        <c:if test="${n != 0}">
            <div class="item">
                <img src="${v.imgUrl}" alt="${vs.index} slide"   height="100%" width="100%">
            </div>
            <c:set var="n" value="${n+1}"/>
        </c:if>
        <c:if test="${n == 0}">
        <div class="item active">
            <img src="${v.imgUrl}" alt="${vs.index} slide"   height="100%" width="100%">
        </div>
            <c:set var="n" value="${n+1}"/>
    </c:if>
    </c:if>
    </c:forEach>

    </div>
    <!-- 轮播（Carousel）导航 -->
    <a id="cleft" class="carousel-control left" href="#myCarousel"
       data-slide="prev"></a>
    <a id="cright" class="carousel-control right" href="#myCarousel"
       data-slide="next">
    </a>

</div>
<!--分割 官方公告-->
<div class="container-fluid">
    <div class="row list">
        <div class="per-icon">
            <span><i ><img src="/resource/phone/images/shu_gang.png" width="8" height="25" alt="官方公告"></i></span></div>
        <div class="per-content">
            <strong>官方公告</strong>
        </div>
        <div class="per-time"></div>
    </div>
</div>

<!--分割 公告列表-->
<c:forEach items="${appDeputys}" var="d">
    <c:if test="${d.name eq '官方公告' }">
        <c:set var="n" value="0"/>
        <c:forEach items="${appArticles}" var="itemTmp" varStatus="number">
            <c:if test="${itemTmp.deputySection.id  == d.id }">
                <c:if test="${n < 2}">
<div class="container-fluid">
    <div class="row list bg-default">
        <div class="per-icon"><span><i >
            <img src="/resource/phone/images/${n%2==0?'lan_dian.png':'hei_dian.png'}"
                 width="8" alt=""/></i></span></div>
        <div class="per-content"><span class="m-tips">
            ${itemTmp.title}
        </span></div>
        <div class="per-time">${fn:substring(itemTmp.createTime,0, 10)}</div>
                        <div class="c"></div>
    </div>
                    </div>
                    <c:set var="n" value="${n+1}"/>
                </c:if>
            </c:if>
        </c:forEach>
    </c:if>
</c:forEach>

<!--热门标-->
<!--投标-->
<div class="container-fluid">
    <div class="row list">
        <div class="per-icon">
            <span><i ><img src="/resource/phone/images/shu_gang.png" width="8" height="25"  alt="热门标的"></i></span></div>
        <div class="per-content">
            <strong>热门标</strong>
        </div>
        <div class="per-time"></div>
    </div>
</div>

<!--分割 公告列表-->
<c:set var="n" value="0"/>
<c:forEach items="${loanSignList}" var="loanSign">
    <c:if test="${n < 3 }">
<div class="container-fluid">
    <div class="row list m-list bg-default">
        <div class="per-icon">
            <span><i ><img src="/resource/phone/images/ya.png" width="16" height="16" alt="标的列表"></i></span></div>
        <div class="per-content">
            <span class="m-tips">${loanSign[1]} 期限:${loanSign[5]}个月</span>
            <span class="m-tips  span2">金额：<fmt:formatNumber value="${loanSign[3]}" pattern="0"/>元 年化率:<fmt:formatNumber value="${loanSign[2]*100}" pattern="0.0"/>%</span>
            </div>
        <div class="per-btn">
            <c:if test="${loanSign[4]==3}">
                <input type="button" class="btn btn-default btn-mid" value="投标结束"/>
            </c:if>
            <c:if test="${loanSign[4]==2&&loanSign[3]>loanSign[9]}">
                <input type="button" class="btn btn-green btn-mid" value="我要投资" onclick="window.top.location='/phoneInvest/getPhoneInvestUI?id=${loanSign[0]}';"/>
            </c:if>
            <c:if test="${loanSign[4]==4}">
                <input type="button" class="btn btn-default btn-mid" value="&nbsp;还&nbsp;款&nbsp;中&nbsp;"/>
            </c:if>
            <c:if test="${loanSign[4]==2&&loanSign[3]==loanSign[9]}">
                <input type="button" class="btn btn-default btn-mid" value="满标复审"/>
            </c:if>
        </div>
        </div>
        </div>
        <c:set var="n" value="${n+1}"/>
    </c:if>
</c:forEach>

<!--体验标-->
<!--体验-->
<div class="container-fluid">
    <div class="row list">
        <div class="per-icon">
            <span><i ><img src="/resource/phone/images/shu_gang.png" width="8" height="25"  alt="体验专区"></i></span></div>
        <div class="per-content">
            <strong>体验专区</strong>
        </div>
        <div class="per-time"></div>
    </div>
</div>

<!--分割 体验列表-->
<c:set var="n" value="0"/>
<c:forEach items="${loanSignList}" var="loanSign">
    <c:if test="${n < 1 }">
        <div class="container-fluid">
            <div class="row list m-list bg-default">
                <div class="per-icon">
                    <span><i ><img src="/resource/phone/images/ti.jpg" width="16" height="16" alt="标的列表"></i></span></div>
                <div class="per-content">
            <span class="m-tips">${loanSign[1]} 期限:${loanSign[5]}个月</span>
            <span class="m-tips span2">金额：<fmt:formatNumber value="${loanSign[3]}" pattern="0"/>元 年化率:<fmt:formatNumber value="${loanSign[2]*100}" pattern="0.0"/>%</span>
                </div>
                <div class="per-btn">
            <c:if test="${loanSign[4]==3}">
                <input type="button" class="btn btn-default btn-mid" value="投标结束"/>
            </c:if>
            <c:if test="${loanSign[4]==2&&loanSign[3]>loanSign[9]}">
                <input type="button" class="btn btn-blue btn-mid" value="我要投资" onclick="window.top.location='/phoneInvest/getPhoneInvestUI?id=${loanSign[0]}';"/>
            </c:if>
            <c:if test="${loanSign[4]==4}">
                <input type="button" class="btn btn-default btn-mid" value="&nbsp;还&nbsp;款&nbsp;中&nbsp;"/>
            </c:if>
            <c:if test="${loanSign[4]==2&&loanSign[3]==loanSign[9]}">
                <input type="button" class="btn btn-default btn-mid" value="满标复审"/>
            </c:if>
            </div>
            </div>
        </div>
        <c:set var="n" value="${n+1}"/>
    </c:if>
</c:forEach>

<script type="text/javascript">
    $(function(){
        var winWidth=0;
        if (window.innerWidth){ //获取窗口宽度
            winWidth = window.innerWidth;
        }else if ((document.body) && (document.body.clientWidth)){
            winWidth = document.body.clientWidth;
        }
        $(".carousel-inner").width(winWidth);//设置焦点图的宽高
        $(".carousel-inner").height((winWidth/1.8)+"px");
        $("#myCarousel").carousel('cycle');
        $("#myCarousel").swipe({
            swipeLeft: function() { $(this).carousel('next'); },
            swipeRight: function() { $(this).carousel('prev'); }
        });
    })
</script>

<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>

</body>
</html>
