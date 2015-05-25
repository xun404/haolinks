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
<title>翡翠贷-奖励管理</title>
<link type="text/css" rel="stylesheet"
	href="/resource/css/registration.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/individual_center.css" />
<link type="text/css" rel="stylesheet"
	href="/resource/css/financial_management.css" />

<link rel="stylesheet" type="text/css"
	href="/resources/css/vipcenter.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/skin/simple_gray/ymPrompt.css" />
<jsp:include page="/WEB-INF/views/visitor/common_1.jsp"></jsp:include>
</head>
<body>

	<script src="/resources/js/generalize.js" type="text/javascript"></script>
	<%-- 复制按钮引用的js文件 --%>
	<script type="text/javascript" src="/resources/js/lib/ZeroClipboard.js"></script>

	<!-- top -->
	<jsp:include page="/WEB-INF/views/frontend/public/header.jsp" />
	<div class="gren"></div>

	<!--------注册 Start--------------->
	<div class="individual_center_all">
		<div class="individual_center">
			<jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp" />
			<div class="right_box">
				<div class="red_table">
					<div class="reward_li reward_table_topbox reward_table_topbox_02">推荐好友</div>
					<div class="reward_li reward_table_bottombox"
						style="text-indent:30px;">
						<span>方式一： 直接到翡翠贷注册页面填写推荐人的手机号。</span>
					</div>
					<div class="reward_li reward_table_bottombox"
						style="text-indent:30px;">
						<span>方式二： 复制邀请链接发给好友</span> <input type="text" value="${strurl }"
							readonly="readonly" class="spreadTx vipconttatxt"
							style="width: 350px" /> <input type="button"
							class="spreadBnt vipconttabnts" style="background-color: #00bc00"
							id="copybtn" value="复制链接" />
					</div>
					<div class="c"></div>
				</div>


				<div class="rewaed_management_box">
					<div class="title">活动规则</div>
					<p>1、活动期内，成功推荐一位好友注册即可获得${tgExperienceGold}元体验金。</p>
					<p>2、体验金不可提现，但也可用于平台体验标的投标，获得的利息可提现。</p>
					<p>3、请务必提示好友通过推荐链接注册翡翠贷账户，或注册时填写手机号码，否则推荐无效。</p>
					<p>4、如推荐人采用某些特殊技术手段，或是推荐的好友身份异常，一经核实，翡翠贷保留拒绝支付奖励的权利。</p>
					<p>5、翡翠贷拥有活动的最终解释权。如对活动有任何建议或疑问，请联系翡翠贷客服（热线${footer.phone400}；QQ${footer.qqGroupNumber}）。</p>

				</div>
			</div>

		</div>
		<div class="c"></div>

	</div>

	</div>
	<!--------注册 End--------------->

	<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp" />
	<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp" />



	<script type="text/javascript">
		function jumpPage(pageNum, totalPage) {
			$("#pageNum").val(pageNum);
			$("#myForm").submit();
		}
		function submitForm() {
			$("#pageNum").val(1);
			$("#myForm").submit();
		}
	</script>


	<script type="text/javascript">
		
	</script>

</body>
</html>
