$(document)
		.ready(
				function($) {

					// 导航菜单
					$(".navbox>span").hover(function() {
						/*
						 * $(this).find("div").stop().slideDown(100);
						 * $(this).find("div").siblings("a").addClass("navHover");
						 * },function(){
						 * $(this).find("div").stop().slideUp(100);
						 * $(this).find("a").removeClass("navHover");
						 */
						$(this).find("div").css("display", "block");
						$(this).find("div").siblings("a").addClass("navHover");
					}, function() {
						$(this).find("div").css("display", "none");
						$(this).find("a").removeClass("navHover");
					});

					$(".account").hover(function() {
						$("#wdzh").css("display", "block");
						$(".navBox").css("position", "static");
						$(".navBox span").css("position", "static");
					}, function() {
						$("#wdzh").css("display", "none");
						$(".navBox").css("position", "relative");
						$(".navBox span").css("position", "relative");
					});
					// 登录与注册
					$("#phone")
							.focus(
									function() {
										$(this).parent().next().text("");
										if ($(this).attr("name") == "phone"
												&& checkOnly("phone", $(this)
														.val()) == "[null,false]") {
											$(this).parent().next().text(
													"该手机号码已被使用");
											$(this).val("");
										}
										$(this).parent().next().show();
									});
					$("#phone")
							.focusout(
									function() {
										if ($(this).val() == "") {
											if ($(this).attr("name") == "phone") {
												$(this).parent().next().text(
														"手机号码不能为空");
											}
										} else if ($(this).attr("name") == "phone"
												&& !/^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/
														.test($(this).val())) {
											$(this).parent().next().text(
													"请输入正确的手机号码");
											$(this).val("");
										} else if ($(this).attr("name") == "phone"
												&& checkOnly("phone", $(this)
														.val()) == "[null,false]") {
											$(this).parent().next().text(
													"该手机号码已被使用");
											$(this).val("");
										} else {
											$(this).parent().next().hide();
										}
									});
					$("#password").focus(function() {
						$(this).parent().next().text("");
					});
					$("#password")
							.focusout(
									function() {
										var pswVal = $(this).val();
										if (pswVal == "") {
											$(this).parent().next().text(
													"密码不能为空");
										} else if (pswVal.length < 6) {
											$(this).parent().next().text(
													"密码长度必须大于6位");
										} else if (!(/^.*?[\d]+.*$/
												.test(pswVal)
												&& /^.*?[A-Za-z].*$/
														.test(pswVal) && /^.{6,16}$/
												.test(pswVal))) {
											$(this).parent().next().text(
													"密码必须是数字与字母组合");
										}
									});
					$("#pwd2").focus(function() {
						$(this).parent().next().text("");
					});
					$("#pwd2").focusout(function() {
						if ($(this).val() == "") {
							$(this).parent().next().text("确认密码不能为空");
						} else if ($(this).val() != $("#password").val()) {
							$(this).parent().next().text("确认密码不一致");
						}
					});

					function checkOnly(name, value) {
						if (name == "phone"
								&& $("input[name='phone']").val() != "") {
							return $
									.ajax({
										url : '/visitorManagement/registration/checkOnly_phone?fieldValue='
												+ value,
										async : false
									}).responseText;
						}
					}

				});

// dom方法

