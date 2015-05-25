<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fun"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript">
	jQuery(document).ready(
			function() {
				//当省改变的时候加载城市信息
				jQuery("#province").change(
						function() {
							jQuery("#city").html("");
							var provinceID = jQuery("#province").val();
							fn_ajax("/member/getCityList", {
								provinceID : provinceID
							}, function(data) {
								var json_obj = $.parseJSON(data);
								for ( var i in json_obj) {
									jQuery("#city").append(
											'<option value='+json_obj[i].id+'>'
													+ json_obj[i].name
													+ '</option>');
								}
							});
						});
			});
</script>
<div class="layerBox layerBG_one">
	<input type="hidden" id="login_userid" value="${session_user.id }">
	<div class="layerHeadBox">
		<h1>安全认证</h1>
		<a href="javascript:void(0);" class="layerClose"
			onclick="layerClose();" title="关闭">&nbsp;</a>
	</div>
	<!--欢迎页-->
	<div class="layerBodyBox" style="display: block;">
		<!--步骤图-->
		<span class="stepLink stepIocn_01">&nbsp;</span>
		<!--End 步骤图-->
		<div class="welcomeBox">
			<span class="smileyBox">&nbsp;</span>
			<p>
				亲爱的<a href="#">${session_user.realName }</a>，您好，欢迎注册翡翠贷！为了保证您的账户安全，请先完成翡翠贷的安全验证流程。
			</p>
			<div class="clear"></div>
		</div>
		<p class="authenticateBox">
			<a id="go_verify" href="javascript:;" class="authenticateBnt"
				onclick="fun_click('go_verify');">立即认证</a>
		</p>
	</div>
	<!--End 欢迎页-->
	<!--手机认证-->
	<div class="layerBodyBox" id="verify_phone" style="display: none;">
		<!--步骤图-->
		<span class="stepLink stepIocn_02">&nbsp;</span>
		<!--End 步骤图-->
		<div class="promptBox">
			<span>&nbsp;</span>
			<p>您在翡翠贷的充值提现等重要操作，都需要通过手机动态验证！请填写您真实的手机号码，完成手机验证</p>
			<div class="clear"></div>
		</div>
		<table cellpadding="0" cellspacing="0" class="layertable">
			<tr>
				<th>手机号:</th>
				<td><input id="phone" type="text" style="width: 160px;"
					value="${phone}" /> <a href="javascript:;"
					onclick="send_smscode();">点击获取验证码</a></td>
			</tr>
			<tr>
				<th>验证码:</th>
				<td><input type="text" id="sms_code" style="width: 80px;" /></td>
			</tr>
		</table>
		<p class="authenticateBox">
			<a href="javascript:;" class="authenticateBnt" id="submit_phone"
				onclick="submit_phone();">提交</a>
		</p>
	</div>
	<!--End 手机认证-->
	<!--邮箱认证-->
	<div class="layerBodyBox" id="verify_email" style="display: none;">
		<!--步骤图-->
		<span class="stepLink stepIocn_03">&nbsp;</span>
		<!--End 步骤图-->
		<div class="promptBox">
			<span>&nbsp;</span>

			<table id="tab_uptemail" cellpadding="0" cellspacing="0"
				class="layertabletwo" style="display:;">
				<tr>
					<td width="120" align="right">输入邮箱：</td>
					<td><input id="e-mail" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td width="120" align="right">确认邮箱：</td>
					<td><input id="e-mail2" /></td>
				</tr>

			</table>
			<div class="clear"></div>
			<p class="authenticateBox" style="margin-top: 0px;">
				<a id="update_email" href="javascript:uptEmail();"
					class="authenticateBnt" style="display:;">确认邮箱并发送验证邮件</a>
			</p>
			<p id="email_context1">
				1、如果收件箱里没有收到该邮件，请查看垃圾箱，以免被误判为垃圾邮件。<br /> 2、如果您在验证过程中，出现任何问题，请致电<font>${footer.phone }</font><br />
				<br />
			</p>
		</div>

	</div>
	<!--End 邮箱认证-->
	<!--身份验证-->
	<div class="layerBodyBox" id="verify_identify" style="display: none;">
		<!--步骤图-->
		<span class="stepLink stepIocn_04">&nbsp;</span>
		<!--End 步骤图-->
		<div class="promptBox">
			<span>&nbsp;</span>
			<p>您在翡翠贷的充值提现等重要操作，都需要通过身份验证！请填写您的真实姓名和身份证号码！</p>
			<div class="clear"></div>
		</div>
		<table cellpadding="0" cellspacing="0" class="layertable">
			<tr>
				<th>真实姓名:</th>
				<td><input id="userName" type="text" style="width: 80px;" /></td>
			</tr>
			<tr>
				<th>身份证号:</th>
				<td><input id="cardId" type="text" style="width: 190px;" /></td>
			</tr>
		</table>
		<p class="authenticateBox">
			<a href="javascript:fun_verifyidentity();" class="authenticateBnt">提交</a>
		</p>
	</div>
	<!--End 身份验证-->

	<!--安全问题-->
	<div class="layerBodyBox" id="verify_safequestion"
		style="display: none;">
		<!--步骤图-->
		<span class="stepLink stepIocn_05">&nbsp;</span>
		<!--End 步骤图-->
		<div class="promptBox">
			<span>&nbsp;</span>
			<p>请认真填写安全问题并牢记答案，回答安全问题是修改已绑定手机和已绑定邮箱的唯一方式。</p>
			<div class="clear"></div>
		</div>
		<table cellpadding="0" cellspacing="0" class="layertabletwo">
			<tr>
				<th>安全问题1:</th>
				<td><select id="question01">
						<option value="">--请选择问题--</option>
						<c:forEach items="${safetyQuestions }" var="s">
							<option value="${s.id }">${s.problem }</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<th>答案1:</th>
				<td><input id="anwser01" type="text" style="width: 160px;" /></td>
			</tr>
			<tr>
				<th>安全问题2:</th>
				<td><select id="question02">
						<option value="">--请选择问题--</option>
						<c:forEach items="${safetyQuestions }" var="s">
							<option value="${s.id }">${s.problem }</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<th>答案2:</th>
				<td><input id="anwser02" type="text" style="width: 160px;" /></td>
			</tr>
		</table>
		<p class="authenticateBox">
			<a href="javascript:submit_question();" class="authenticateBnt">提交</a>
		</p>
	</div>
	<!--End 安全问题-->

	<!--绑定银行卡号-->
	<div class="layerBodyBox" id="verify_ips" style="display: none;">
		<!--步骤图-->
		<span class="stepLink stepIocn_06">&nbsp;</span>
		<!--End 步骤图-->
		<div class="promptBox">
			<span>&nbsp;</span>
			<p>充值、提现会首选使用您已绑定的银行卡，资金安全有保障！</p>
			<div class="clear"></div>
		</div>
		<b style="color: #aa131f; font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已绑定的银行卡</b>
		<table style="border: 1px #dedede solid;" cellpadding="0"
			cellspacing="0" class="layertabletwo">
			<thead>
				<tr>
					<td align="center" bgcolor="#eeeeee"><strong>银行名称</strong></td>
					<td align="center" bgcolor="#eeeeee"><strong>银行账号</strong></td>
					<td align="center" bgcolor="#eeeeee"><strong>操作</strong></td>
				</tr>
			</thead>
			<tbody id="userbanklist"></tbody>
		</table>
		<p class="authenticateBox">
			<a href="javascript:fun_bindingBankCard();" class="authenticateBnt">添加银行卡</a>
		</p>
	</div>
	<!--绑定银行卡号-->
	<div class="layerBodyBox" id="addUserBank" style="display: none;">
		<br> <br>
		<table cellpadding="0" cellspacing="0" class="layertable">
			<tr>
				<th>开户银行：</th>
				<td style="display: inline;"><select id="bankType">
						<c:forEach items="${bankType }" var="bt">
							<option value="${bt.id }">${bt.name }</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<th>所属分行：</th>
				<td style="display: inline; width: 100px;"><select
					style="display: inline; width: 100px;" id="province">
						<option value="">请选择省份</option>
						<c:forEach items="${provinces }" var="p">
							<option value="${p.id}">${p.name}</option>
						</c:forEach>
				</select> <select id="city" style="display: inline; width: 100px;"><option
							value="">请选择城市</option>
						<c:forEach items="${citys }" var="c">
							<option value="${c.id}">${c.name}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<th>支行名称：</th>
				<td><input id="bankName" type="text"></td>
			</tr>
			<tr>
				<th>银行账号：</th>
				<td><input id="bankAccount" type="text" style="width: 250px;"></td>
			</tr>
		</table>
		<p class="authenticateBox">
			<a href="javascript:bindingBankCard();" class="authenticateBnt">绑定银行卡</a>
		</p>
	</div>


	<!--注册IPS-->
	<!-- <div class="layerBodyBox" id="verify_ips"
		style="display: none;">
		步骤图
		<span class="stepLink stepIocn_06">&nbsp;</span>
		End 步骤图
		<div class="promptBox">
			<span>&nbsp;</span>
			<p>注册宝付提示内容</p>
			<div class="clear"></div>
		</div>
		<p class="authenticateBox">
			<a href="javascript:regist_bf();" class="authenticateBnt">立即进入宝付，注册宝付账户</a>
		</p>
	</div> -->
	<!--End 注册IPS-->
</div>
<div class="wrapBox"></div>