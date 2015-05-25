<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/my_account.css"/>
    <link rel="stylesheet" type="text/css" href="/resource/css/vipcenter.css"/>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
        <div class="user_box">
           
<!-- 右侧子内容 Start-->
<div class="innerTitle">
  <div >
      <span id="welcome" class="rspan">下午好，用户${session_user.userName}！</span>
     
     <a href="<%=basePath %>accountManagement/userInfo/securitySettings?fatherMenu=2&sonMenu=3">
      <span id="userlevel" class="ispan" style="width:auto;cursor: pointer;">
         
          <c:if test="${!empty user.userRelationInfo.cardId }">
          <img src="/resource/images/id.png" alt="身份认证" />
          </c:if>
           <c:if test="${empty user.userRelationInfo.cardId || fn:length(user.userRelationInfo.cardId)<=0}">
         <img src="/resource/images/id_1.png" alt="身份未认证" />
          </c:if>
          <c:if test="${!empty requestScope.user.userRelationInfo.phone}">
          <img src="/resource/images/phonenumber.png" alt="手机认证" />
          </c:if>
           <c:if test="${empty user.userRelationInfo.phone}">
          <img src="/resource/images/phonenumber_1.png" alt="手机未认证" />
          </c:if>
          <c:if test="${bool }">
         <img src="/resource/images/safety.png" alt="安全设置认证" />
          </c:if>
           <c:if test="${!bool }">
          <img src="/resource/images/safety_1.png" alt="安全设置未认证" />
          </c:if>
          <c:if test="${session_user.userRelationInfo.emailisPass==1 }">
          <img src="/resource/images/e-mail.png" alt="邮件认证" />
          </c:if>
           <c:if test="${session_user.userRelationInfo.emailisPass!=1 }">
           <img src="/resource/images/e-mail_1.png" alt="邮件未认证" />
          </c:if>
          
          <%-- 
          <img src="/resource/images/id.png" alt="身份认证" />
          <img src="/resource/images/phonenumber.png" alt="手机认证" />
          <img src="/resource/images/safety_1.png" alt="征信认证" />
          <img src="/resource/images/e-mail_1.png" alt="邮件认证" />--%>
          &nbsp;&shy;
      </span></a>
      <span class="rspan vspan">| </span>
      <span id="change_level" class="rspan">安全等级：
      <c:choose>  
       <c:when test="${ session_user.userRelationInfo.emailisPass==1  
       &&  bool
       && !empty requestScope.user.userRelationInfo.phone 
       && !empty user.userRelationInfo.cardId }">   
                     高
       </c:when> 
       <c:when test="${ session_user.userRelationInfo.emailisPass!=1  
       &&  !bool
       && empty requestScope.user.userRelationInfo.phone 
       && empty user.userRelationInfo.cardId }">
                       低     
       </c:when>  
       <c:otherwise> 
                      中
       </c:otherwise> 
    </c:choose>  
      &nbsp;&nbsp;<a href="<%=basePath %>accountManagement/userInfo/securitySettings?fatherMenu=2&sonMenu=3" >[提升]</a>
      </span>
      <span id="login_time" class="rspan">上次登录时间:${fn:substring(loginLog.loginTime,0,10) }</span>
  </div>
    <div class="dotline"></div>
</div>

<div class="clear"></div>
<!--账户情况-->
   <div class="accinfo">
     
      <div style="width:70%;float:left;">
      <div class="br acc1" >
       <div class="money_label">
         <span class="rspan hw">可用金额：</span><span class="rspan tw">
         <fmt:formatNumber value="${empty user.userFundInfo.cashBalance ? '0.00':user.userFundInfo.cashBalance}" pattern="0.00"/>
         元</span>
         <div class="clear"></div>
         <div class="vline"></div>
         <div class="clear"></div>
         <span class="rspan hw">冻结金额：</span><span class="rspan tw">
         <fmt:formatNumber value="${empty user.userFundInfo.frozenAmtN ? '0.00':user.userFundInfo.frozenAmtN}"  pattern="0.00"/>
         元</span>
         <div class="clear"></div>
         <span class="rspan hw">待收本金：</span><span class="rspan tw">
         <fmt:formatNumber value="${empty toMoney?'0.00':toMoney}" pattern="0.00"/>
                           元</span>
         <div class="clear"></div>
         <span class="ispan">&nbsp;&shy;<img src="/resource/images/+.png" alt="待收利息" /> </span> <span class="rspan" style="width:30%;margin:0px;">待收利息：</span>
         <span class="rspan tw">
         <fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay)?'0.00':(dueGeneralRepay+dueExperienceRepay)}" pattern="0.00"/>
         元</span>
     </div>
     <div class="buttons">
           <span class="rspan" style="color:#00bc00;"><strong>体验金：</strong>
           <fmt:formatNumber value="${empty user.userFundInfo.experienceGold ? '0.00':user.userFundInfo.experienceGold}" pattern="0.00"/>
           元</span>
            <div class="clear"></div>
         <div class="vline"></div>
           <a href="/fundManagement/recharge/openRecharge?fatherMenu=3&sonMenu=1">充值</a>
           <a href="/fundManagement/withdraw/openWithdraw?fatherMenu=3&sonMenu=2" style="background-color: #9bb79b">提现</a>
     </div>
 </div>
   <div class="br acc1" style="height:2.3em;">
       <div class="money_label">
       <span class="ispan">&nbsp;&shy;<img src="/resource/images/=.png" alt="账户总资产" /></span> <span class="rspan" style="width:30%;margin:0px;color:#00b000">账户总资产：</span>
       <span class="rspan tw">
       <fmt:formatNumber value="${user.userFundInfo.cashBalance+user.userFundInfo.frozenAmtN+toMoney+dueGeneralRepay+dueExperienceRepay}" pattern="0.00"/>
       元</span></div>


   </div>
    </div>

    <div class="br acc2">
        <div class="acc2_list_box">
            <div class="bg_div"><img src="/resource/images/zhuan1.png" /></div>
            <div class="money_num"><strong>
            <fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay+generalIncome+experienceIncome) ?'0.00':(dueGeneralRepay+dueExperienceRepay+generalIncome+experienceIncome)}" pattern="0.00"/>
            元</strong></div>
           <div class="clear" style="height:4px;margin:0;padding:0;">&nbsp;</div>
           <table style="width:100%;">
           <tr style="width:50%;">
           <td align="right"><fmt:formatNumber value="${empty (generalIncome+experienceIncome) ?'0.00':(generalIncome+experienceIncome)}" pattern="0.00"/>
            元 </td>
           <td align="left"><img src="/resource/images/yizhuan.png" /></td>
           </tr>
           <tr style="width:50%;">
           <td align="right"><fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay) ?'0.00':(dueGeneralRepay+dueExperienceRepay)}" pattern="0.00"/>
            元 </td>
           <td align="left"><img src="/resource/images/daishou.png" /></td>
           </tr>
           </table> 
           <%-- 
            <span class="yizhuan">
            <fmt:formatNumber value="${empty (generalIncome+experienceIncome) ?'0.00':(generalIncome+experienceIncome)}" pattern="0.00"/>
            元 <img src="/resource/images/yizhuan.png" /></span>
            <span class="daishou">
            <fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay) ?'0.00':(dueGeneralRepay+dueExperienceRepay)}" pattern="0.00"/>
            元 <img src="/resource/images/daishou.png" /></span>--%>

        </div>
    </div>
