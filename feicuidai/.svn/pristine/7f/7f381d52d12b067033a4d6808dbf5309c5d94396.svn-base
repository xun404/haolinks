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
    <meta property="qc:admins" content="260221613766513514116375"/>
    <meta property="wb:webmaster" content="c00f6141c94f3c9c"/>
    <title>翡翠贷-中国翡翠玉石行业互联网金融开创者</title>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp"/>
<style>
    #full-screen-slider {
        width: 100%;
        height: 467px;
        float: left;
        position: relative
    }

    #slides {
        display: block;
        width: 100%;
        height: 467px;
        list-style: none;
        padding: 0;
        margin: 0;
        position: relative
    }

    #slides li {
        display: block;
        width: 100%;
        height: 100%;
        list-style: none;
        padding: 0;
        margin: 0;
        position: absolute
    }

    #slides .bgimage_01 {
        background: url(/resource/images/01.jpg) no-repeat center top;
    }

    #slides .bgimage_02 {
        background: url(/resource/images/01.jpg) no-repeat center top;
    }

    #slides .bgimage_03 {
        background: url(/resource/images/01.jpg) no-repeat center top;
    }

    #slides .bgimage_04 {
        background: url(/resource/images/01.jpg) no-repeat center top;
    }

    #slides li a {
        display: block;
        width: 100%;
        height: 100%;
        text-indent: -9999px
    }

    #pagination {
        display: block;
        list-style: none;
        position: absolute;
        left: 45%;
        top: 430px;
        z-index: 9900;
    }

    #pagination li {
        display: block;
        list-style: none;
        width: 50px;
        height: 10px;
        float: left;
        margin-left: 15px;
        background: #FFF
    }

    #pagination li a {
        display: block;
        width: 100%;
        height: 100%;
        padding: 0;
        margin: 0;
        text-indent: -9999px;
    }

    #pagination li.current {
        background: #0092CE
    }
</style>
<!-------banner START------>

<div id="full-screen-slider">
    <ul id="slides">
        <li class="bgimage_01"><a href="#" target="_blank"></a></li>
        <c:forEach items="${application_banner}" var="v" varStatus="vs">
            <li style="background-image: url(${v.imgUrl}); background-position:center "
                    id="indexSlide1_s${vs.index }"><c:if test="${empty v.url}">
                <a href="javascript:void(0)"> </a>
            </c:if> <c:if test="${!empty v.url}">
                <a href="${v.url }"></a>
            </c:if></li>
        </c:forEach>
    </ul>
</div>
<div class="c"></div>
<!-------banner END-------->
<!-------banner START------>
<div class="investment_all">

    <div class="invertment">
        <a href="#" class="inver_itm">
            <div class="inver_itm_left">
                <div class="inver_img">
                    <img src="/resource/images/inoer_1.png" width="90" height="90"
                         alt=""/>
                </div>
                <div class="inver_right">
                    <div class="inver_title">经营理念</div>
                    <div class="inter_text">
                        <div>致力于搭建投资者最安全理财平台</div>
                        致力于解决翡翠玉石行业融资难融资贵问题
                    </div>
                </div>

            </div>
        </a> <a href="#" class="inver_itm">
        <div class="inver_itm_lcenter">
            <div class="inver_img">
                <img src="/resource/images/inoer_2.png" width="77" height="85"
                     alt=""/>
            </div>
            <div class="inver_right">
                <div class="inver_title">开创先河</div>
                <div class="inter_text">
                    <div>翡翠玉石+互联网+金融</div>
                    开创中国首家翡翠玉石质押互联网金融平台
                </div>
            </div>
            <div class="c"></div>
        </div>
    </a> <a href="#" class="inver_itm">
        <div class="inver_itm_right">
            <div class="inver_img">
                <img src="/resource/images/inoer_3.png" width="79" height="76"
                     alt=""/>
            </div>
            <div class="inver_right">
                <div class="inver_title">安全保障</div>
                <div class="inter_text">
                    <div>100%无条件先行垫付本息</div>
                    专做升值潜力大的精品翡翠玉石质押标
                </div>
            </div>
            <div class="c"></div>
        </div>
    </a>

        <div class="c"></div>
    </div>

