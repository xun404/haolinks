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
    <meta charset="utf-8">
    <title>翡翠贷-我的账户</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/financial_management.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/banner.css"/>
    
    
       <!-- 填出串口 -->
       <script type="text/javascript" src="/resources/js/loanSign/repayments.js"></script>
       <link rel="stylesheet" type="text/css"href="/resources/css/skin/simple_gray/ymPrompt.css"/>
       <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>


</head>
<body>

<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>
<div class="registr_all borrow">
<div class="title">首页 > 我要投资</div>

<div class="project">
      <ul>
        <li><span>项目分类：</span><a href="#">全部</a><span>艺投宝</span><span>艺利宝</span><span>VIP</span></li>
        <li><span>项目状态：</span><a href="#">全部</a><span>3可投资</span><span>满标审核中</span><span>还款中</span><span>已还款</span></li>
        <li><span>项目期限：</span><a href="#">全部</a><span>3个月</span><span>6个月</span><span>12个月</span></li>
        <li><span>项目收益：</span><a href="#">全部</a><span>15%以下 </span><span>15%-20%</span><span>20%-24%</span><span>24%以上</span></li>
        <li><span>项目规模：</span><a href="#">全部</a><span>10以下 </span><span>10w-50w </span><span>50w-100w </span><span>100w以上</span></li>
    </ul>
</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$(".project span").click(function(){
		$(".project span").css("color","#6e6e6e");
		$(this).css("color","#fb4646");
		});
	
	});

</script>

<form action="openLoan.htm" id="myForm">
     <input type="hidden" id="pageNum" name="pageNum"/>
</form> 


<div class="investment_all">
    <div class="invertment">
	<table width="1000" border="0" class="table_box" cellpadding="0"cellspacing="0">
            <tbody>
            <c:forEach items="${loanSignList}" var="loanSign">
                <tr>
                    <td class="table_td list_one"><a style="color:#000" href="/loaninfo/getLoanInfo.htm?id=${loanSign[0]}">${loanSign[1]}</a></td>
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
    <c:if test="${!empty loanSignList}">
    <jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
    </c:if>
    </div>
</div>

     

<jsp:include page="/WEB-INF/views/visitor/communal/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/visitor/communal/footer.jsp"/>
<script type="text/javascript">
function jumpPage(pageNum,totalPage){
$("#pageNum").val(pageNum);
$("#myForm").submit();
}
function submitForm(){
$("#pageNum").val(1);
$("#myForm").submit();
}
</script>
</body>
</html>
