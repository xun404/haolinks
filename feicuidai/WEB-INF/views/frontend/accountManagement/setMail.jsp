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
  <li><a href="javascript:void(0);" class="vipHeadLink">邮箱认证</a></li>
 </ul>
</div>

<!--vipContBox-->
<div class="vipContBox">
<div class="vipContTitleBox">
<h1 class="vipContTitle"><span><img src="<%=basePath %>resources/images/vipseversicon.png" /></span>您可以通过绑定邮箱认证更好的保护您的账号安全，以避免您受到意外损失。</h1>
<p>1、通过绑定邮箱，能够为您的账号提供更安全的保障。</p>
<p>2、尊敬的翡翠贷用户，在绑定邮箱并通过验证之后，您可以提升您在翡翠贷的用户安全等级。</p>
</div>
<form action="" method="post" id="myform">
<table cellpadding="0" cellspacing="0" border="0" class="vipPwdManage">
 <tbody >
 <input type="hidden" id="login_userid" value="${session_user.id }">
  <tr>
      <th style="text-align: center;"><img src="../resources/images/vipcenteremail.jpg"
               title="" alt="" /></th>
      <td colspan="2" style="text-align: center;">
          <p>请输入邮箱: <input id="e-mail" class="vipTextBox"/><font>（请输入您的邮箱）</font></p>
          <p>请输入邮箱: <input id="e-mail2" class="vipTextBox"/><font>（请输入确认邮箱）</font></p>
      </td>
  </tr>
 </tbody>
</table>
<div class="tableSetBntBox"><input type="button"  onclick="javascript:setEmail();" value="确认邮箱并发送验证邮件" id="update_email" style="background-color: #00bc00"  /> <input type="reset" value="取消" style="background-color: #00bc00" /></div>
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