</div>
<!-------banner END------>
<!-------主体框架 START------>
<div class="main_all">
    <div class="main_box">
        <div class="investment_title">
            <span>投资列表</span>
        </div>
        <div class="inver_conternt">

            <div class="title_box">

                <table width="1000" border="0" class="table_box" cellpadding="0"
                       cellspacing="0">
                    <thead>
                    <tr>
                        <th class="inver_th inter_width_1">借款编号</th>
                        <th class="inver_th inter_width_2">借款金额</th>
                        <th class="inver_th inter_width_3">年利率</th>
                        <th class="inver_th inter_width_4">借款期限</th>
                        <th class="inver_th inter_width_5">投标进度</th>
                        <th class="inver_th inter_width_6">状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${loanSignList}" var="loanSign">
                        <tr>
                            <td class="inter_td inter_width_1"><a style="color:#000"
                                                                  href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}">${loanSign[1]}</a>
                            </td>
                            <td class="inter_td inter_width_2">${loanSign[3]}</td>
                            <td class="inter_td inter_width_3">${loanSign[2]*100}%</td>
                            <td class="inter_td inter_width_4">${loanSign[5]}个月</td>
                                <%--<td class="inter_td inter_width_5"><img src="/resource/images/load.png" width="71" height="71" alt=""/></td>--%>
                            <td class="inter_td inter_width_5">
                                <div style="height: 35px">
                                    <div class="myStat" style="display: inline-block;" data-width="10"
                                         data-fontsize="13" data-percent="${(loanSign[9]/loanSign[3])*100}"
                                         data-text="<fmt:formatNumber value='${(loanSign[9]/loanSign[3])*100}' pattern='0.00'/>%"></div>
                                </div>
                            </td>
                            <td class="inter_td inter_width_6">
                                <c:if test="${loanSign[4]==2&&loanSign[3]>loanSign[9]}">
                                    <a href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}" class="color_chang">我要投资</a>
                                </c:if>
                                <c:if test="${loanSign[4]==3}">
                                    <a href="#" class="no_color">还款中...</a>
                                </c:if>
                                <c:if test="${loanSign[4]==4}">
                                    <a href="#" class="no_color">已完成</a>
                                </c:if>
                                <c:if test="${loanSign[4]==2&&loanSign[3]==loanSign[9]}">
                                    <a href="#" class="no_color">已投满</a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>


            </div>

            <a href="#" class="table_a_button">查看更多投资理财项目</a>
        </div>
    </div>
