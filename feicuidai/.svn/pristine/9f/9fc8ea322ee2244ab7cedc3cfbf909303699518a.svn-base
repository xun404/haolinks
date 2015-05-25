<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fun"%>
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
<link rel="stylesheet" type="text/css" href="resources/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/vipcenter.css" />
<script type="text/javascript" src="resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="resources/js/global.js"></script>
<script type="text/javascript" src="resources/js/recharge.js"></script>
<script type="text/javascript" src="resources/js/safetycenter.js"></script>
<script type="text/javascript">
	function bindingBankCard1() {
		$("#showUserBankList").css("display", "none");
		$("#addUserBank1").css("display", "block");
	}
	function toBankList() {
		$("#showUserBankList").css("display", "block");
		$("#addUserBank1").css("display", "none");
	}
	jQuery(document)
			.ready(
					function() {
						fn_ajax(
								"/member/getUserBankList",
								{
									type : "list"
								},
								function(data) {
									if (data != "") {
										jQuery("#userbanklist2").html("");
										var json_obj = $.parseJSON(data);
										for ( var i in json_obj) {
											jQuery("#userbanklist2")
													.append(
															"<tr><td align='center'>"
																	+ json_obj[i].bankType
																	+ "</td><td align='center'>"
																	+ json_obj[i].bankAccount
																	+ "</td><td align='center'><a href='javascript:deleteUserBank2("
																	+ json_obj[i].id
																	+ ");'>删除</a></td></tr>");
										}
									} else {
										ymPrompt.errorInfo('删除银行卡失败！', 400,
												200, '失败', null);
									}
								});
						//当省改变的时候加载城市信息
						jQuery("#province1")
								.change(
										function() {
											jQuery("#city1").html("");
											var provinceID = jQuery(
													"#province1").val();
											fn_ajax(
													"/member/getCityList",
													{
														provinceID : provinceID
													},
													function(data) {
														var json_obj = $
																.parseJSON(data);
														for ( var i in json_obj) {
															jQuery("#city1")
																	.append(
																			'<option value='+json_obj[i].id+'>'
																					+ json_obj[i].name
																					+ '</option>');
														}
													});
										});
					});
