/**
 * Created by Keen on 2015/5/13.
 */
//ajax请求：请求地址,参数,回调方法
function fnc_ajax(_url, _param, _callback) {
    $.ajax({
        url : _url,
        type : "post",
        data : _param,
        contentType : "application/x-www-form-urlencoded;charset=utf-8",
        success : function(_msg) {
            if (_callback) {
                _callback(_msg);
            }
        }
    });
}

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
        ymPrompt.errorInfo('请输入您的手机号！', 250, 200, '失败', null);
        //$("input[name='phone']").parent().next().text("请输入您的手机号");
        return;
    }
    var myreg = /^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/;
    if (!myreg.test($("input[name='phone']").val())) {
        document.getElementById("phone").focus();
        ymPrompt.errorInfo('请输入正确的手机号！', 250, 200, '失败', null);
        //$("input[name='phone']").parent().next().text("请输入正确的手机号");
        return;
    }
    if ($("input[name='pwd']").val() == "") {
        document.getElementById("password").focus();
        ymPrompt.errorInfo('请输入密码！', 250, 200, '失败', null);
        //$("input[name='pwd']").parent().next().text("请输入密码");
        return;
    }
    if ($("input[name='pwd']").val().length < 6) {
        document.getElementById("password").focus();
        ymPrompt.errorInfo('密码长度至少6位！', 250, 200, '失败', null);
        //$("input[name='pwd']").parent().next().text("密码长度至少6位");
        return;
    }
    if ((!(/^.*?[\d]+.*$/
            .test($("input[name='pwd']").val())
        && /^.*?[A-Za-z].*$/
            .test($("input[name='pwd']").val()) && /^.{6,16}$/
            .test($("input[name='pwd']").val())))) {
        document.getElementById("password").focus();
        ymPrompt.errorInfo('密码必须字母和数字组合！', 250, 200, '失败', null);
        return;
    }
    if ($("input[name='pwd2']").val() == "") {
        document.getElementById("pwd2").focus();
        ymPrompt.errorInfo('请输入确认密码！', 250, 200, '失败', null);
        //$("input[name='pwd2']").parent().next().text("请输入确认密码");
        return;
    }
    if ($("input[name='pwd2']").val() != $("input[name='pwd']").val()) {
        document.getElementById("pwd2").focus();
        ymPrompt.errorInfo('两次输入密码不一致！', 250, 200, '失败', null);
        //$("input[name='pwd2']").parent().next().text("两次输入密码不一致");
        return;
    }
    if ($("input[name='phone']").val() == "") {
        document.getElementById("phone").focus();
        ymPrompt.errorInfo('请输入您的手机号！', 250, 200, '失败', null);
        //$("input[name='phone']").parent().next().text("请输入您的手机号");
        return;
    }
    if (checkOnly("phone", $("input[name='phone']").val()) == "[null,false]") {
        document.getElementById("phone").focus();
        ymPrompt.errorInfo('您输入的手机已经存在！', 250, 200, '失败', null);
        return;
    }
    if ($("input[name='phoneCode']").val() == "") {
        document.getElementById("phoneCode").focus();
        ymPrompt.errorInfo('请输入手机验证码！', 250, 200, '失败', null);
        return;
    }
    if (checkPhoneCode($("input[name='phoneCode']").val(), $(
            "input[name='code']").val()) == "[false]") {
        ymPrompt.errorInfo('手机验证码错误，请重新输入！', 250, 200, '失败', null);
        document.getElementById("phoneCode").focus();
        return;
    }
    else {
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

// 限制发送信息时间
var countdown = 60;
function settime(val) {
    if (countdown == 0) {
        val.removeAttribute("disabled");
        val.value = "获取短信验证码";
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
        ymPrompt.alert("请输入有效的手机号码！", 250, 200, '提示', null);
        return;
    } else {
            settime(val);
            // 发送验证码
        fnc_ajax("/member/sendRegistSMS", {
                phone: phone
            }, function (data) {
                // alert(data);
                if (data != "0") {
                    var code = data;
                    $("input[name='code']").val(data);
                    ymPrompt.succeedInfo('手机验证码已成功发送至您的手机，请注意查收', 250,
                        200, '成功', null);
                } else {
                    ymPrompt.errorInfo('手机验证码发送失败！', 250, 200, '失败', null);

                }
            })
    }
}

function enterPress(e) {
    var e = e || window.event;
    if (e.keyCode == 13) {
        $("#enter").click();
    }
}