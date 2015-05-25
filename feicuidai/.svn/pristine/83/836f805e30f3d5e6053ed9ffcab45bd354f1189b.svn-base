/**
 * Created by Keen on 2015/5/13.
 */
$(document)
    .ready(
    function($) {
        // 登录与注册
        $("#phone")
            .focus(
            function() {
                if ($(this).attr("name") == "phone"
                    && checkOnly("phone", $(this)
                        .val()) == "[null,false]") {
                    $(this).attr('placeholder','该手机号码已被使用');
                    $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
                    $(this).val("");
                }
            });
        $("#phone")
            .focusout(
            function() {
                if ($(this).val() == "") {
                    if ($(this).attr("name") == "phone") {
                        $(this).attr('placeholder','手机号码不能为空');
                        $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
                    }
                } else if ($(this).attr("name") == "phone"
                    && !/^1[3,4,5,7,8]{1}[0-9]{1}[0-9]{8}$/
                        .test($(this).val())) {
                    $(this).attr('placeholder','请输入正确的手机号码');
                    $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
                    $(this).val("");
                } else if ($(this).attr("name") == "phone"
                    && checkOnly("phone", $(this)
                        .val()) == "[null,false]") {
                    $(this).attr('placeholder','该手机号码已被使用');
                    $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
                    $(this).val("");
                } else {
                    $(this).next().html("<img src='/resource/phone/images/res_yes.png' width='25' height='25' alt=''/>");
                }
            });
        $("#password")
            .focusout(
            function() {
                var pswVal = $(this).val();
                if (pswVal == "") {
                    $(this).attr('placeholder','密码不能为空');
                    $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
                } else if (pswVal.length < 6) {
                    $(this).attr('placeholder','密码长度必须大于6位');
                    $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
                } else if (!(/^.*?[\d]+.*$/
                        .test(pswVal)
                    && /^.*?[A-Za-z].*$/
                        .test(pswVal) && /^.{6,16}$/
                        .test(pswVal))) {
                    $(this).attr('placeholder','密码必须是数字与字母组合');
                    $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
                }else {
                    $(this).next().html("<img src='/resource/phone/images/res_yes.png' width='25' height='25' alt=''/>");
                }
            });
        $("#pwd2").focusout(function() {
            if ($(this).val() == "") {
                $(this).attr('placeholder','确认密码不能为空');
                $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
            } else if ($(this).val() != $("#password").val()) {
                $(this).attr('placeholder','确认密码不一致');
                $(this).next().html("<img src='/resource/phone/images/res_no.png' width='25' height='25' alt=''/>");
            }else {
                $(this).next().html("<img src='/resource/phone/images/res_yes.png' width='25' height='25' alt=''/>");
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