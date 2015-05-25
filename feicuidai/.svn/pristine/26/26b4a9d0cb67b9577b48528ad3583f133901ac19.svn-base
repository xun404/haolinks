<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link type="text/css" rel="stylesheet"
	href="/resource/css/registration.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/individual_center.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/financial_management.css" />

<link rel="stylesheet" type="text/css"
	href="/resources/css/skin/simple_gray/ymPrompt.css" />
<script type="text/javascript" src="/resources/js/ymPrompt.js"></script>

</head>
<body>
	<!-- top -->
	<jsp:include page="/WEB-INF/views/frontend/public/header.jsp" />
	<!-- 样式覆盖 -->
	<script type="text/javascript" src="/resource/js/myPublic.js"></script>

	<div class="gren"></div>

	<!--------注册 Start--------------->
	<div class="individual_center_all">
		<div class="individual_center">
			<jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp" />
			<div class="right_box">
				<div class="product_finanaial">
					<ul>
						<li id="Tab_switch_view_1" class="tab_switch_view">系统消息</li>
						<li id="Tab_switch_view_2" class="tab_switch_view">登陆日志</li>
						<div class="c"></div>
					</ul>
				</div>
				<div class="content_switch_view content_table_box message_table"
					id="Content_switch_view_1">
					<table width="100%" border="0" class="table_box" cellpadding="1"
						cellspacing="1">
						<%-- 
         <table cellpadding="0" cellspacing="0" border="0"class="messagesTable">--%>
						<thead>
							<tr>
								<th width="5%">&nbsp;</th>
								<th width="13%"><img src="/resources/images/xf1.jpg" />
								</th>
								<th width="27%">发件人</th>
								<th width="42%">主题</th>
								<th width="18%">时间</th>
							</tr>
							<tr>
								<td colspan="5">未读 <font class="red bold" id="unreadinfos">${unRead
										}</font> 封，已读 <font class="red bold" id="readinfos">${read}</font>
									封，共 <font class="red bold">${count}</font> 封 <input
									type="hidden" value="${unRead}" id="unReads" /></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="msg">
								<tr <c:if test="${msg[2] eq 0}">class="colorChenge"</c:if>
									id="tr${msg[0]}">
									<td><input type="checkbox" name="id" class="check"
										value="${msg[0]}" /> <input type="hidden"
										id="readstatus${msg[0]}" value="${msg[2]}" /></td>

									<td><c:if test="${msg[2] eq 0 }">
											<img id="imginfo${msg[0]}" src="/resources/images/unread.jpg" />
										</c:if> <c:if test="${msg[2] eq 1 }">
											<img id="imginfo${msg[0]}" src="/resources/images/read.jpg" />
										</c:if></td>

									<td>${msg[4]}</td>

									<td class="user_message_centent"><span
										class="content_interception" style="cursor: pointer;">${msg[1]}</span>
									</td>

									<td><fmt:parseDate value="${msg[3]}" var="date"
											pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
											value="${date}" pattern="yyyy-MM-dd" /></td>
								</tr>
								<tr style="display: none;" id="showContent${msg[0]}">
									<td colspan="5">${msg[1] }</td>
								</tr>
							</c:forEach>
							<c:if test="${empty list}">
								<tr>
									<td colspan="5">暂时没有任何消息！</td>
								</tr>
							</c:if>
							<tr>
								<td colspan="5" class="all_check" style="text-indent:12px;"><label> <input
										type="checkbox" name="CheckboxGroup1" value="1" id="checkAll">
										全选 </label> <a href="#" class="delect" id="deleteAll" style="padding:0px 12px 0px 0px;margin-left:10px;">删除</a></td>
							</tr>
						</tbody>
					</table>
					<form action="system_message" id="myForm">
						<input type="hidden" id="pageNum" name="pageNum" /> <input
							type="hidden" id="fatherMenu" name="fatherMenu"
							value="${fatherMenu }" /> <input type="hidden" id="sonMenu"
							name="sonMenu" value="${sonMenu}" />
					</form>
					<c:if test="${!empty list}">
						<jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
					</c:if>
				</div>

				<div class="content_switch_view content_table_box message_table"
					id="Content_switch_view_2">
					<table width="100%" border="0" class="table_box" cellpadding="1"
						cellspacing="1">
						<tbody>
							<tr>
								<td colspan="4"><span><img
										src="/resources/images/vipseversicon.png" />
								</span>尊敬的翡翠贷用户，翡翠贷为您记录和保存了您的登录记录(最后登陆10次)，敬请审阅。</td>
							</tr>
							<tr>
								<th width="13%"></th>
								<th width="27%">发件人</th>
								<th width="42%">主题</th>
								<th width="18%">时间</th>
							</tr>

							<c:forEach items="${logs }" var="log" varStatus="no">
								<tr>
									<td>${no.index+1}</td>
									<td>${log[1]}</td>
									<td>${log[2]}</td>
									<td>${log[3]}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
			<div class="c"></div>

		</div>

	</div>
	<!--------注册 End--------------->

	<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp" />

	<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp" />
	<script type="text/javascript">

$(function(){

         /*
		 * 查看消息类容
		 */
		 var unReads=$("#unReads").val();
		 var count="${count}";
		$(".user_message_centent").click(
				function() {
					var id = $(this).parent().find("input[type=checkbox]")
							.val();
					var unRead = $(this).parent().find("input[type=hidden]")
							.val();
					if(unRead==0){
						$.ajax({
							type:'post',
							url:'/visitorManagement/memberCenter/system_message',
							data:{"id":id,"unRead":unRead},
							success:function(){
								//改变显示样式
								$("#imginfo"+id).attr("src","/resources/images/read.jpg");
								$("#tr"+id).attr("class","");
								//改变未读，已读的显示
								$("#readstatus"+id).val("1");
								unReads=unReads-1;
								$("#unReads").val(unReads);
								$("#readinfos").text(count-unReads);
								$("#unreadinfos").text(unReads);								
							}
						});
					}
					$("#showContent"+id).toggle();
				});

//全选
$("#checkAll").click(function() {
			var bool = $(this).attr("checked");
			$(".check").each(function() {
				if (bool == 'checked') {
					$(this).attr("checked", true);
				} else {
					$(this).attr("checked", false);
				}
			});
		});
		
		/*
		 * 批量删除
		 */
		$("#deleteAll").click(function() {
			var ids = "";
			$(".check").each(function() {
				if ($(this).attr('checked') == 'checked') {
					ids = ids + $(this).val() + ',';
				}
			});
			if (ids == "") {
				ymPrompt.errorInfo('请选择至少一条记录!', 220, 160, '警告', null);
			} else {
				ymPrompt.confirmInfo('确定删除？', 220, 160, '是否删除', function(tp) {
					if (tp == 'ok') {
						$.ajax({
							type : 'post',
							url : '/visitorManagement/memberCenter/deletes',
							data : '&ids=' + ids,
							success : function(msg) {
								//$("#user_message").remove();
								//$('#systemmessage').append(msg);
								window.location.href="/visitorManagement/memberCenter/system_message";
							}
						});
					}
				});
			}

		});

});


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
