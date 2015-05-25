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
    </div>
        <link type="text/css" rel="stylesheet" href="/resource/js/My97DatePicker/skin/WdatePicker.css"/>
        <script type="text/javascript" src="/resource/js/My97DatePicker/WdatePicker.js"  defer="defer"></script>
        <div class="title_records title_records_financial">
        
        <%--表单条件提交 --%>
        <form action="myexpenses.htm" id="myForm">
   		<span class="data_box"><samp>交易时间</samp>
        <input type="text" name="beginTime" value="${beginTime}" class="Wdate data" onclick="WdatePicker({maxDate:&#39;#F{$dp.$D(\&#39;in12\&#39;)}&#39;})" readonly id="in11"> 
                        至 
        <input type="text" name="endTime" value="${endTime}" class="Wdate data" onclick="WdatePicker({minDate:&#39;#F{$dp.$D(\&#39;in11\&#39;)}&#39;})" readonly id="in12"> 
        </span>
        <samp  class="style_box">        
   		<samp>类型</samp> 
         <select name="typeId" class="select_style">
			 <option value="">---- 不限 ----</option>
			  <%--<c:forEach items="${types}" var="type">--%>
			  	<%--<option value="${type[0]}" <c:if test="${typeId eq type[0]}">selected</c:if>>${type[1]}</option>--%>
			  <%--</c:forEach>--%>
             <%--限制选择框只能选择"提现.充值" --%>
             <option value="9">提现</option>
             <option value="8">充值</option>
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
              <th>日期</th>
              <th>类型</th>
              <th>支出</th>
              <th>收入</th>
              <th>可用余额</th>
              <th>说明</th>
            </tr>
            <c:forEach items="${expenses}" var="expense">
			  <tr>
			  <td>${expense[1]}</td>
			  <td>${expense[2]}</td>
			  <td>￥<fmt:formatNumber value="${expense[3]}" pattern="0.00" /></td>
			  <td>￥<fmt:formatNumber value="${expense[4]}" pattern="0.00" /></td>
			  <td>￥<fmt:formatNumber value="${expense[5]}" pattern="0.00" /></td>
			  <td>${expense[6]}</td>
			  </tr>
			 </c:forEach>   
          </tbody>
        </table>
    </div>
    <c:if test="${!empty  expenses}">
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
