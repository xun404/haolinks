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

<div class="individual_center_all">
<div class="individual_center">
	<jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
    <div class="right_box">
    <div class="title_table">
    <table width="100%" border="0" class="title_table_box financial_table_box" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td colspan="4" class="title_td title_td_left title_bg">债权已赚金额<samp> ¥0.00 </samp>元</td>
          </tr>
        <tr>
          <td class="title_td title_td_left">利息收益</td>
          <td class="title_td title_td_right"><samp>¥0.00</samp>元（0笔）</td>
          <td class="title_td title_td_left">债权账户资产</td>
          <td class="title_td title_td_right"><samp>¥0.00</samp>元（0笔）</td>
        </tr>
        <tr>
          <td class="title_td title_td_left">债权转让盈亏</td>
          <td class="title_td title_td_right"><samp>¥0.00</samp>元（0笔）</td>
          <td class="title_td title_td_left">回收中债权数量</td>
          <td class="title_td title_td_right"><samp>¥0.00</samp>元（0笔）</td>
        </tr>        
      </tbody>
    </table>

    </div>
        <link type="text/css" rel="stylesheet" href="/resource/js/My97DatePicker/skin/WdatePicker.css"/>
        <script type="text/javascript" src="/resource/js/My97DatePicker/WdatePicker.js"  defer="defer"></script>
        <div class="title_records title_records_financial">
        
        <%--表单条件提交 --%>
        <form action="/financeManagement/myInvestController/myDebtListUI" id="myInvestList">
   		<span class="data_box"><samp>交易时间</samp>
        <input type="text" name="timeStart" value="${timeStart}" class="Wdate data" onclick="WdatePicker({maxDate:&#39;#F{$dp.$D(\&#39;in12\&#39;)}&#39;})" readonly id="in11"> 
                        至 
        <input type="text" name="timeEnd" value="${timeEnd}" class="Wdate data" onclick="WdatePicker({minDate:&#39;#F{$dp.$D(\&#39;in11\&#39;)}&#39;})" readonly id="in12"> 
        </span>
        <samp  class="style_box">        
   		<samp>类型</samp> 
         <select  class="select_style" name="subType">
            <option value="-1"></option>
            <option value="1" <c:if test="${subType ==1 }">selected="selected"</c:if>>富担标</option>
            <option value="2" <c:if test="${subType ==2 }">selected="selected"</c:if>>担保</option>
            <option value="3" <c:if test="${subType ==3 }">selected="selected"</c:if>>抵押</option>
            <option value="4" <c:if test="${subType ==4 }">selected="selected"</c:if>>信用</option>
            <option value="5" <c:if test="${subType ==5 }">selected="selected"</c:if>>实地</option>
         </select>
         </samp>       
         <input type="button" value="搜索" class="seach"  onclick="submitForm()"/>
         <input type="hidden" id="pageNum" name="pageNum"/>
         </form>
           	
    </div>
    <div class="content_table_box">
        <table width="100%" border="0" class="table_box" cellpadding="0" cellspacing="0" >
          <tbody>
            <tr>
              <th>产品编号</th>
              <th>投资金额</th>
              <th>年利率</th>
              <th>期限</th>
              <th>收款方式</th>
              <th>起息日期</th>
              <th>状态</th>
              <th>操作</th>
            </tr>
            <c:forEach var="myInvest" items="${myInvestList}">
            <tr>
              <td>${myInvest[0]}</td>
              <td>${myInvest[0]}</td>
              <td>${myInvest[0]}</td>
              <td>${myInvest[0]}</td>
              <td>${myInvest[0]}</td>
              <td>${myInvest[0]}</td>
              <td>${myInvest[0]}</td>
              <td>${myInvest[0]}</td>
            </tr>
            </c:forEach>      
          </tbody>
        </table>
    </div>
    <c:if test="${!empty myInvestList}">
    <jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
    </c:if>
    
    <c:if test="${empty myInvestList}">
    <div align="center">暂无数据！</div>
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
$("#myInvestList").submit();
}
function submitForm(){
$("#pageNum").val(1);
$("#myInvestList").submit();
}
</script>
</body>
</html>
</body>
</html>
