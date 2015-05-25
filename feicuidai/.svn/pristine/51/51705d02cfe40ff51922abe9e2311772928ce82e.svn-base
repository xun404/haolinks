<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>翡翠贷-用户注册</title>
<link rel="stylesheet" href="/resource/css/validationEngine.jquery.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/base.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/login.css" />
<script type="text/javascript" src="/resources/js/jquery-1.7.2.min.js"></script>
<!-- <script type="text/javascript" src="/resources/js/jquery.validationEngine.js" ></script>
<script type="text/javascript" src="/resources/js/jquery.validationEngine-zh_CN.js" ></script> 
<script type="text/javascript" src="/resources/js/login.js" ></script>-->
<jsp:include page="/WEB-INF/views/visitor/common.jsp"></jsp:include>
<script type="text/javascript" src="/resources/js/agree.js"></script>
<script>
	function checkOnly(name, value) {
		if (name == "userName") {
			return $.ajax({
				url : '/visitorManagement/registration/checkOnly_username?fieldValue=' + value,
				async : false
			}).responseText;
		} else if (name == "phone" && $("input[name='phone']").val() != "") {
			return $.ajax({
				url : '/visitorManagement/registration/checkOnly_phone?fieldValue=' + value,
				async : false
			}).responseText;
		}
	}
	function check() {
		if ($("input[name='userName']").val() == "") {
			document.getElementById("username").focus();
			return;
		}
		if (checkOnly("userName", $("input[name='userName']").val()) == "[null,false]") {
			document.getElementById("username").focus();
			return;
		}
		if ($("input[name='pwd']").val() == "") {
			document.getElementById("password").focus();
			$("input[name='pwd']").next().text("请输入密码");
			return;
		}
		if ($("input[name='pwd']").val().length < 6) {
			document.getElementById("password").focus();
			$("input[name='pwd']").next().text("密码长度至少6位");
			return;
		}
		if ($("input[name='pwd2']").val() == "") {
			document.getElementById("pwd2").focus();
			$("input[name='pwd2']").next().text("请输入确认密码");
			return;
		}
		if ($("input[name='pwd2']").val() != $("input[name='pwd']").val()) {
			document.getElementById("pwd2").focus();
			$("input[name='pwd2']").next().text("两次输入密码不一致");
			return;
		}
		if ($("input[name='phone']").val() == "") {
			document.getElementById("phone").focus();
			$("input[name='phone']").next().text("请输入您的手机号");
			return;
		}
		var myreg = /^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/;
		if (!myreg.test($("input[name='phone']").val())) {
			document.getElementById("phone").focus();
			$("input[name='phone']").next().text("请输入正确的手机号");
			return;
		}
		if (checkOnly("phone", $("input[name='phone']").val()) == "[null,false]") {
			document.getElementById("phone").focus();
			return;
		}
		/* if ($("input[name='character']:checked").val() == ""
				|| $("input[name='character']:checked").val() == null) {
			ymPrompt.alert("请角色类型");
			return;
		} */
		if ($("input[name='captcha']").val() == "") {
			ymPrompt.alert("请输入验证码");
			document.getElementById("captcha").focus();
			return;
		}
		if ($("input[name='phoneCode']").val() == "") {
			document.getElementById("phoneCode").focus();
			ymPrompt.alert("请输入手机验证码");
			return;
		}
		if(checkPhoneCode($("input[name='phoneCode']").val(),$("input[name='code']").val()) == "[false]"){
			ymPrompt.alert("手机验证码错误，请重新输入");
			document.getElementById("phoneCode").focus();
			return;
		}
		if (!$("#checkAgree").attr('checked')) {
			ymPrompt.alert("您还未同意翡翠贷网站服务协议");
			return;
		}else {
			$("#df_rigster").submit();
		}
	}
	function checkPhoneCode(phoneCode,code){
		if($("input[name='phoneCode']").val() != ""){
			return $.ajax({
				url : '/visitorManagement/registration/checkPhoneCode?phoneCode=' + phoneCode + '&code='+code,
				async : false
			}).responseText;
		}
	}
	// 发送手机验证码
	function send_sms() {
		var phone = $("input[name='phone']").val();// 手机号
		if (!ver_phone.test(phone)) {
			ymPrompt.alert("请输入有效的手机号码！", 400, 200, '提示', null);
			return;
		} else {
			fn_ajax("/member/sendRegistSMS", {
				phone : phone
			}, function(data) {
//				alert(data);
				if (data != "0") {
					var code= data ;
					$("input[name='code']").val(data);
					ymPrompt.succeedInfo('手机验证码已成功发送至您的手机，请注意查收:'+code , 400, 200, '成功',null);
				}
				else {
					ymPrompt.errorInfo('手机验证码发送失败！', 400, 200, '失败', null);
				}
			});
		}
	}
	
	function enterPress(e) {
		var e = e || window.event;
		if (e.keyCode == 13) {
			$("#enter").click();
		}
	}
