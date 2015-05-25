<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" >
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
<link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css"href="/resource/phone/ymPrompt/simple_gray/ymPrompt.css"/>
<script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
<script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>

<title>提现</title>
</head>
<body>
<div class="main">
<!--内容 Start-->
<div class="amount_head_box" id="balance">
可用余额：<fmt:formatNumber value="${empty session_user.userFundInfo.cashBalance ? '0.00':session_user.userFundInfo.cashBalance}" pattern="0.00"/>元
<a href="/phoneVisitor/bankManagement" class="buttom_a">银行卡管理</a>

</div>


<div class="withdrawals_box">
    <div class="withdrawals_left">银行卡 :</div>
    <div class="withdrawals_center" onclick="bankCard(event)" id="userBank">请选择银行卡</div>
    <div class="withdrawals_right"></div>
    <div class="c"></div>
    <div class="language_list bank_son">
        <c:forEach items="${bankList }" var="userBank">
            <div class="language_selected bank_son_list">${userBank.bankAccount}${userBank.bankType.name}</div>
            <input type="hidden" value="${userBank.bankAccount}"/>
            <%--</c:if>--%>
        </c:forEach>
    </div>
</div>


<div class="withdrawals_box" style="float: left;">

    <div class="withdrawals_left">提现金额 :</div>
    <div class="withdrawals_center">   
    <input type="text" placeholder="输入提现的金额" id="money"
           name="money" class="input_style"  />
    </div>
    <div class="withdrawals_right"></div>
    <div class="c"></div>

</div>
<div class="withdrawals_box" style="float: left;">

    <div class="withdrawals_left">手续费 :</div>
    <div class="withdrawals_center" id="fate">0.00元</div>
    <div class="withdrawals_right"></div>
    <div class="c"></div>

</div>

<div class="withdrawals_box" style="float: left;">

    <div class="withdrawals_left">验证码 :</div>
    <div class="withdrawals_center">   
    <input type="text" placeholder="输入手机验证码"  id="yhmphone"
           name="smsCode"  class="input_style"/>
    </div>
    <div class="withdrawals_right"><a id="getcode" onkeyup="value=value.replace(/[^\d\.]/g,'')">获取验证码</a></div>
    <div class="c"></div>

</div>
    <a href="javascript:submitWithdrawApply()" style="float: left;" class="button_style">申请提现</a>
    <div class="tliy" style=" line-height: 20px; height: 30px;text-align: left;float: left;">单笔提现不能低于 50 元。</div>
    <div class="tliy" style=" line-height: 20px; height: 30px;text-align: left;float: left;">每个月前5次提现操作免手续费。</div>
    <div class="tliy" style=" line-height: 20px; height: 30px;text-align: left;float: left;">超过5次提现操作,需提现金额0.5%提现手续费。</div>

<!--内容 End-->
</div>
<script type="text/javascript">
    //输入框验证
    $("input[name='money']").bind("input propertychange", checkMoney);
    function checkMoney() {
        var balance = parseFloat($("#balance").text());
        if (isNaN($(this).val())) {
            $(this).val($(this).val().replace(/[^\d]$/g, ''));
        } else if (parseInt($(this).val()) > balance) {
            ymPrompt.alert("提现金额不得超过账户余额！", 250, 200, "提示", null);
            $(this).val(balance);
        }
    }
    $("input[name='money']").change(function () {
        if (/^[1-4]?\d{1}$/.test($(this).val())) {
            ymPrompt.alert("单笔提现不能低于50元，请重新输入！", 250, 200, "提示", null);
            $(this).val(50);
        }
        if (!/^\d+$/.test($(this).val())) {
            ymPrompt.alert("提现金额不能为小数！", 250, 200, "提示", null);
            $(this).val(50);
        }
    })

    //手机号码
    $("#getcode").click(function () {
        $.ajax({
            type: 'post',
            url: '/fundManagement/withdraw/sendPhoneWithdraw',
            success: function (msg) {
                if (msg == 1) {
                    ymPrompt.succeedInfo("提现短信发送成功!", 250, 200, "温馨提示", null);
                } else if (msg == 2) {
                    ymPrompt.errorInfo("你输入的电话号码不存在！", 250, 200, "温馨提示", null);
                } else if (msg == 4) {
                    ymPrompt.errorInfo("短信发送频繁，请2分钟后再发！", 250, 200, "温馨提示", null);
                } else {
                    ymPrompt.errorInfo("短信发送失败！", 250, 200, "温馨提示", null);
                }
            }
        });
    });

    $("#money").change(function () {
                if (parseInt($("#money").val()) > 50 && parseInt($("#money").val()) <= 400) {
                    var fate=2;
                    $("#fate").text(fate.toFixed(2));
                }else if (parseInt($("#money").val()) > 400) {
                    var fate=parseFloat($("#money").val()) * 0.005;
                    $("#fate").text(fate.toFixed(2));
                }
            }
    )
//
    function bankCard(e){
       $(".bank_son").toggle();
    }
    $(".bank_son .language_selected").click(function() {
        $("#userBank").text($(this).next().val());
        $(".bank_son").hide();
    });
//

    //提交提现申请
    function submitWithdrawApply() {
        var money = $("input[name='money']").val();
        var userBankId = $("#userBank").text();
        var smsCode = $("input[name='smsCode']").val();
        var balance = parseFloat($("#balance").text());
        if($("#fate").text()==""){
            var factorage=0;
        }else{
            var factorage= parseFloat($("#fate").text());
        }
        if (money == "") {
            ymPrompt.alert("请输入申请提现金额！");
            return;
        }
        if (userBankId == "") {
            ymPrompt.alert("请选择将要提现的银行卡号！");
            return;
        }
        if ((parseInt($("input[name='money']").val())+factorage) > balance) {
            ymPrompt.alert("您的账户余额提现后，不够支付提现手续费！", 250, 200, "提示", null);
            $("#balance").val(balance);
            return;
        }
        $.ajax({
            url: '/fundManagement/withdraw/withdrawApply',
            type: 'POST',
            dataType: 'json',
            data: {money: money, smsCode: smsCode, userBankId: userBankId},
            success: function (msg) {
                if (msg == "success") {
                    ymPrompt.succeedInfo("提现申请已提交，等待审核！", 250, 200, null, function reset() {
                        window.location.href = '/phoneVisitor/withdrawView';
                    });
                } else if (msg == 2) {
                    ymPrompt.errorInfo("请重新发送短新验证码！", 250, 200, "温馨提示", null);
                } else if (msg == 3) {
                    ymPrompt.errorInfo("验证码输入错误！", 250, 200, "温馨提示", null);
                } else if (msg == 5) {
                    ymPrompt.errorInfo("该手机号码不存在！", 250, 200, "温馨提示", null);
                } else {
                    ymPrompt.errorInfo("找回密码失败！", 250, 200, "温馨提示", null);
                }
            }
        });
    }
</script>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>
</body>
</html>
