<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="left_box_menu">
	<div class="menu_ul">
		<div class="son" id="Son_01">
			<c:forEach items="${appDeputys}" var="d">
				<c:if test="${d.topic.id == topicId }">
					<ul>
						<li><a class="son_menu<c:if test="${d.id == deputyId }">_current</c:if>" href="${d.url}">${d.name}</a>
						</li>
					</ul>
				</c:if>
			</c:forEach>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$(".son").css("display", "none");
		$(".father_menu").click(function() {
			var cur_id = $(this).attr("id");
			var num = cur_id.replace("Menu_ul_", "");
			//$("#Son_"+num).css("display","block");
			$("#Son_" + num).toggle(0);
		})

		$("#Son_01").css("display", "block");
	})
</script>