</div>
<div class="list_content_text">
    <div class="notice_left">
        <div class="notice">
            <h3>官方公告<a href="#"><img src="/resource/images/more.png" width="83" height="25" alt=""/></a></h3>
            <ul>
                <c:forEach items="${ArticleList_1}" var="article">
                    <li><a href="${article[1]}" style="border-bottom:none;">${article[0]}</a>
            <span>
                    ${article[2]}
            </span></li>
                </c:forEach>
            </ul>
        </div>

        <div class="notice">
            <h3>行业动态<a href="#"><img src="/resource/images/more.png" width="83" height="25" alt=""/></a></h3>
            <ul>
                <c:forEach items="${ArticleList_2}" var="article">
                    <li><a href="${article[1]}" style="border-bottom:none;">${article[0]}</a>
             <span>
                     ${article[2]}
             </span></li>
                </c:forEach>

            </ul>
        </div>
    </div>

    <div class="consultation_right">
        <div class="consultation_title_box">
            <div class="consultation_title" id="title_1">翡翠新闻</div>
            <div class="consultation_title" id="title_2">财经视讯</div>
            <div class="c"></div>
        </div>
        <ul class="consultation_ul" id="consultation_1">
            <div class="consultation_pic">
                <img src="/resource/images/pic_ul_img.jpg" width="280" height="133"
                     alt=""/>
            </div>
            <c:forEach items="${ArticleList_3}" var="article" varStatus="status">
                <c:if test="${status.index+1<ArticleListSize}">
                    <li>
                        <a href="${article[1]}">${article[0]}</a>
                    </li>
                </c:if>
                <c:if test="${status.index+1==ArticleListSize}">
                    <li>
                        <a href="${article[1]}" style="border-bottom: none">${article[0]}</a>
                    </li>
                </c:if>
            </c:forEach>
            <div class="consultation_more">
                <a href="#"><img src="/resource/images/more.png" width="83"
                                 height="25" alt=""/></a>
            </div>
        </ul>
        <ul class="consultation_ul" id="consultation_2">
            <div class="consultation_pic">
                <img src="/resource/images/pic_ul_img.jpg" width="280" height="133"
                     alt=""/>
            </div>
            <c:forEach items="${ArticleList_4}" var="article" varStatus="status">
                <c:if test="${status.index+1<ArticleListSize}">
                    <li>
                        <a href="${article[1]}">${article[0]}</a>
                    </li>
                </c:if>
                <c:if test="${status.index+1==ArticleListSize}">
                    <li>
                        <a href="${article[1]}" style="border-bottom: none">${article[0]}</a>
                    </li>
                </c:if>
            </c:forEach>
            <div class="consultation_more">
                <a href="#"><img src="/resource/images/more.png" width="83"
                                 height="25" alt=""/></a>
            </div>

        </ul>

    </div>
    <div class="c"></div>

</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#title_2").css("background-color", "#909090");
        $("#consultation_2").css("display", "none");
        $(".consultation_title").click(function () {

            $(".consultation_ul").css("display", "none");
            $(".consultation_title").css("background-color", "#00bc00");
            var con_id = $(this).attr("id");
            var num = con_id.replace("title_", "");

            $("#title_" + num).css("background-color", "#909090");
            $("#consultation_" + num).css("display", "block")
        });
        $("#Samp_1").css("border-bottom", "2px solid #fb4646");
        $("#Content_2").css("display", "none");
        $("#Content_3").css("display", "none");
        $(".samp_title").click(function () {


            $(".samp_title").css("border-bottom", "none");
            $(".content").css("display", "none");
            var samp_id = $(this).attr("id");
            var nums = samp_id.replace("Samp_", "");

            $("#Samp_" + nums).css("border-bottom", "2px solid #fb4646");
            $("#Content_" + nums).css("display", "block")

        })

    })
</script>
<!-------主体框架 END------>
<!-- footer -->
<div class="cooperation_all">
    <div class="cooperation">
        <ul>
            <li><samp class="samp_title" id="Samp_1">合作伙伴</samp></li>
            <li><samp class="samp_title" id="Samp_2">担保机构</samp></li>
            <li><samp class="samp_title" id="Samp_3">上市公司</samp></li>
            <div class="c"></div>
        </ul>
        <div class="content" id="Content_1">
            <a href="#" class="bank" target="_blank"><img
                    src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a>
        </div>
        <div class="content" id="Content_2">
            <a href="#" class="bank" target="_blank"><img
                    src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a>
        </div>
        <div class="content" id="Content_3">
            <a href="#" class="bank" target="_blank"><img
                    src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/nongye.jpg" width="119" height="41" alt=""/></a> <a
                href="#" class="bank" target="_blank"><img
                src="/resource/images/jianshe.png" width="119" height="41" alt=""/></a>
        </div>
    </div>

</div>

<jsp:include page="/WEB-INF/views/visitor/communal/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/visitor/communal/footer.jsp"/>

<script>

    $(document).ready(function () {
        $(".myStat").each(function () {
            $(this).circliful({
                dimension: 85,
                backgroundColor: "#eee"
            });
        });

    });

</script>
</body>
</html>
