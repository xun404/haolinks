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
    <link type="text/css" rel="stylesheet" href="/resource/css/banner.css"/>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

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

<!--体验专区 START-->
<div class="investment_all">
    <div class="invertment">
        <div class="title_head">
            <span>体验专区</span>
            距离下一次发标还有<samp>12</samp>小时<samp>24</samp>分<samp>12</samp>秒
            <a href="#">了解详情</a>
        </div>
        <table width="100%" border="0" class="table_box" cellpadding="0" cellspacing="0">
            <tbody>
            <tr>
                <td width="19%" class="table_td list_one">翡翠贷1503190002</td>
                <td width="19%" class="table_td">借款金额：10,000,000.00元</td>
                <td width="11%" class="table_td">12个月</td>
                <td width="12%" class="table_td">年化利率14.1%</td>
                <td width="13%" class="table_td">一次性还款</td>
                <td width="11%" class="table_td"><img src="/resource/images/load.png" width="65" height="64" alt=""/>
                </td>
                <td width="15%" class="table_td"><a href="user_evaluation.html" class="color_chang">我要投资</a></td>
            </tr>
            <tr>
                <td class="table_td list_one">翡翠贷1503190002</td>
                <td class="table_td">借款金额：10,000,000.00元</td>
                <td class="table_td">12个月</td>
                <td class="table_td">年化利率14.1%</td>
                <td class="table_td">一次性还款</td>
                <td class="table_td"><img src="/resource/images/load.png" width="65" height="64" alt=""/></td>
                <td class="table_td"><p>成功交易时间</p>

                    <p>2015-04-15 17：57</p></td>
            </tr>
            <tr>
                <td class="table_td no_td_bor list_one">翡翠贷1503190002</td>
                <td class="table_td no_td_bor">借款金额：10,000,000.00元</td>
                <td class="table_td no_td_bor">12个月</td>
                <td class="table_td no_td_bor">年化利率14.1%</td>
                <td class="table_td no_td_bor">一次性还款</td>
                <td class="table_td no_td_bor"><img src="/resource/images/load.png" width="65" height="64" alt=""/></td>
                <td class="table_td no_td_bor"><p>成功交易时间</p>

                    <p>2015-04-15 17：57</p></td>
            </tr>

            </tbody>
        </table>

    </div>
</div>
<!--体验专区 END-->


<!--理财项目 START-->
<div class="investment_all">
    <div class="invertment">
        <div class="title_head">
            <span>理财项目</span>
            距离下一次发标还有<samp>12</samp>小时<samp>24</samp>分<samp>12</samp>秒
            <a href="/loaninfo/openLoan.htm" style="border:none;">更多+</a>
        </div>
        
        <table width="1000" border="0" class="table_box" cellpadding="0"cellspacing="0">
            <tbody>
            <c:forEach items="${loanSignList}" var="loanSign">
                <tr>
            
                    <td class="table_td list_one"><a style="color:#000"href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}">${loanSign[1]}</a></td>
                    <td class="table_td">借款金额：${loanSign[3]}元</td>
                    <td class="table_td">${loanSign[5]}个月</td>
                    <td class="table_td">年化利率${loanSign[2]*100}%</td>
                    <td class="table_td">一次性还款</td>
                    <td class="table_td">
                    <div style="height: 35px">
                            <div class="myStat" style="display: inline-block;" data-width="10"
                                 data-fontsize="15" data-percent="${(loanSign[9]/loanSign[3])*100}"
                                 data-text="<fmt:formatNumber value='${(loanSign[9]/loanSign[3])*100}' pattern='0'/>%"></div>
                    </div>
                    </td>
                    <c:if test="${loanSign[4]==3}">
                    <td class="table_td"><p>成功交易时间</p><p>2015-04-15 17：57</p></td>
                    </c:if>
                   <c:if test="${loanSign[4]!=3}">
                    <td class="table_td">
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
                   </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>
