<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>翡翠贷贷款平台-会员中心</title>
<link rel="stylesheet" type="text/css"
	href="/resources/css/vipcenter.css" />
<link rel="stylesheet" type="text/css" href="resources/css/account.css" />

<jsp:include page="/WEB-INF/views/visitor/common.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp" />
	<!--Content-->
	<div class="Content">
		<div class="w960px">
			<!--vipContent-->
			<div class="vipContentBox">
				<jsp:include page="/WEB-INF/views/member/communal/communal_left.jsp" />
				<!--vipRight-->
				<!--vipRight-->
				<div class="vipRightBox">
					<div class="vipHeadMenuBox">
						<ul>
							<li><a href="javascript:void(0);" class="vipHeadLink">在线充值</a></li>
							<li><a href="/recharge/openRechargeRecord">充值记录</a></li>
						</ul>
					</div>

					<!--vipContBox-->
					<div class="vipContBox">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="resources/images/vipseversicon.png" /></span>温馨提示：
							</h1>
							<p>
								单笔充值金额必须大于<font>100元</font>。为遵守国家反洗钱和套现行为的相关法律规定：信用卡充值，不投标要超过30天
								后才能提现： 储蓄卡充值，不投标要等7天后才能提现
							</p>
						</div>
						<form action="/recharge/recharge" id="from-data-tjcz" method="post">
							<table cellpadding="0" cellspacing="0" border="0"
								class="vipPwdManage">
								<tbody>
									<tr>
										<th style="width: 100px;">充值金额:</th>
										<td><input type="text" name="tranAmt"
											class="vipTextBox validate[required,custom[integerNullZero]]"
											style="width: 160px;" /> 元</td>
									</tr>
									<tr>
										<th style="width: 100px;">选择银行:</th>
										<td><c:forEach items="${bankNoList}" var="b">
												<a class="bank-list"> <input name="bankNo"
												style="margin: 0px 0px 0px 2px; height: 40px; line-height: 40px;"
												type="radio" value="${b}"> <img width="130"
													height="40" class="img_border"
													src="resources/images/bank/${b}.jpg"></a>
											</c:forEach></td>
									</tr>
								</tbody>
							</table>
							<div class="tableSetBntBox">
								<input type="submit" value="提交" /> <input type="reset"
									value="取消" />
							</div>
						</form>
					</div>

				</div>
				<!--End vipRight-->
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/visitor/footer.jsp" />
	<script>
		$(function() {
			$("#from-data-tjcz").validationEngine({});
		})
	</script>
</body>
</html>
