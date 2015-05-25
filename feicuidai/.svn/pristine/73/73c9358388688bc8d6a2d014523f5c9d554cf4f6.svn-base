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
    
    
       <!-- 填出串口 -->
       <script type="text/javascript" src="/resources/js/loanSign/repayments.js"></script>
       <link rel="stylesheet" type="text/css"href="/resources/css/skin/simple_gray/ymPrompt.css"/>
       <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>


</head>
<body>

<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<script type="text/javascript" src="/resources/js/public_1.js"></script>
<div class="gren"></div>
<!--------注册 Start--------------->
<div class="individual_center_all">
<div class="individual_center">
	<jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
    <div class="right_box">
    <div class="product_finanaial">
    <ul>
    <c:if test="${myMark==1}">
        <li id="Tab_switch_view_1" class="tab_checked">提前还款</li>
        <li id="Tab_switch_view_2" class="tab_switch_view">按时还款</li>
        <li id="Tab_switch_view_3" class="tab_switch_view">逾期还款</li>
    </c:if>
    <c:if test="${myMark==2}">
        <li id="Tab_switch_view_1" class="tab_switch_view">提前还款</li>
        <li id="Tab_switch_view_2" class="tab_checked">按时还款</li>
        <li id="Tab_switch_view_3" class="tab_switch_view">逾期还款</li>
    </c:if>
    <c:if test="${myMark==3}">
        <li id="Tab_switch_view_1" class="tab_switch_view">提前还款</li>
        <li id="Tab_switch_view_2" class="tab_switch_view">按时还款</li>
        <li id="Tab_switch_view_3" class="tab_checked">逾期还款</li>
    </c:if>
        <div class="c"></div>
    </ul>
    <div class="content">
	<p>借款人所有的借款项目都可以申请提前还款，但是要承担相应的违约金。</p>
    </div>
    </div>    
    <div class="content_switch_view content_table_box" id="Content_switch_view_1">
        <table width="100%" border="0" class="table_box" cellpadding="0" cellspacing="0" >
          <tbody>
            <tr>
              <th>借款编号</th>
              <th>年化利率 </th>
              <th>借款期限</th>
              <th>借款时间</th>
              <th>下期还款时间</th>
              <th>下期还款金额</th>
              <th>平台服务费</th>
              <c:if test="${myMark==1}">
              <th>提前还款</th>
              </c:if>
              <c:if test="${myMark==2}">
              <th>按时还款</th>
              </c:if>
              <c:if test="${myMark==3}">
              <th>逾期还款</th>
              </c:if>
            </tr>
            
             <c:if test="${empty myRepaymentList}">
             <tr><td style="border:none;">暂无数据</td></tr>
             </c:if>
            
             <c:forEach items="${myRepaymentList}" var="adv">
		  <tr>
			  <td>${adv.loanSign.loanSignBasics.loanNumber}</td>
			  <td><fmt:formatNumber value="${adv.loanSign.rate*100}" pattern="0"/>%</td>
			  <c:if test="${!empty adv.loanSign.month}">
			  	<td>${adv.loanSign.month}月</td>
			  </c:if>
			  <c:if test="${!empty adv.loanSign.useDay}">
			  	<td>${adv.loanSign.useDay}天</td>
			  </c:if>
			  <td>${adv.loanSign.publishTime}</td>
			  <td>${adv.preRepayDate}</td>
			  <td><fmt:formatNumber value="${adv.money+adv.preRepayMoney}" pattern="0.00"/>元</td>
			  <td><fmt:formatNumber value="${adv.fee}" pattern="0.00"/>元</td>
			  <td><span onclick="judge(${adv.id})" style="color: red;cursor:pointer;">还款</span></td>
		  </tr>
		  </c:forEach>
          </tbody>
        </table>
    </div>
    <form action="myRepaymentListUI" id="myForm">
     <input type="hidden" id="pageNum" name="pageNum"/>
     <input type="hidden" id="myMark" name="myMark" value="${myMark}"/>
      <input type="hidden" id="fatherMenu" name="fatherMenu" value="${fatherMenu}"/>
         <input type="hidden" id="sonMenu" name="sonMenu"  value="${sonMenu}"/>
    </form>
    <c:if test="${!empty myRepaymentList}">
    <jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
    </c:if>
    <div class="c"></div>
    
     <div class="title_table table_finanagement_box bg_no">
        <p>提前还款说明：</p>
        <p>1、提前还款违约金金额为剩余未支付利息的50%；</p>
        <p>2、提前还款违约金由投资者所得；</p>
        <p>3、15点整之前申请提前还款将会在当日16点进行还款，15点整之后申请提前还款将会于次日16点进行还款;</p>
        <p>4、借款标如有逾期，提前还款包含逾期金额及余下未到期的还款总额；</p>
        <p>5、如果您并不是想要把未到期的还款提前，而是想要把有逾期借款还上，则您不需要进行提前还款操作；</p>
    </div> 
  
    </div>
    <div class="c"></div>

</div>

</div>
<!--------注册 End--------------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>
<script type="text/javascript">
//点击切换页面
$(function(){
$(".tab_switch_view").click(function(){
		var this_id=$(this).attr("id");
		/*下面通过一部获取数据*/
		//1 提前还款
		if(this_id=="Tab_switch_view_1"){
		location.href="/loanManagement/myRepaymentController/myRepaymentListUI?myMark=1&fatherMenu=5&sonMenu=4";
		};
		//2 按时还款
		if(this_id=="Tab_switch_view_2"){
		 location.href="/loanManagement/myRepaymentController/myRepaymentListUI?myMark=2&fatherMenu=5&sonMenu=4";
		};
		//3逾期还款
		if(this_id=="Tab_switch_view_3"){
		 location.href="/loanManagement/myRepaymentController/myRepaymentListUI?myMark=3&fatherMenu=5&sonMenu=4";
		};
		});
		
});
//这里的分页也应该一部获取数据
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
