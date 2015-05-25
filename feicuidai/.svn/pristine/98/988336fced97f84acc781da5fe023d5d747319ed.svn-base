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
    <meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>
    <link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
    <link rel="stylesheet" type="text/css"href="/resource/phone/ymPrompt/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resource/js/ymPrompt.js"></script>
    <title>关于我们</title>
</head>
<body>
<div class="main">
<!--内容 Start-->

<div class="amount_head_box" align="center">
   <p>有${number == null ? 0: number}条未读取消息!</p>
</div>

<c:forEach items="${list}" var="msg">
<div class="vLine" id="${msg[0]}" >
<span class="vspan" style="font-size:1em;width:30%;">

<img src="/resource/phone/images/search.png" width="26" height="26" alt=""  style="cursor: pointer" />

 &nbsp;&shy;</span>
<span class="vspan" style="width:40%">
<fmt:parseDate value="${msg[3]}" var="date" pattern="yyyy-MM-dd HH:mm:ss" /> <%-- 转换为时间格式 --%>
<fmt:formatDate value="${date}" pattern="yyyy-MM-dd" /><%--格式化时间 --%>
</span>
<span class="vspan"  style="width:30%">

<strong>${msg[4]}</strong>

</span>
<input type="hidden"  value="${msg[1]}" id="msg${msg[0]}"/>
</div>
</c:forEach>
<!--内容 End-->


<c:if test="${empty list}">
        <div class="recharge_records_box">
            <div class="list_recharge records_center" style="text-align: center;">
             没有记录!
            </div>
        </div>
    </c:if>

</div>
<div class="co_text"></div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>



<script type="text/javascript">

$(function(){

$(".vLine").click(
		function() {
			var id =this.id;
			var msg = $("#msg"+id).val();
				$.ajax({
					type:'post',
					url:'/visitorManagement/memberCenter/system_message',
					data:{"id":id,"unRead":0},
					success:function(){
					
					ymPrompt.newsInfo(msg, 250,220, '查看消息', function(tp) {
						//if (tp == 'ok') {
							// 刷新投资页面
							location.reload();
								        // }
					});
														
					}
				});
		
		});

		
});

</script>
</body>
</html>