</script>
<jsp:include page="/WEB-INF/views/visitor/common.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp" />
	<input type="hidden" id="id" value="${session_user.id }" />
	<!--Content-->
	<div class="Content">
		<div class="w960px">
			<!--vipContent-->
			<div class="vipContentBox">
				<jsp:include page="/WEB-INF/views/member/communal/communal_left.jsp" />


				<!--vipRight-->
				<div class="vipRightBox">
					<div class="vipHeadMenuBox">
						<ul>
							<li><a href="javascript:void(0);" class="vipHeadLink">邮箱验证</a></li>
							<li><a href="javascript:void(0);">身份验证</a></li>
							<li><a href="javascript:void(0);">安全问题</a></li>
							<li><a href="javascript:void(0);">手机验证</a></li>
							<li><a href="javascript:void(0);">银行卡管理</a></li>
						</ul>
					</div>

					<!--vipContBox-->
					<div class="vipContBox">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="../resources/images/vipseversicon.png" />
								</span>通过绑定邮箱，能够为您的账号提供更安全的保障。
							</h1>
							<p>尊敬的翡翠贷会员，在绑定邮箱并通过验证之后，您可以提升您在翡翠贷的用户安全等级。</p>
						</div>
						<table cellpadding="0" cellspacing="0" border="0"
							class="vipVerification">
							<tbody>
								<tr>
									<th><img src="../resources/images/vipcenteremail.jpg"
										title="" alt="" /></th>
									<td><p>
											您好，您已经绑定了邮箱 <font><c:if
													test="${!empty session_user.UserRelationInfo.email && fun:length(session_user.UserRelationInfo.email)>5}">
													<c:if
														test="${fun:length(fun:substring(session_user.UserRelationInfo.email,0,fun:indexOf(session_user.UserRelationInfo.email,'@'))) > 5 }">
	             ${fun:substring(session_user.UserRelationInfo.email,0,3)}
	             <c:forEach begin="0"
															end="${fun:length(fun:substring(session_user.UserRelationInfo.email,3,fun:indexOf(session_user.UserRelationInfo.email,'@')-2)) - 1}">*</c:forEach>
	             ${fun:substring(session_user.UserRelationInfo.email,fun:indexOf(session_user.UserRelationInfo.email,'@')-2,fun:length(session_user.UserRelationInfo.email))}
       		</c:if>
													<c:if
														test="${fun:length(fun:substring(session_user.UserRelationInfo.email,0,fun:indexOf(session_user.UserRelationInfo.email,'@'))) < 6 }">
             ${session_user.UserRelationInfo.email }
             </c:if>
												</c:if> </font>
										</p>会员可通过填写安全问题答案修改已绑定的邮箱</td>
								</tr>
							</tbody>
						</table>
						<div class="vipPromptBox">
							<p>您已设置安全问题，如果需要修改已绑定邮箱，请在下面填写您已经设置的安全问题答案!</p>
						</div>
						<form>
							<table cellpadding="0" cellspacing="0" border="0"
								class="vipPwdManage">
								<tbody>
									<tr>
										<th>安全问题1:</th>
										<td><select id="question03">
												<option value="">--请选择问题--</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案1:</th>
										<td><input id="anwser03" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
									<tr>
										<th>安全问题2:</th>
										<td><select id="question04">
												<option value="">--请选择问题--</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案2:</th>
										<td><input id="anwser04" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
									<tr>
										<th>输入新邮箱:</th>
										<td><input id="newemail" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
								</tbody>
							</table>
							<div class="tableSetBntBox">
								<input id="uptEmail01" type="button" value="保存"
									onclick="safety(this);" /> <input type="reset" value="取消" />
							</div>
						</form>
					</div>
					<!--End vipContBox-->

					<!--vipContBox-->
					<div class="vipContBox" style="display: none;">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="../resources/images/vipseversicon.png" />
								</span>通过身份认证，能够为您的账号提供更安全的保障。
							</h1>
							<p>尊敬的翡翠贷会员，通过身份验证后可以提升您在翡翠贷的用户安全等级。</p>
						</div>
						<table cellpadding="0" cellspacing="0" border="0"
							class="vipVerification">
							<tbody>
								<tr>
									<th><img src="../resources/images/vipcentereperson.jpg"
										title="" alt="" /></th>
									<td><p>
											温馨提示：<span>你已经完成了身份验证，你的身份信息如下。</span>
										</p> 真实姓名：<font>*${fun:substring(session_user.realName,1,fun:length(session_user.realName))}</font><br />
										身份证号：<font><c:if
												test="${!empty session_user.UserRelationInfo.cardId && fun:length(session_user.UserRelationInfo.cardId)>5}">${fun:substring(session_user.UserRelationInfo.cardId,0,4)}<c:forEach
													begin=""
													end="${fun:length(fun:substring(session_user.UserRelationInfo.cardId,4,fun:substring(session_user.UserRelationInfo.cardId,fun:length(session_user.UserRelationInfo.cardId)-4,fun:length(session_user.UserRelationInfo.cardId))))-5}">*</c:forEach>${fun:substring(session_user.UserRelationInfo.cardId,fun:length(session_user.UserRelationInfo.cardId)-4,fun:length(session_user.UserRelationInfo.cardId))}</c:if>
									</font></td>
								</tr>
							</tbody>
						</table>
						<div class="vipPromptBox">
						<h6>温馨提示：</h6>
						<p>如果你在公安机关修改了名字，请联系我们的客服，凭有关公安机关改名的核证材料修改您的身份信息。谢谢!</p>
					</div>
					</div>
					<!--End vipContBox-->

					<!--vipContBox-->
					<div class="vipContBox" style="display: none;">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="../resources/images/vipseversicon.png" />
								</span>通过绑定邮箱，能够为您的账号提供更安全的保障
							</h1>
							<p>尊敬的翡翠贷会员，设置安全问题并通过验证之后，可以提升您在翡翠贷的用户安全等级。</p>
						</div>
						<table cellpadding="0" cellspacing="0" border="0"
							class="vipVerification">
							<tbody>
								<tr>
									<th><img src="../resources/images/vipcentereQs.jpg"
										title="" alt="" /></th>
									<td><p>
											温馨提示：<span>您好，您的安全问题已设置。</span>
										</p> 1.会员可通过填写安全问题答案来修改已设置的安全问题。<br />
										2.会员若遗忘安全问题答案，请联系客服人员40012345678。</td>
								</tr>
							</tbody>
						</table>
						<div class="vipPromptBox">
							<p>请在下面重新设置您的安全问题。</p>
						</div>
						<form id="Security_1">
							<table cellpadding="0" cellspacing="0" border="0"
								class="vipPwdManage">
								<tbody>
									<tr>
										<th>安全问题1:</th>
										<td><select style="width: 240px;" id="question05"
											name="question01">
												<option>请选中安全问题</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案1:</th>
										<td><input id="anwser05" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
									<tr>
										<th>安全问题2:</th>
										<td><select style="width: 240px;" id="question06"
											name="question01">
												<option>请选中安全问题</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案2:</th>
										<td><input id="anwser06" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
								</tbody>
							</table>
							<div class="tableSetBntBox">
								<input id="safety_problem01" type="button" value="提交"
									onclick="safety(this);" /> <input id="safety_problem02"
									type="button" value="提交" onclick="safety(this);"
									style="display: none;" /> <input type="reset" value="取消" />
							</div>
						</form>
						<form id="Security_2" style="display: none;">
							<table cellpadding="0" cellspacing="0" border="0"
								class="vipPwdManage">
								<tbody>
									<tr>
										<th>安全问题1:</th>
										<td><select style="width: 240px;" id="question07"
											name="question01">
												<option>请选中安全问题</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案1:</th>
										<td><input id="anwser07" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
									<tr>
										<th>安全问题2:</th>
										<td><select style="width: 240px;" id="question08"
											name="question01">
												<option>请选中安全问题</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案2:</th>
										<td><input id="anwser08" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
								</tbody>
							</table>
							<div class="tableSetBntBox">
								<input id="safety_problem" value="保存" /> <input type="reset"
									value="取消" />
							</div>
						</form>
					</div>
					<!--End vipContBox-->


					<!--vipContBox-->
					<div class="vipContBox" style="display: none;">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="../resources/images/vipseversicon.png" />
								</span>通过绑定手机，能够为您的账号提供更安全的保障。
							</h1>
							<p>尊敬的翡翠贷会员，在绑定手机并通过验证之后，您可以通过手机找回登录密码。</p>
						</div>
						<table cellpadding="0" cellspacing="0" border="0"
							class="vipVerification">
							<tbody>
								<tr>
									<th><img src="../resources/images/vipcenterziliao_03.jpg"
										title="" alt="" /></th>
									<td><p>
											温馨提示：<span>您好，您已经绑定了手机号为
												${fun:substring(session_user.UserRelationInfo.phone,0,2)}*******${fun:substring(session_user.UserRelationInfo.phone,fun:length(session_user.UserRelationInfo.phone)-2,fun:length(session_user.UserRelationInfo.phone)+1)}
												的手机。</span>
										</p> 会员可通过填写安全问题答案修改已绑定的手机号。</td>
								</tr>
							</tbody>
						</table>
						<div class="vipPromptBox">
							<p>您已设置安全问题，如果需要修改已绑定手机号，请在下面填写您已经设置的安全问题答案!</p>
						</div>
						<form>
							<table cellpadding="0" cellspacing="0" border="0"
								class="vipPwdManage">
								<tbody>
									<tr>
										<th>安全问题1:</th>
										<td><select style="width: 240px;" id="question9"
											name="question01">
												<option>请选中安全问题</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案1:</th>
										<td><input id="anwser9" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
									<tr>
										<th>安全问题2:</th>
										<td><select style="width: 240px;" id="question10"
											name="question01">
												<option>请选中安全问题</option>
												<c:forEach items="${safetyQuestions }" var="s">
													<option value="${s.id }">${s.problem }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>答案2:</th>
										<td><input id="anwser10" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
									<tr>
										<th>输入新手机号:</th>
										<td><input id="newPhone" type="text" class="vipTextBox"
											style="width: 240px;" /></td>
									</tr>
								</tbody>
							</table>
							<div class="tableSetBntBox">
								<input id="uptPhone" type="button" value="保存"
									onclick="safety(this);" /> <input type="reset" value="取消" />
							</div>
						</form>
					</div>
					<!--End vipContBox-->

					<!--vipContBox for 银行卡管理 -->
					<div id="showUserBankList" class="vipContBox"
						style="display: none;">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="../resources/images/vipseversicon.png" />
								</span>通过绑定银行卡，资金管理更便捷。
							</h1>
							<p>尊敬的翡翠贷会员，同一银行卡号连续出现三次绑定失败，需更换银行卡进行绑定。</p>
						</div>
						<table cellpadding="0" cellspacing="0" border="0"
							class="vipPwdManage">
							<thead>
								<tr>
									<td align="center" bgcolor="#eeeeee"><strong>银行名称</strong></td>
									<td align="center" bgcolor="#eeeeee"><strong>银行账号</strong></td>
									<td align="center" bgcolor="#eeeeee"><strong>操作</strong></td>
								</tr>
							</thead>
							<tbody id="userbanklist2"></tbody>
						</table>
						<div class="tableSetBntBox">
							<input type="button" onclick="bindingBankCard1();" value="添加银行卡" />
						</div>
					</div>
					<!--End vipContBox-->
					<!--绑定银行卡号-->
					<div class="vipContBox" id="addUserBank1" style="display: none;">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="../resources/images/vipseversicon.png" />
								</span>通过绑定银行卡，资金管理更便捷。
							</h1>
							<p>温馨提示：</p>
							<p>1.
								请认真填写分支行信息，否则可能会造成您的提现无法按时到账。例如：**银行**分行**支行/分理处(工商银行上海分行杨浦支行),
								如果您无法确定,建议您致电您的开户银行进行询问。</p>
							<p>2. 上述银行卡号的开户人姓名必须为您实名认证的姓名。</p>
							<p>3. 申请关联银行或银行账号这两项变更的，在提交修改申请后请联系客服做视频认证后方可通过。</p>
						</div>
						<table cellpadding="0" cellspacing="0" class="vipPwdManage">
							<tr>
								<th>开户银行：</th>
								<td><select id="bankType1">
										<c:forEach items="${bankType }" var="bt">
											<option value="${bt.id }">${bt.name }</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<th>所属分行：</th>
								<td><select style="width: 100px;" id="province1">
										<option value="">请选择省份</option>
										<c:forEach items="${provinces }" var="p">
											<option value="${p.id}">${p.name}</option>
										</c:forEach>
								</select> <select style="width: 100px;" id="city1"><option
											value="">请选择城市</option>
										<c:forEach items="${citys }" var="c">
											<option value="${c.id}">${c.name}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<th>支行名称：</th>
								<td><input class="vipTextBox" id="bankname1" type="text"
									style="width: 240px;"></td>
							</tr>
							<tr>
								<th>银行账号：</th>
								<td><input class="vipTextBox" id="bankAccount1" type="text"
									style="width: 240px;"></td>
							</tr>
						</table>
						<div class="tableSetBntBox">
							<input type="button" onclick="bindingBankCard2();" value="绑定银行卡" />
							<input type="button" onclick="toBankList();" value="返回银行卡列表" />
						</div>
					</div>

				</div>
				<!--End vipRight-->
			</div>
			<!--End vipcontent-->

		</div>
	</div>
	<!--End vipContent-->
	<jsp:include page="/WEB-INF/views/visitor/footer.jsp" />
</body>
</html>
