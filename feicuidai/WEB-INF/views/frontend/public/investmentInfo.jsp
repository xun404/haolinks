<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="clear"></div>
<!-------banner START------>
<div class="investment_alls">

    <div class="invertment">
        <a href="#" class="inver_itm">
            <div class="inver_itm_left">
                <div class="inver_img"><img src="/resource/images/inoer_1.png" width="90" height="90" alt=""/></div>
                <div class="inver_right">
                    <div class="inver_title">经营理念</div>
                    <div class="inter_text"><div>致力于搭建投资者最安全理财平台</div>致力于解决玉石行业融资难融资贵问题</div>
                </div>

            </div>
        </a>
        <a href="#" class="inver_itm">
            <div class="inver_itm_lcenter">
                <div class="inver_img"><img src="/resource/images/inoer_2.png" width="90" height="90" alt=""/></div>
                <div class="inver_right">
                    <div class="inver_title">开创先河</div>
                    <div class="inter_text"> <div>玉石+互联网+金融</div>
                        开创中国首家玉石行业互联网金融平台</div>
                </div>
                <div class="c"></div>
            </div>
        </a>
        <a href="#" class="inver_itm">
            <div class="inver_itm_right">
                <div class="inver_img"><img src="/resource/images/inoer_3.png" width="90" height="90" alt=""/></div>
                <div class="inver_right">
                    <div class="inver_title">安全保障</div>
                    <div class="inter_text"><div>100%无条件先行垫付本息</div>
                        专做升值潜力大的精品玉石质押标</div>
                </div>
                <div class="c"></div>
            </div>
        </a>
        <div class="c"></div>
    </div>

</div>

<!--投资信息区 start-->

<style>
.invertment .table_box .list_two {
    background: url("/resource/images/ti.png") no-repeat scroll 10px 25px rgba(0, 0, 0, 0);
    line-height: 97px;
    text-indent: 30px;
}
</style>
<c:if test="${!empty loanSignListGold}">
<!--体验专区 START-->
<div class="investment_all">
    <div class="invertment">
        <div class="title_head">
            <span>体验专区</span>
            <%-- 
            距离下一次发标还有<samp>12</samp>小时<samp>24</samp>分<samp>12</samp>秒--%>
            <%--<a href="#">了解详情</a>--%>
        </div>
        <table width="100%" border="0" class="table_box" cellpadding="0" cellspacing="0">
            <tbody>
            <c:forEach items="${loanSignListGold}" var="loanSign">
                <tr>
                    <td class="table_td list_two"><a style="color:#6e6e6e;width: 160px"
                                                     href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}">${loanSign[1]}</a></td>
                    <td class="table_td">体验金额：${loanSign[3]}元</td>
                    <td class="table_td">${loanSign[5]}个月</td>
                    <td class="table_td">年化利率${loanSign[2]*100}%</td>
                    <c:if test="${loanSign[10] == 1 }">
                    <td class="table_td">一次性还款</td>
                    </c:if>
                     <c:if test="${loanSign[10] == 2 }">
                    <td class="table_td">先息后本</td>
                    </c:if>
                    <td class="table_td">
                      <div style="height: 35px">
                            <div class="myStat" style="display: inline-block; height: 50px" data-width="10" 
                                 data-fontsize="10" data-percent="${(loanSign[9]/loanSign[3])*100}"
                                 <c:if test="${(loanSign[9]/loanSign[3])*100 == 100}">data-text="<fmt:formatNumber value='${(loanSign[9]/loanSign[3])*100}' pattern='0'/>%"</c:if>
                                 <c:if test="${(loanSign[9]/loanSign[3])*100 != 100}">data-text="<fmt:formatNumber value='${(loanSign[9]/loanSign[3])*100}' pattern='0.0'/>%"</c:if>
                                 >
                                 </div>
                    </div>
                    </td>
                    <td class="table_td">
                       <c:if test="${loanSign[4]==3}">
                          <%-- 
                          <p>成功交易时间</p><p>${loanSign[11]}</p>
                          --%>
                           <a href="#" class="color_chang" style="background: none repeat scroll 0 0 #a7a7a7;">还款中</a>
                        </c:if>
                        <c:if test="${loanSign[4]==2&&loanSign[3]>loanSign[9]}">
                            <a href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}" class="color_chang">我要投资</a>
                        </c:if>
                        <c:if test="${loanSign[4]==4}">
                            <a href="#" class="color_chang" style="background: none repeat scroll 0 0 #a7a7a7;">还款完成</a>
                        </c:if>
                        <c:if test="${loanSign[4]==2&&loanSign[3]==loanSign[9]}">
                            <a href="#" class="color_chang" style="background: none repeat scroll 0 0 #a7a7a7;">满标复审中</a>
                        </c:if>
                    </td>
                   
                </tr>
              
            </c:forEach>
            </tbody>
        </table>

    </div>