</div>

<div class="clear"></div>
<!--投资统计-->
<div class="br acc2 investU" style="width:98%;height:9em;margin-left:0;margin-top:2em;">
    <div class="dimg">
       <img src="/resource/images/tou.png" width="63" alt="投资资金" />
    </div>
    <p style="margin-left:2em;width:18%;" title="这里放入提示">投资进行中总额:<br />
    <fmt:formatNumber value="${ empty (lentBid+recoveryLoan) ? '0.00':(lentBid+recoveryLoan)}" pattern="0.00"/>
    元</p>
    <div class="hline"></div>
    <div class="dimg">
        <img src="/resource/images/zhuan.png" width="63" alt="利润" />
    </div>
    <p style="margin-left:2em;">收取利息
        <br /><fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay+generalIncome+experienceIncome) ?'0.00':(dueGeneralRepay+dueExperienceRepay+generalIncome+experienceIncome)}" pattern="0.00"/>元
    </p>
    <p class="p2">=</p>
    <p>已收利息
        <br /><fmt:formatNumber value="${empty (generalIncome+experienceIncome) ?'0.00':(generalIncome+experienceIncome)}" pattern="0.00"/>元
    </p>
    <p class="p2">+</p>
    <p>待收利息
        <br /><fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay) ?'0.00':(dueGeneralRepay+dueExperienceRepay)}" pattern="0.00"/>元
    </p>

</div>
<div class="clear"></div>
<!--底部表格
<div class="revA">
<span style="font-size:1.1em;"><a href="#">最新投资</a></span>
    <span style="float:right;"><a href="#">更多投资</a></span>
</div>-->
<div class="revList">
 <table class="gridtable">

     <tr style="height: 10px">
         <th rowspan="2">项目名称</th>
         <th rowspan="2">项目类型</th>
         <th rowspan="2">还款方式</th>
         <th rowspan="2">年利率</th>
         <th>还款进度</th>
         <th rowspan="2">下期还款日期</th>
         <th rowspan="2">待收本金</th>
         <th rowspan="2">待收利息</th>
     </tr>
    <tr style="height: 10px"><th>待还期数/总期数</th></tr>
    <c:forEach items="${dailist}" var="myInvest">
    
    <tr>
       
        <td>
        <a>
        <a style="cursor: pointer;" href="/loaninfo/getLoanInfo.htm?id=${myInvest[0]}">${myInvest[1]}</a>
        </a>        
        </td>
        <td>
        <c:if test="${myInvest[8] == 1 }">普通标</c:if>
        <c:if test="${myInvest[8] == 8 }">体验标</c:if>
        </td>
         <td>先息后本</td>
         <td><fmt:formatNumber pattern="0.00" value="${myInvest[3]*100}"></fmt:formatNumber>%</td>
         <td>${myInvest[9]}/${myInvest[4]}
         </td>
         <td>${myInvest[10]}</td>
         <td>
         <c:if test="${myInvest[8] == 1 }">
         <fmt:formatNumber pattern="0.00" value="${myInvest[5] == null ? 0: myInvest[5]}"></fmt:formatNumber>元
         </c:if>
          <c:if test="${myInvest[8] == 8 }">
         <fmt:formatNumber pattern="0.00" value="0"></fmt:formatNumber>元
         </c:if>
         </td>
         <td>
         <fmt:formatNumber pattern="0.00" value="${myInvest[6]}"></fmt:formatNumber>元
         </td>
     </tr>
    </c:forEach>
    
    <c:if test="${empty dailist}"><tr><td colspan="7">暂无数据!</td></tr></c:if>

 </table>
</div>

<!-- 右侧子内容 end -->
        </div>
        </div>
        <div class="c"></div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
