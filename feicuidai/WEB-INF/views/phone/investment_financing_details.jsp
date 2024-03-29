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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>
    <link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
    
    <script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="/resource/js/jquery/jquery.circliful.phone.js"></script>
    <script type="text/javascript" src="/resources/js/plank.js"></script>
    <link rel="stylesheet" type="text/css"href="/resource/phone/ymPrompt/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resource/js/ymPrompt.js"></script>
    
    
    <title>投资页面</title>
</head>
<body>
<div class="main">

<!--内容 Start-->
<div class="thead_box">

<div class="thead_left" style="float:left;width:70%;">
	<div class="thead_on">${loan.loanSignBasics.loanTitle}<samp>( 发布: ${publishTime} ) </samp></div>
    <div class="thead_under">
    	<p>编号：${loan.loanSignBasics.loanNumber}</p>
    	<c:if test="${loanSignType8 ==1}">
    	<p>担保：${loan.loanSignBasics.assure}</p>
    	</c:if>
    </div>
</div>
<%-- 
 <div class="thead_right" style="padding-top:30px; width:30%;">


 <div class="myStat" style="display: inline-block; height: 50px" data-width="10" 
  data-fontsize="10" data-percent="${(firstNumber/secondNumber)*100}"
  <c:if test="${(firstNumber/secondNumber)*100 == 100}">data-text="<fmt:formatNumber value='${(firstNumber/secondNumber)*100}' pattern='0'/>%"</c:if>
  <c:if test="${(firstNumber/secondNumber)*100 != 100}">data-text="<fmt:formatNumber value='${(firstNumber/secondNumber)*100}' pattern='0.0'/>%"</c:if>
  >
  </div>	

</div>
--%>
<div class="c"></div>

</div>

<div class="nums_box">
    <div class="list_box">
    	<p class="p1"><img src="/resource/phone/images/p_1.png" width="27" height="24" alt=""/>项目总额</p>
        <p class="p2">${loan.issueLoan}元</p>
    </div>
    <div class="list_center_box list_box">
    	<p class="p1"><img src="/resource/phone/images/p_2.png" width="27" height="24" alt=""/>年利率</p>
        <p class="p2">${loan.rate*100}%</p>    
    </div>
    <div class="list_box">
     	<p class="p1"><img src="/resource/phone/images/p_3.png" width="24" height="24" alt=""/>还款期限</p>
        <p class="p2">${loan.month}个月</p>   
    </div>
    <div class="c"></div>
</div>

<div class="content_ul_box">
	<div class="list_div">
    	<div class="left_box">投标人数</div>
        <div class="right_box">${buyCount }人</div>
        <div class="c"></div>
    </div>
    
    <div class="list_div">
    	<div class="left_box">投标进度</div>
        <div class="right_box">
        <fmt:formatNumber value="${empty firstNumber ? 0.00:(firstNumber/secondNumber)*100}" pattern="0.00" /> 
        %</div>
        <div class="c"></div>
    </div>
    
    <div class="list_div">
    	<div class="left_box">还款方式</div>
        <div class="right_box">先息后本</div>
        <div class="c"></div>
    </div>
    
    <div class="list_div">
    	<div class="left_box">剩余可投金额</div>
        <div class="right_box">
        <fmt:formatNumber value="${reMoney}" pattern="0" /> 
        元</div>
        <div class="c"></div>
    </div>
    
   
</div>

<div class="zijin_box">
    <div class="zijin_left_box" >
    <input type="text"  id="investMoney" name="money" style="outline:none;border:none;border-radius:5px; height: 38px;margin: 1px 5px 0 10px; color: #555; float: left;margin:0px; width:100%;"  placeholder="最小投资额为${loan.loanUnit}" />
    </div>
    <c:if test="${loanSignType8 ==1}">
    	<div class="zijin_right_box">可用余额：
    	 <fmt:formatNumber value="${money}" pattern="0.00" /> 
    	元</div>
    </c:if>
    <c:if test="${loanSignType8 ==8}">
    	<div class="zijin_right_box">体验金余额：
    	<fmt:formatNumber value="${experienceGold}" pattern="0" />
    	元</div>
    </c:if>
    
    <div class="c"></div>
</div>


<%--隐藏域 --%>
<input type="hidden" id="loanid" name="id" value="${loan.id}" />
								
<input type="hidden" id="loanuserId" name="loanuserId" value="${loan.userBasicsInfo.id }" /> 

<input type="hidden" id="userId" name="userId" value="${session_user.id}" /> 

<input type="hidden" id="effective" name="effective" value="${maxMoney}" /> 

<input type="hidden" id="logo" value="${logo}" /> 

<input type="hidden" id="minmoney" name="minmoney" value="${loan.loanUnit }" />

<input type="hidden" id="loanSignType8" name="loanSignType8" value="${loanSignType8}" />

<input type="hidden" id="experienceGold" name="experienceGold" value="${experienceGold}" />

<!-- 这里存储重复提交标示 -->
<input type="hidden" id="repeatLoanMark" name="repeatLoanMark" value="${repeatLoanMark}" />

<input type="hidden" value="${money}" id="accountBalance" />


<c:if test="${loan.loanState == 2 && reMoney > 0 && isTimeEndMark == 1}">
<a id="invest_now_phone" href="javascript:void(0);" class="button_style">立即投资</a>
</c:if>

<!--内容 End-->
</div>
<div class="co_text"></div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>

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
