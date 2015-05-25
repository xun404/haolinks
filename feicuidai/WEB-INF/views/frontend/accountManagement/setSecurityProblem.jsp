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
    <title>账户管理-安全设置</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/vipcenter.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/Validform.css"/>
    <jsp:include page="/WEB-INF/views/visitor/common_2.jsp"></jsp:include>
    <script type="text/javascript" src="/resources/js/Validform_v5.3_min.js"></script>
<script type="text/javascript" src="/resources/js/Validform_Datatype.js"></script>
<script type="text/javascript" src="/resources/js/jquery.form.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
   
   <div class="display">
<div class="vipHeadMenuBox">
 <ul>
  <li><a href="javascript:void(0);" class="vipHeadLink">安全问题</a></li>
 </ul>
</div>

<!--vipContBox-->
<div class="vipContBox">
<div class="vipContTitleBox">
<h1 class="vipContTitle"><span><img src="<%=basePath %>resources/images/vipseversicon.png" /></span>您需要通过安全问题设置更好的保护您的账号安全，以避免您受到意外损失。</h1>
<p>1、通过安全问题设置，能够为您的账号提供更安全的保障。</p>
<p>2、尊敬的翡翠贷用户，设置安全问题并通过验证之后，您可以提升您在翡翠贷的用户安全等级。</p>
    <p>&nbsp;</p>
    <p>温馨提示：会员若遗忘安全问题答案，请联系客服人员，请联系我们的客服。</p>
</div>
<form action="" method="post" id="Security_1">
<table cellpadding="0" cellspacing="0" border="0" class="vipPwdManage">
 <tbody >
 <input type="hidden" id="login_userid" value="${session_user.id }">
 <tr>
     <th>安全问题1:</th>
     <td><select style="width: 240px;" id="question01"
                 name="question01">
         <option>请选中安全问题</option>
         <c:forEach items="${safetyQuestions }" var="s">
             <option value="${s.id }">${s.problem }</option>
         </c:forEach>
     </select></td>
 </tr>
 <tr>
     <th>答案1:</th>
     <td><input id="anwser01" type="text" class="vipTextBox"
                style="width: 240px;" /></td>
 </tr>
 <tr>
     <th>安全问题2:</th>
     <td><select style="width: 240px;" id="question02"
                 name="question02">
         <option>请选中安全问题</option>
         <c:forEach items="${safetyQuestions}" var="s">
             <option value="${s.id }">${s.problem }</option>
         </c:forEach>
     </select></td>
 </tr>
 <tr>
     <th>答案2:</th>
     <td><input id="anwser02" type="text" class="vipTextBox"
                style="width: 240px;" /></td>
 </tr>
 </tbody>
</table>
<div class="tableSetBntBox"><input type="button"  onclick="javascript:submit_securityQuestion();" value="提交" style="background-color: #00bc00"  /> <input type="reset" value="取消" style="background-color: #00bc00" /></div>
</form>
</div>
<!--End vipContBox-->
</div>
 </div>
   <div class="c"></div>
    </div>
</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

 

</body>
</html>