</script>

<style>
.container {
	position: relative;
	height: 54px;
}

.container:hover {
	z-index: 9999;
}

.role_select {
	height: 54px;
	line-height: 34px;
	float: left;
	clear: left;
}

.role_select span {
	cursor: pointer;
	display: block;
	overflow: hidden;
	width: 36px;
	background-color: white;
	text-align: center;
	border: 1px solid #ccc;
	height: 37px;
	background: url("/resources/images/reg_imgs.jpg") no-repeat scroll
		-232px -202px;
}

.role_select li {
	width: 38px;
	height: 34px;
	font-size: 14px;
	line-height: 34px;
	background-color: #ccc;
	text-align: center;
}

input#recommend {
	width: 133px;
	height: 25px;
	border: 1px solid #cecece;
	border-radius: 3px;
	font-size: 14px;
	padding: 6px;
	margin-left: 5px;
	float: right;
}
</style>

</head>
<body style="background-color: #f3f3f3" onkeydown="enterPress(event);">
	<!--head-->
	<%--<div class="loginhead">
 <div class="w960px pot_r">
 <a href="/" class="loginLogo"><img src="/resources/images/logo.jpg" alt="" title="翡翠贷平台"/></a>
 <span class="Logintitle">注册</span>
 <div class="registerheadRtBox">已有帐号，<a href="<%=basePath%>visitor/to-login">立即登录！</a></div>
 </div>
