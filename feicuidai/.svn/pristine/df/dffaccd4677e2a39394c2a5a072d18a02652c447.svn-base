<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="clear"></div>
<!--footer-->
	<!--------公告、咨询 START---------->

	<div class="friendship_all">
		<div class="friendship">
			<div class="friendship_box">
				友情链接: <c:forEach items="${application_link}" var="link">
				<c:if test="${link.type eq 0 }">
					<a href="${link.url}" target="_bank">${link.name}</a>
				</c:if>
			</c:forEach>
			</div>
			<div class="weixin_box">
				<a href="#" class="list_ico_01"></a> <a href="#" class="list_ico_02"></a>
				<a href="#" class="list_ico_03"></a> <a href="#" class="list_ico_04"></a>
			</div>
			<div class="c"></div>
		</div>
	</div>

	<div class="foot_all">
		<div class="foot">
			<div class="foot_left">
				<div class="text">
					<a href="#">关于我们</a>| <a href="#">联系我们</a>| <a href="#">服务协议</a>| <a
						href="#">隐私保护</a>| <a href="#">法律声明</a>| <a
						href="#">公司证件</a>| <a href="#">网站地图</a>
				</div>
				<div class="ico_box">
					<a href="#"><img src="/resource/images/ico_1.png" width="99"
						height="35" alt="" /></a> <a href="#"><img
						src="/resource/images/ico_2.png" width="99" height="35" alt="" /></a>
					<a href="#"><img src="/resource/images/ico_3.png" width="99"
						height="35" alt="" /></a> <a href="#"><img
						src="/resource/images/ico_4.png" width="99" height="35" alt="" /></a>
					<a href="#"><img src="/resource/images/ico_5.png" width="99"
						height="35" alt="" /></a> 
				</div>
				<div class="tex">${footer.context } |
					${footer.name} | ${footer.records}
				</div>
			</div>
			<div class="foot_right">${footer.phone400}</div>
			<div class="c"></div>
		</div>

	</div>

	<!--------公告、咨询  END---------->
<!--End footer-->