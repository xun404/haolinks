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
    <div class="title_table">
    <table width="100%" border="0" class="title_table_box">
      <tbody>
        <tr>
          <td class="title_td title_td_left">招标中的投资：</td>
          <td class="title_td title_td_right"><samp>¥${list_2[0]}</samp>元（${list_2[1]}笔）</td>
          <td class="title_td title_td_left">还款中的投资：</td>
          <td class="title_td title_td_right"><samp>¥${list_3[0]}</samp>元（${list_3[1]}笔）</td>
        </tr>    
        <tr>
          <td class="title_td title_td_left">已完成的投资：</td>
          <td class="title_td title_td_right"><samp>¥${list_4[0]}</samp>元（${list_4[1]}笔）</td>
          <td class="title_td title_td_left">处理中的投资：</td>
          <td class="title_td title_td_right"><samp>¥${list_5[0]}</samp>元（${list_5[1]}笔）</td>
        </tr>    
      </tbody>
    </table>
    </div>
        <link type="text/css" rel="stylesheet" href="/resource/js/My97DatePicker/skin/WdatePicker.css"/>
        <script type="text/javascript" src="/resource/js/My97DatePicker/WdatePicker.js"  defer="defer"></script>
        <div class="title_records title_records_financial">
        
        <%--表单条件提交 --%>
        <form action="myInvestListUI" id="myForm">
   		<span class="data_box"><samp>交易时间</samp>
        <input type="text" name="timeStart" value="${timeStart}" class="Wdate data" onclick="WdatePicker({maxDate:&#39;#F{$dp.$D(\&#39;in12\&#39;)}&#39;})" readonly id="in11"> 
                        至 
        <input type="text" name="timeEnd" value="${timeEnd}" class="Wdate data" onclick="WdatePicker({minDate:&#39;#F{$dp.$D(\&#39;in11\&#39;)}&#39;})" readonly id="in12"> 
        </span>
        <samp  class="style_box">        
   		<samp>类型</samp> 
         <select  class="select_style" name="loanSignTypeId">
            <option value="-1"></option>
            <option value="1" <c:if test="${loanSignTypeId ==1 }">selected="selected"</c:if>>普通标</option>
            <option value="8" <c:if test="${loanSignTypeId ==8 }">selected="selected"</c:if>>体验标</option>
         </select>
         </samp>       
         <input type="button" value="搜索" class="seach"  onclick="submitForm()"/>
         <input type="hidden" id="pageNum" name="pageNum"/>
         <input type="hidden" id="fatherMenu" name="fatherMenu" value="${fatherMenu }"/>
         <input type="hidden" id="sonMenu" name="sonMenu"  value="${sonMenu}"/>
         </form>
           	
    </div>
    <div class="content_table_box">
        <table width="100%" border="0" class="table_box" cellpadding="0" cellspacing="0" >
          <tbody>
            <tr>
              <th>借款编号</th>
              <th>投资金额</th>
              <th>年利率</th>
              <th>期限</th>
              <th>收款方式</th>
              <th>起息日期</th>
              <th>标的类型</th>
              <th>投资合同</th>
            </tr>
            <c:forEach var="myInvest" items="${myInvestList}">
            <tr>
              <td>${myInvest[0]}</td>
              <td>${myInvest[1]}元</td>
              <td>${myInvest[2]*100}%</td>
              <td>${myInvest[3]}个月</td>
              <td>${myInvest[4]}</td>
              <td>${myInvest[5]}</td>
              <td>
              <c:if test="${myInvest[7]==1}">普通标</c:if>
              <c:if test="${myInvest[7]==8}">体验标</c:if>
              </td>
              <td>
              <c:if test="${myInvest[7]==1}">合同</c:if>
              <c:if test="${myInvest[7]==8}">--</c:if>
              </td>
            </tr>
            </c:forEach>      
          </tbody>
        </table>
    </div>
    <c:if test="${!empty myInvestList}">
    <jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
    </c:if>
    </div>
    <div class="c"></div>
</div>

</div>
<!--------注册 End--------------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>
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