</div>
<!--理财项目 END-->
<div class="switch_content">
    <div class="title_list">
        <div class="this_li">专家顾问团队
            <div class="bg_00">
                <img src="/resource/images/main_intex_title_bg.png" width="32" height="38" alt=""/>
            </div>
            <span>权威铸就信任，经验创造财富</span>
            <a href="#">更多+</a>
        </div>

    </div>


    <div class="rollBox">
        <a href="javascript:;" onmousedown="ISL_GoDown()" onmouseup="ISL_StopDown()" onmouseout="ISL_StopDown()"
           class="img1" hidefocus="true"></a>

        <div class="Cont" id="ISL_Cont">
            <div class="ScrCont">
                <div id="List1">
                    <!-- 图片列表 begin -->
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <div class="pic">
                        <a href="#" target="_blank"><img src="/resource/images/team_pic_01.jpg" width="155" height="155"
                                                         alt=""/></a>

                        <p>顾永骏</p>

                        <p>中国工艺美术大师</p>

                        <p>著名玉坛泰斗</p>
                    </div>
                    <!-- 图片列表 end -->
                </div>
                <div id="List2"></div>
            </div>
        </div>
        <a href="javascript:;" onmousedown="ISL_GoUp()" onmouseup="ISL_StopUp()" onmouseout="ISL_StopUp()" class="img2"
           hidefocus="true"></a>
    </div>


    <!--<div class="content_peole_box">

        <ul>
            <a href="#" class="left">left</a>
            <li><img src="/resource/images/team_pic_01.jpg" width="155" height="155" alt=""/><p>顾永骏</p><p>中国工艺美术大师</p><p>著名玉坛泰斗</p></li>
            <li><img src="/resource/images/team_pic_01.jpg" width="155" height="155" alt=""/><p>顾永骏</p><p>中国工艺美术大师</p><p>著名玉坛泰斗</p></li>
            <li><img src="/resource/images/team_pic_01.jpg" width="155" height="155" alt=""/><p>顾永骏</p><p>中国工艺美术大师</p><p>著名玉坛泰斗</p></li>
            <li><img src="/resource/images/team_pic_01.jpg" width="155" height="155" alt=""/><p>顾永骏</p><p>中国工艺美术大师</p><p>著名玉坛泰斗</p></li>
           <a href="#" class="right">right</a>
            <div></div>
        </ul>
    </div>-->


</div>

<!--------公告、咨询 START---------->
<div class="list_content_text">
    <div class="notice_left">
        <div class="notice">
            <h3 class="notice_h3">官方公告<a href="#"><img src="/resource/images/more.png" width="83" height="25"
                                                       alt=""/></a></h3>
            <ul>
                <li><a href="#">万元悬赏——珠宝贷口号征集令发布！<img src="/resource/images/hot.png" width="27" height="14" alt=""/></a><span>[2015-03-05]</span>
                </li>
                <li><a href="#">翡翠贷2015年春节放假公告</a><span>[2015-02-13]</span></li>
                <li><a href="#">关于珠宝贷恢复正常访问的公告</a><span>[2015-02-12]</span></li>
                <li><a href="#">关于珠宝贷恢复正常访问的公告</a><span>[2015-02-12]</span></li>
                <li style="border-bottom:none;"><a href="#">关于珠宝贷系统升级的通知</a><span>[2015-02-12]</span></li>
            </ul>
        </div>

    </div>

    <div class="notice_left notice_right">
        <div class="notice">
            <h3 class="media_h3">媒体报道<a href="#"><img src="/resource/images/more.png" width="83" height="25"
                                                      alt=""/></a></h3>
            <ul>
                <li><a href="#">万元悬赏——珠宝贷口号征集令发布！<img src="/resource/images/hot.png" width="27" height="14" alt=""/></a><span>[2015-03-05]</span>
                </li>
                <li><a href="#">翡翠贷2015年春节放假公告</a><span>[2015-02-13]</span></li>
                <li><a href="#">关于珠宝贷恢复正常访问的公告</a><span>[2015-02-12]</span></li>
                <li><a href="#">关于珠宝贷恢复正常访问的公告</a><span>[2015-02-12]</span></li>
                <li style="border-bottom:none;"><a href="#">关于珠宝贷系统升级的通知</a><span>[2015-02-12]</span></li>
            </ul>
        </div>

    </div>

    <div class="c"></div>

</div>

<!------合作伙伴 START------>
<div class="cooperation_all">
    <div class="cooperation">
        <div class="title">合作伙伴</div>
        <div class="content">
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
            <a href="#" class="bank" target="_blank"><img src="/resource/images/jianshe.png" width="119" height="41"
                                                          alt=""/></a>
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
                dimension: 80,
                backgroundColor: "#eee"
            });
        });

    });

</script>
</body>
</html>