</div>
--%><jsp:include page="/WEB-INF/views/visitor/communal/head.jsp" /><!--End head-->

	<!--Content-->
	<div class="loginContent">
		<div class="w960px loginBox">
			<div style="width: 513; height: 445px; margin-top: 0px; float: left">
				<img src="/resources/images/register_03.jpg" alt="" />
			</div>
			<div
				style="width: 400px; background-color: #f0f4f7; border: 1px solid #e1e1e1; float: right; ">
				<form id="df_rigster" action="/visitorManagement/registration/registration_1_htm"
					method="post">
					<input type="hidden" name="member" value="${generuser.id }" />
					<input type="hidden" name="code" value="${code}"/>
					<table cellpadding="0" cellspacing="0" border="0"
						class="loginTable">
						<tbody>
							<tr>
								<td colspan="2"
									style="width: 350px; height: 50px; line-height: 50px; font-size: 20px; color: #00448b; padding-left: 0px; font-weight: bold;">会员注册</td>
							</tr>
							<tr>
								<th>用户名：</th>
								<td><input type="text" value="${userName}" id="username"
									name="userName" class="loginTx" placeholder="手机号/邮箱/用户名"
									value="" /><label class="userVf Vf_P1">请输入用户名</label></td>
							</tr>
							<tr>
								<th>密码：</th>
								<td><input type="password" name="pwd" id="password"
									class="loginTx" placeholder="请输入密码" value="" /><label
									class="userVf Vf_P1">请输入密码</label></td>
							</tr>
							<tr>
								<th>确认密码：</th>
								<td><input type="password" name="pwd2" id="pwd2"
									class="loginTx" placeholder="请再次输入密码" value="" /><label
									class="userVf Vf_P1">请输入确认密码</label></td>
							</tr>
							<tr>
								<th>手机号码：</th>
								<td><input type="text" name="phone"
									id="phone" class="loginTx" placeholder="请输入手机号"/><label
									class="userVf Vf_P1">请输入您的手机号</label><a href="javascript:;"
					onclick="send_sms();">点击获取验证码</a></td>
							</tr>
							<tr>
								<th>手机验证：</th>
								<td><input type="text" name="phoneCode" id="phoneCode"
									class="loginTx" placeholder="输入手机验证码"/></td>
							</tr>
							<tr>
								<th>验证码：</th>
								<td><input type="text" name="captcha" id="captcha"
									class="loginVftx" placeholder="输入验证码" value="" /><span
									class="loginVfImg"><img name="验证码" title="看不清，点击换一张"
										src="<%=basePath%>cic/code?name=registration"
										onclick="this.src='/cic/code?name=registration&id='+new Date();"
										style="cursor: pointer;" /></span></td>
							</tr>
							<tr>
								<th>推荐人：</th>
								<td>
									<div class="container">
										<div class="role_select" role="select">
											<span style="float: left"><c:if
													test="${null==generuser}">无</c:if> <c:if
													test="${null!=generuser}">有</c:if></span>
											<ul
												style="position: absolute; top: 40px; display: none; z-index: 9999">
												<li val="0">无</li>
												<li val="1">有</li>
											</ul>
											<input type="text" value="${recommend}" name="recommend"
												placeholder="输入推荐人用户名" id="recommend"
												<c:if
													test="${null==generuser}">style="display: none"</c:if>
												<c:if test="${null!=generuser}">style="display: block" readonly</c:if> />
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th style="height: 20px;"></th>
								<td style="height: 20px; line-height: 20px"><c:if
										test="${msg eq 1}">
										<font style="color: red;">验证码错误</font>
									</c:if></td>
							</tr>
							<tr>
								<th style="height: 30px;"></th>
								<td style="height: 30px; line-height: 30px"><input
									type="checkbox" id="checkAgree"
									style="float: left; margin: 8px 5px 0 0;" /><span
									style="display: block; height: 30px; line-height: 30px; float: left;">我已经阅读并同意<a
										href="javascript:showAgreeContent();" style="color: #1980ca">翡翠贷网站服务协议</a></span>
								</td>
							</tr>
							<tr>
								<th></th>
								<td><input type="button" onclick="check()" value=""
									id="enter"
									style="cursor: pointer; background: url(/resources/images/ljzc.png) no-repeat; width: 102px; height: 41px; padding: 0; margin: 0; border: 0; float: left" />
									<a href="/visitorManagement/visitor/to-login"><span
										style="display: block; width: 50px; height: 36px; color: red; border-bottom: 1px solid red; float: left; margin-left: 10px;">直接登录</span></a>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/visitor/footer.jsp" /><!--End footer-->
	<style>
#AutoComplete {
	background: #fff;
	border: 1px solid #4190db;
	display: none;
	width: 250px;
}

#AutoComplete ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

#AutoComplete li {
	color: #333;
	cursor: pointer;
	font: 12px/22px \5b8b\4f53;
	text-indent: 5px;
}

