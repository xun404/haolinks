<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<head>
 <meta name="viewport" content="target-densitydpi=device-dpi,width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;"/>
<link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
<link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
<title>个人中心</title>
</head>
<body>
<div class="main">


<!--内容 Start-->

<%--<div class="amount_head_box">--%>
<%--可用余额：2000元--%>
<%--</div>--%>



<div class="individual_center_box">
    <div class="user_name_head">
        <a href="/phoneVisitor/accountCenter" ><c:if test="${empty user.userRelationInfo.imgUrl}">
            <img width="60" height="60" src="/resources/images/img/user.gif" />
        </c:if>
        <c:if test="${!empty user.userRelationInfo.imgUrl}">
            <img width="60" height="60" src="${user.userRelationInfo.imgUrl}"
                 alt="${session_user.userName }"
                 title="${session_user.userName }"/>
        </c:if>
            </a>
        </div>
    <div class="user_box">
   	  <div class="tel">${session_user.userName}</div>
      <p><a href="/phoneVisitor/accountCenter"> 您好！欢迎使用翡翠贷微官网</a></p>
    </div>
    <div class="button_box">
   	  <a href="/phoneVisitor/withdrawView" class="withdrawals">提现</a>
        <div class="c" style="height:0.4em;"></div>
      <a href="/phoneInvest/getPhoneNews" class="recharge">消息(${messagecount})</a>
    </div>
    <div class="c"></div>
</div>

<div class="balance_box">
<a href="#" class="balance">
	<div class="balance_left">可用余额：<fmt:formatNumber value="${empty session_user.userFundInfo.cashBalance ? '0.00':session_user.userFundInfo.cashBalance}" pattern="0.00"/>元</div>
    <div class="balance_right" onclick="myShow_1()">已赚利息：<fmt:formatNumber value="${empty generalIncome ?'0.00':generalIncome}" pattern="0.00"/>元</div>
    <div class="c"></div>
</a>

<a href="#" class="balance">
	<div class="balance_left">账户总额：<fmt:formatNumber value="${session_user.userFundInfo.cashBalance+session_user.userFundInfo.frozenAmtN}" pattern="0.00"/>元</div>
    <div class="balance_right" id="myDiv" onclick="myShow()">  
            待收金额：<fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay+toMoney-manageMoneyWill)?'0.00':(dueGeneralRepay+dueExperienceRepay+toMoney-manageMoneyWill)}" pattern="0.00"/>元
    </div>
    <div class="c"></div>
</a>

</div>

<div class="record_box">

<a href="/phoneInvest/getPhoneInvestList" class="record"><img src="/resource/phone/images/icon_1.png" width="20" height="20" alt=""/> 投资记录</a>
<a href="/phoneInvest/getRechangeList" class="record"><img src="/resource/phone/images/icon_2.png" width="20" height="20" alt=""/> 充值记录</a>
<a href="/phoneInvest/getWithdrawList" class="record"><img src="/resource/phone/images/icon_3.png" width="20" height="20" alt=""/> 提现记录</a>
<a href="/phoneInvest/getPhoneExperienceGold" class="record"><img src="/resource/phone/images/icon_4.png" width="20" height="20" alt=""/> 体验金专区</a>
<a href="/phoneVisitor/bankManagement" class="record"><img src="/resource/phone/images/icon_5.png" width="20" height="20" alt=""/> 银行卡管理</a>

</div>


<!--内容 End-->

</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>

<script type="text/javascript">
function myShow(){
location.href="/phoneInvest/queryPhoneRemainMoney";
}

function myShow_1(){
location.href="/phoneInvest/queryPhoneGetInterest";
}
</script>
</body>
</html>
