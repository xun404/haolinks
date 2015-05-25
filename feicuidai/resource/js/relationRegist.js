function checkOnly(name, value) {
	if (name == "phone" && $("input[name='phone']").val() != "") {
		return $.ajax({
			url : '/visitorManagement/registration/checkOnly_phone?fieldValue='
					+ value,
			async : false
		}).responseText;
	}
}

function checkRegist() {
    if ($("#phone").val() == "") {
        $("#phone").focus();
        $("#phone").parent().next().text("请输入您的手机号");
        return;
    }
    var myreg = /^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/;
    if (!myreg.test($("#phone").val())) {
        $("#phone").focus();
        $("#phone").parent().next().text("请输入正确的手机号");
        return;
    }
    if ($("#password").val() == "") {
        $("#password").focus();
        $("#password").parent().next().text("请输入密码");
        return;
    }
    if ($("#password").val().length < 6) {
        $("#password").focus();
        $("#password").parent().next().text("密码长度至少6位");
        return;
    }
    if ($("#pwd2").val() == "") {
        $("#pwd2").focus();
        $("#pwd2").parent().next().text("请输入确认密码");
        return;
    }
    if ($("#password").val() != $("#pwd2").val()) {
        $("#pwd2").focus();
        $("#pwd2").parent().next().text("两次输入密码不一致");
        return;
    }
    if ($("#phone").val() == "") {
        $("#phone").focus();
        $("#phone").parent().next().text("请输入您的手机号");
        return;
    }
    if (checkOnly("phone",$("#phone").val()) == "[null,false]") {
        $("#phone").focus();
        return;
    }
    /*
	 * if ($("input[name='character']:checked").val() == "" ||
	 * $("input[name='character']:checked").val() == null) {
	 * ymPrompt.alert("请角色类型"); return; }
	 */
    if ($("#phoneCode").val() == "") {
        $("#phoneCode").focus();
        ymPrompt.alert("请输入手机验证码");
        return;
    }
    if (checkPhoneCode($("#phoneCode").val(), $(
                    "input[name='code']").val()) == "[false]") {
        ymPrompt.alert("手机验证码错误，请重新输入");
        $("#phoneCode").focus();
        return;
    }
    if (!$("#checkAgree").attr('checked')) {
        ymPrompt.alert("您还未同意翡翠贷金融平台服务协议");

    } else {
        $("#Content_form_1").submit();
    }
}

function checkPhoneCode(phoneCode, code) {
    if ($("input[name='phoneCode']").val() != "") {
        return $.ajax({
            url: '/visitorManagement/registration/checkPhoneCode?phoneCode=' + phoneCode
            + '&code=' + code,
            async: false
        }).responseText;
    }
}

function checkCaptcha(value){
      return $.ajax({
          url: '/visitorManagement/registration/checkCaptcha?fieldValue=' + value,
          async: false
      }).responseText;
}

// 限制发送信息时间
var countdown = 60;
function settime(val) {
    if (countdown == 0) {
        val.removeAttribute("disabled");
        val.value = "免费获取验证码";
        countdown = 60;
        return false;
    } else {
        val.setAttribute("disabled", true);
        val.value = "重新发送(" + countdown + ")";
        countdown--;
    }
    setTimeout(function () {
        settime(val)
    }, 1000)
}
// 发送手机验证码
function send_sms(val) {
    var phone = $("#phone").val();// 手机号
    if (!/^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/.test(phone)) {
        ymPrompt.alert("请输入有效的手机号码！", 400, 200, '提示', null);

    } else {
        // 在手机正确的前提先，判断图像验证码是否正确
    if(checkCaptcha($("#captcha").val())!= "" &&checkCaptcha($("#captcha").val()) == "[false]")
    {
        ymPrompt.alert("请输入正确的图形验证码");
        $("#captcha").focus();

    }else{
        settime(val);
        // 发送验证码
        fn_ajax("/member/sendRegistSMS", {
            phone: phone
        }, function (data) {
            // alert(data);
            if (data != "0") {
                var code = data;
                $("input[name='code']").val(data);
                ymPrompt.succeedInfo('手机验证码已成功发送至您的手机，请注意查收', 400,
                        200, '成功', null);
            } else {
                ymPrompt.errorInfo('手机验证码发送失败！', 400, 200, '失败', null);

            }
        })
      }
    }
}

function enterPress(e) {
    var e = e || window.event;
    if (e.keyCode == 13) {
        $("#enter").click();
    }
}







