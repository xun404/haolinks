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

   <%--表单条件提交 --%>
   <div class="title_records title_records_financial">
        <form action="myLoanApplyListUI" id="myForm">
        <samp  class="style_box">        
   		<samp>审核状态</samp> 
         <select  class="select_style" name="status">
            <option value="-1"></option>
            <option value="0" <c:if test="${status ==0 }">selected="selected"</c:if>>审核中</option>
            <option value="1" <c:if test="${status ==1 }">selected="selected"</c:if>>已通过</option>
            <option value="2" <c:if test="${status ==2 }">selected="selected"</c:if>>未通过</option>
         </select>
         </samp>
         
         <samp  class="style_box">        
   		<samp>发布状态</samp> 
         <select  class="select_style" name="state">
            <option value="-1"></option>
            <option value="0" <c:if test="${state ==0 }">selected="selected"</c:if>>未发布</option>
            <option value="1" <c:if test="${state ==1 }">selected="selected"</c:if>>已发布</option>
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
              <th>申请类型</th>
              <th>申请金额</th>
              <th>年利率</th>
              <th>期限</th>
              <th>申请日期</th>
              <th>是否审核</th>
              <th>是否发布</th>
            </tr>
            <c:forEach items="${myLoanApplyList}" var="loanApplyList">
            <tr>
            <td>
              <c:if test="${loanApplyList[8]==1 }">
                                            普通标
              </c:if>
              <c:if test="${loanApplyList[8]==8 }">
                                            体验标
             </c:if>
            </td>
              <td>${loanApplyList[1]}元</td>
              <td>${loanApplyList[2]*100}%</td>
              <td>${loanApplyList[5]}个月</td>
              <td>${loanApplyList[7]}</td>
              
              <td>
              <c:if test="${loanApplyList[4]==0 }">
                                            审核中
              </c:if>
              <c:if test="${loanApplyList[4]==1 }">
                                            已通过
             </c:if>
              <c:if test="${loanApplyList[4]==2 }">
                                            未通过
             </c:if>
              </td>
              <td>
              <c:if test="${loanApplyList[6]==0 }">
                                            未发布
              </c:if>
              <c:if test="${loanApplyList[6]==1 }">
                                            已发布
             </c:if>
              </td>
            </tr>
            </c:forEach>                     
          </tbody>
        </table>
       
    </div>
     <c:if test="${!empty myLoanApplyList}">
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
