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
    <link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>


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
    <table width="100%" border="0" class="title_table_box financial_table_box" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td colspan="3" class="title_td title_td_left title_bg">借款总金额 <samp>
           ¥
           <fmt:formatNumber pattern="00.00" value="${loanSum }"></fmt:formatNumber>
           </samp>元</td>
          </tr>
        <tr>
          <td width="195" class="title_td title_td_left">逾期金额 </td>
          <td width="253" class="title_td title_td_right title_td_center">待还金额 </td>
          <td width="280" class="title_td title_td_right">近30天应还金额</td>
        </tr>
        <tr>
          <td class="title_td title_td_left"><span class="title_td title_td_right">
          <samp>¥
          <fmt:formatNumber pattern="00.00" value="${overdueLoan }"></fmt:formatNumber>
          </samp>元</span></td>
          <td class="title_td title_td_right title_td_center">
          <samp>¥
          <fmt:formatNumber pattern="00.00" value="${stayMoney }"></fmt:formatNumber>
          </samp></td>
          <td class="title_td title_td_right">
          <samp>¥
          <fmt:formatNumber pattern="00.00" value="${getStayMoney30}"></fmt:formatNumber>
          </samp>元</td>
        </tr>        
      </tbody>
    </table>

    </div>
	<div class="display">您最近<samp>10</samp>天内有 <samp>${stayMoney10count}</samp>笔 借款须归还，总额 <samp>￥<fmt:formatNumber pattern="00.00" value="${getStayMoney10 }"></fmt:formatNumber></samp>元</div>    

   <%--表单条件提交 --%>
   <div class="title_records title_records_financial">
        <form action="myLoanListUI" id="myForm">
        <samp  class="style_box">        
   		<samp>类型</samp> 
         <select  class="select_style" name="loanState">
            <option value="-1">--选择--</option>
            <option value="1" <c:if test="${loanState ==1 }">selected="selected"</c:if>>未发布</option>
            <option value="2" <c:if test="${loanState ==2 }">selected="selected"</c:if>>进行中</option>
            <option value="3" <c:if test="${loanState ==3 }">selected="selected"</c:if>>还款中</option>
            <option value="4" <c:if test="${loanState ==4 }">selected="selected"</c:if>>已完成</option>
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
              <th>类型</th>
              <th>金额</th>
              <th>年利率</th>
              <th>期限</th>
              <th>还息总额</th>
              <th>还清执日期</th>
              <th>借款状态</th>
            </tr>
            <c:forEach items="${myLoanList}" var="myLoan">
            <tr>
              <td>${myLoan[1]}</td>
               <td>
              <c:if test="${myLoan[8]==1 }">
                                            普通标
              </c:if>
              <c:if test="${myLoan[8]==8 }">
                                            体验标
             </c:if>
            </td>
              <td>${myLoan[2]}元</td>
              <td>${myLoan[3]*100}%</td>
              <td>${myLoan[4]}个月</td>
              <td>${myLoan[5]}元</td>
              
              <c:if test="${empty myLoan[6]}">
              <td>无</td>
              </c:if>
              <c:if test="${!empty myLoan[6]}">
              <td>${myLoan[6]}</td>
              </c:if>
              
               <c:if test="${myLoan[7] ==1 }">
              <td>未发布</td>
              </c:if>
               <c:if test="${myLoan[7] ==2}">
              <td>进行中</td>
              </c:if>
              <c:if test="${myLoan[7] ==3 }">
              <td>还款中</td>
              </c:if>
               <c:if test="${myLoan[7] ==4}">
              <td>已完成</td>
              </c:if>
            </tr>
            </c:forEach>                     
          </tbody>
        </table>
    </div>
    <c:if test="${!empty  myLoanList}">
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