</div>
<!--体验专区 END-->
</c:if>


<c:if test="${!empty loanSignList}">
<!--理财项目 START-->
<div class="investment_all">
    <div class="invertment">
        <div class="title_head">
            <span>理财项目</span>
            <%-- 
            距离下一次发标还有<samp>12</samp>小时<samp>24</samp>分<samp>12</samp>秒--%>
             <a href="/loaninfo/openLoan.htm" style="border:none;">更多+</a>
        </div>
        <table width="100%" border="0" class="table_box" cellpadding="0" cellspacing="0">
            <tbody>
            <c:forEach items="${loanSignList}" var="loanSign">
            
            <c:if test="${loanSign[13]==1 }">
                <tr>
                    <td class="table_td list_one"><a style="color:#6e6e6e;width:
                    160px"href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}">${loanSign[1]}</a></td>
                    <td class="table_td">借款金额：${loanSign[3]}元</td>
                    <td class="table_td">${loanSign[5]}个月</td>
                    <td class="table_td">年化利率${loanSign[2]*100}%</td>
                    <c:if test="${loanSign[10] == 1 }">
                    <td class="table_td">一次性还款</td>
                    </c:if>
                     <c:if test="${loanSign[10] == 2 }">
                    <td class="table_td">先息后本</td>
                    </c:if>
                    <td class="table_td">
                     <div style="height: 35px">
                            <div class="myStat" style="display: inline-block; height: 50px" data-width="10" 
                                 data-fontsize="10" data-percent="${(loanSign[9]/loanSign[3])*100}"
                                 <c:if test="${(loanSign[9]/loanSign[3])*100 == 100}">data-text="<fmt:formatNumber value='${(loanSign[9]/loanSign[3])*100}' pattern='0'/>%"</c:if>
                                 <c:if test="${(loanSign[9]/loanSign[3])*100 != 100}">data-text="<fmt:formatNumber value='${(loanSign[9]/loanSign[3])*100}' pattern='0.0'/>%"</c:if>
                                 >
                                 </div>
                    </div>
                    </td>
                    
                   
                    <td class="table_td">
                    <c:if test="${loanSign[4]==3}">
                          <a href="#" class="color_chang" style="background: none repeat scroll 0 0 #a7a7a7;">还款中</a>
                    </c:if>
                        <c:if test="${loanSign[4]==2&&loanSign[3]>loanSign[9]}">
                            <a href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}" class="color_chang">我要投资</a>
                        </c:if>
                        <c:if test="${loanSign[4]==4}">
                            <a href="#" class="color_chang" style="background: none repeat scroll 0 0 #a7a7a7;">还款完成</a>
                        </c:if>
                        <c:if test="${loanSign[4]==2&&loanSign[3]==loanSign[9]}">
                            <a href="#" class="color_chang" style="background: none repeat scroll 0 0 #a7a7a7;">满标复审中</a>
                        </c:if>
                    </td>
                   
                </tr>
                </c:if>
            </c:forEach>

            </tbody>
        </table>

    </div>
</div>
<!--理财项目 END-->
</c:if>

<!--投资信息区 end-->