#AutoComplete .hover {
	background: #6eb6fe;
	color: #fff;
}
</style>
	<script type="text/javascript"
		src="/resources/js/jquery.autoComplete.js"></script>
	<script type="text/javascript">
		$(function() {
			jQuery.AutoComplete('#phone');
		});
		$("#agre").bind(
				"change",
				function() {
					if (this.checked)
						$(".regButton").removeClass("disabledColor").attr(
								"href", "javascript:regSubmit()");
					else
						$(".regButton").addClass("disabledColor").removeAttr(
								"href");
				});
		$(function($) {
			function g(s) {
				return s.replace("px", "") * 1 || 0;
			}
			//$("div[role='select']").each(function() {
			//$("span", this).text($("ul>li:eq(0)", this).text());
			//$("ul",this).css({"top":$(this).height(),"width":$(this).width(),"border":$(this).css("border"),"border-top":"none"});
			//});
			$("div[role='select'] li").bind("click", function() {
				$(this).parent().prev("span").text($(this).text());
				if ($(this).attr("val") == 1) {
					$("#recommend").show();
					$("#role_select_id").val(1);
				} else {
					$("#recommend").hide();
					$("#refIdTip").empty();
					$("#role_select_id").val(0);
					$("#recommend").val("");
				}
			});
			$(document).bind("click", function(e) {
				$("div[role='select'] ul").hide();

				if ($(e.target).attr("role") == "select") {
					$("ul", e.target).show();
				} else if ($(e.target).parent().attr("role") == "select") {
					$("+ul", e.target).show();
				}
			});
		})(jQuery);
	</script>
	<div id="agree" style="display: none">
		<div id="message">
			<div id="msgbg"
				style="position: absolute; top: 0%; left: 0%; width: 100%; height: 7914px; background-color: black; z-index: 1002; -moz-opacity: 0.7; opacity: .70; filter: alpha(opacity = 70);">
			</div>
			<div id="msg"
				style="position: fixed; left: 89.5px; top: 28.5px; z-index: 1003; overflow: auto;">
				<div class="lend_inmsn"
					style="width: 995px; height: 490px; padding-top: 10px; background-color: #ddf0fd">
					<div style="width: 969px; margin: 0 auto; background: #fff;">
						<div class="how_online"
							style="font-size: 20px; font-weight: bold; height: 35px; line-height: 35px; color: #ff0000; text-align: center; background: #f6f6f6;">
							翡翠贷网站服务协议</div>
						<div class="BR-neir overflow"
							style="height: 400px; padding: 10px; font-size: 14px; color: #2e709c; line-height: 25px; overflow: scroll;">
							<h2>${agree}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function showAgreeContent() {
			showAgree();
			$('#agree').show();
		}
		function initPlaceHolders() {
			if ('placeholder' in document.createElement('input')) { //如果浏览器原生支持placeholder
				return;
			}
			function target(e) {
				var e = e || window.event;
				return e.target || e.srcElement;
			}
			;
			function _getEmptyHintEl(el) {
				var hintEl = el.hintEl;
				return hintEl && g(hintEl);
			}
			;
			function blurFn(e) {
				var el = target(e);
				if (!el || el.tagName != 'INPUT' && el.tagName != 'TEXTAREA')
					return;//IE下，onfocusin会在div等元素触发 
				var emptyHintEl = el.__emptyHintEl;
				if (emptyHintEl) {
					//clearTimeout(el.__placeholderTimer||0);
					//el.__placeholderTimer=setTimeout(function(){//在360浏览器下，autocomplete会先blur再change
					if (el.value)
						emptyHintEl.style.display = 'none';
					else
						emptyHintEl.style.display = '';
					//},600);
				}
			}
			;
			function focusFn(e) {
				var el = target(e);
				if (!el || el.tagName != 'INPUT' && el.tagName != 'TEXTAREA')
					return;//IE下，onfocusin会在div等元素触发 
				var emptyHintEl = el.__emptyHintEl;
				if (emptyHintEl) {
					//clearTimeout(el.__placeholderTimer||0);
					emptyHintEl.style.display = 'none';
				}
			}
			;
			if (document.addEventListener) {//ie
				document.addEventListener('focus', focusFn, true);
				document.addEventListener('blur', blurFn, true);
			} else {
				document.attachEvent('onfocusin', focusFn);
				document.attachEvent('onfocusout', blurFn);
			}

			var elss = [ document.getElementsByTagName('input'),
					document.getElementsByTagName('textarea') ];
			for (var n = 0; n < 2; n++) {
				var els = elss[n];
				for (var i = 0; i < els.length; i++) {
					var el = els[i];
					var placeholder = el.getAttribute('placeholder'), emptyHintEl = el.__emptyHintEl;
					if (placeholder && !emptyHintEl) {
						emptyHintEl = document.createElement('span');
						emptyHintEl.innerHTML = placeholder;
						emptyHintEl.className = 'login_holder';
						emptyHintEl.onclick = function(el) {
							return function() {
								try {
									el.focus();
								} catch (ex) {
								}
							}
						}(el);
						if (el.value)
							emptyHintEl.style.display = 'none';
						el.parentNode.insertBefore(emptyHintEl, el);
						el.__emptyHintEl = emptyHintEl;
					}
				}
			}
		}

		initPlaceHolders();
	</script>
</body>
</html>
