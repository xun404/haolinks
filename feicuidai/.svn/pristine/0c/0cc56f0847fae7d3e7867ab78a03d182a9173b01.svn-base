<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
   
    <div class="content_switch_view content_table_box message_table" id="Content_switch_view_2">
        <table width="100%" border="0" class="table_box" cellpadding="1" cellspacing="1">
          <tbody>
          <tr>
          <td colspan="4">
          <span><img src="/resources/images/vipseversicon.png" /></span>尊敬的翡翠贷会员，以下是您在翡翠贷的推广记录，敬请审阅！
          </td>
          </tr>
            <tr>
              <th width="13%">推广编号</th>
              <th width="27%">推广日期</th>
              <th width="42%">被推广人</th>
              <th width="18%">奖励体验金</th>
            </tr>
            <c:forEach items="${generlist }" var="generlize"
				varStatus="status">
				<tr>
					<%-- <td>${generlize.id }</td> --%>
					<td>${status.index+1 }</td>
					<td>${fn:substring(generlize.addDate,0,10) }</td>
					<td>${generlize.uName }</td>
					<td>${generlize.tgExperienceGold }</td>
				</tr>
			</c:forEach>                             
          </tbody>
        </table>
    </div>  
    
    <form action="myRepaymentListUI" id="myForm">
     <input type="hidden" id="pageNum" name="pageNum"/>
      <input type="hidden" id="fatherMenu" name="fatherMenu" value="${fatherMenu }"/>
         <input type="hidden" id="sonMenu" name="sonMenu"  value="${sonMenu}"/>
    </form>
    <c:if test="${!empty  generlist}">
     <jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
    </c:if>
    <c:if test="${empty  generlist}">
    <div align="center">
           暂无数据!
   </div>
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
