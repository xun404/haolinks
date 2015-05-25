function checkOnly(name, value) {
	if (name == "phone" && $("input[name='phone']").val() != "") {
		return $.ajax({
			url : '/visitorManagement/registration/checkOnly_phone?fieldValue='
					+ value,
			async : false
		}).responseText;
	}
}

function check() {
    if ($("input[name='phone']").val() == "") {
        document.getElementById("phone").focus();
        $("input[name='phone']").parent().next().text("请输入您的手机号");
        return;
    }
    var myreg = /^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/;
    if (!myreg.test($("input[name='phone']").val())) {
        document.getElementById("phone").focus();
        $("input[name='phone']").parent().next().text("请输入正确的手机号");
        return;
    }
    if ($("input[name='pwd']").val() == "") {
        document.getElementById("password").focus();
        $("input[name='pwd']").parent().next().text("请输入密码");
        return;
    }
    if ($("input[name='pwd']").val().length < 6) {
        document.getElementById("password").focus();
        $("input[name='pwd']").parent().next().text("密码长度至少6位");
        return;
    }
    if ($("input[name='pwd2']").val() == "") {
        document.getElementById("pwd2").focus();
        $("input[name='pwd2']").parent().next().text("请输入确认密码");
        return;
    }
    if ($("input[name='pwd2']").val() != $("input[name='pwd']").val()) {
        document.getElementById("pwd2").focus();
        $("input[name='pwd2']").parent().next().text("两次输入密码不一致");
        return;
    }
    if ($("input[name='phone']").val() == "") {
        document.getElementById("phone").focus();
        $("input[name='phone']").parent().next().text("请输入您的手机号");
        return;
    }
    if (checkOnly("phone", $("input[name='phone']").val()) == "[null,false]") {
        document.getElementById("phone").focus();
        return;
    }
    /*
	 * if ($("input[name='character']:checked").val() == "" ||
	 * $("input[name='character']:checked").val() == null) {
	 * ymPrompt.alert("请角色类型"); return; }
	 */
    if ($("input[name='phoneCode']").val() == "") {
        document.getElementById("phoneCode").focus();
        ymPrompt.alert("请输入手机验证码");
        return;
    }
    if (checkPhoneCode($("input[name='phoneCode']").val(), $(
                    "input[name='code']").val()) == "[false]") {
        ymPrompt.alert("手机验证码错误，请重新输入");
        document.getElementById("phoneCode").focus();
        return;
    }
    if (!$("#checkAgree").attr('checked')) {
        ymPrompt.alert("您还未同意翡翠贷金融平台服务协议");
        return;
    } else {
        $("#df_rigster").submit();
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
    var phone = $("input[name='phone']").val();// 手机号
    if (!/^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/.test(phone)) {
        ymPrompt.alert("请输入有效的手机号码！", 400, 200, '提示', null);
        return;
    } else {
        // 在手机正确的前提先，判断图像验证码是否正确
    if(checkCaptcha($("input[name='captcha']").val())!= "" &&checkCaptcha($("input[name='captcha']").val()) == "[false]")
    {
        ymPrompt.alert("请输入正确的图形验证码");
        document.getElementById("captcha").focus();
        return;
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







