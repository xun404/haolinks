<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String title = "翡翠贷贷款平台";
    request.getSession().setAttribute("title", title);
%>
<base href="<%=basePath%>"/>

<script src="/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="/resources/js/jquery_1.7.2.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/js/dialog.js"></script>
<script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
<script type="text/javascript" src="/resources/js/member/listloan.js"></script>
<script type="text/javascript" src="/resources/js/jquery.artDialog.js"></script>


