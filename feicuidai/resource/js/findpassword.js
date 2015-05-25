$(function () {
    $(document).ready(function () {
        $(".password_management").css("display", "none");
        $("#password_management_01").css("display", "block");
    })
    //手机号码
    $("#getcode").click(function () {
        var yhphone = $("#yhphone").val();

        if (yhphone.length != 11) {
            ymPrompt.errorInfo("请输入11位的移动电话号码", 300, 160, "温馨提示", null);
            return false;
        }
        $.ajax({
            type: 'post',
            data: {phone: yhphone},
            url: '/find_password/findphone.do',
            success: function (msg) {
                if (msg == 1) {
                    ymPrompt.succeedInfo("找回密码短信发送成功!", 300, 160, "温馨提示", null);
                } else if (msg == 2) {
                    ymPrompt.errorInfo("你输入的电话号码不存在！", 300, 160, "温馨提示", null);
                } else if (msg == 4) {
                    ymPrompt.errorInfo("短信发送频繁，请2分钟后再发！", 300, 160, "温馨提示", null);
                } else {
                    ymPrompt.errorInfo("短信发送失败！", 300, 160, "温馨提示", null);
                }
            }
        });
    });

    $("#findbyphone").click(function () {
        var yhmphone = $("#yhmphone").val();
        if (yhmphone.length != 6) {
            ymPrompt.errorInfo("请输入6位的短信验证码", 300, 160, "温馨提示", null);
            return false;
        }
        var yhphone = $("#yhphone").val();
        if (yhphone.length != 11) {
            ymPrompt.errorInfo("请输入11位的移动电话号码", 300, 160, "温馨提示", null);
            return false;
        }
        $.ajax({
            type: 'post',
            data: {phone: yhphone, smsCode: yhmphone},
            url: '/find_password/checksmsCode',
            success: function (msg) {
                if (msg == 1) {
                    //跳转到更改页面
                    //window.location.href="/find_password/toUpdate";
                    $(".password_management").css("display", "none");
                    $("#password_management_02").css("display", "block");
                } else if (msg == 2) {
                    ymPrompt.errorInfo("请重新发送短新验证码！", 300, 160, "温馨提示", null);
                } else if (msg == 3) {
                    ymPrompt.errorInfo("验证码输入错误！", 300, 160, "温馨提示", null);
                } else if (msg == 5) {
                    ymPrompt.errorInfo("该手机号码不存在！", 300, 160, "温馨提示", null);
                } else {
                    ymPrompt.errorInfo("找回密码失败！", 300, 160, "温馨提示", null);
                }
            }
        });
    });

    function reset() {
        window.location.href = '/visitorManagement/visitor/to-login';
    }

    function check_sms_code() {
        var pswVal = $("#passwordfd").val();
        if (!(/^.*?[\d]+.*$/
                .test(pswVal)
            && /^.*?[A-Za-z].*$/
                .test(pswVal) && /^.{6,16}$/
                .test(pswVal))) {
            ymPrompt.errorInfo("密码必须是数字与字母组合", 320, 160, "温馨提示", null);
        } else {
            $.post("/find_password/checkpasswordbylink", {
                "password": $("#passwordfd").val(),
                "passwordagain": $("#passwordfd_again").val()
            }, function (data) {
                if (data == -1) {
                    location.href = "/find_password/init.do";
                } else if (data == -3) {
                    ymPrompt.errorInfo("密码为空，或者两次密码输入不同！", 320, 160, "温馨提示", null);
                } else if (data == 1) {
                    ymPrompt.succeedInfo("密码重置成功！", 300, 160, "温馨提示", reset);
                }
            });
        }
    }

    jQuery(document).ready(function () {
        jQuery("#find_password_form").validationEngine({
            onValidationComplete: function (form, valid) {
                if (valid) {
                    check_sms_code();
                }
            }
        });
    });

});