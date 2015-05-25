<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>资金管理-我要提现</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/withdraw.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/dropdownlist.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/financial_management.css"/>
    <link rel="stylesheet" type="text/css"
          href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>

    <script type="text/javascript" src="/resource/js/dropdownlist.js"></script>
    <script type="text/javascript">
        //提交提现申请
        function submitWithdrawApply() {
            var money = $("input[name='money']").val();
            var bank = $(".tag_select").text();
            var userBankId = $(".tag_select #userBankId").val();
            var smsCode = $("input[name='smsCode']").val();
            var balance = parseFloat($("#balance").text());
            var userName = $("input[name='userName']").val();
            var cardId = $("input[name='cardId']").val();
            if($("#fate").text()==""){
                var factorage=0;
            }else{
                var factorage= parseFloat($("#fate").text());
            }
            if (money == "") {
                ymPrompt.alert("请输入申请提现金额！");
                return;
            }
            if (bank == "") {
                ymPrompt.alert("请选择将要提现的银行卡号！");
                return;
            }
            if (userName == ""||cardId=="") {
                ymPrompt.alert("必须进行实名认证，才能进行提现申请操作！");
                return;
            }
            if ((parseInt($("input[name='money']").val())+factorage) > balance) {
                ymPrompt.alert("您的账户余额提现后，不够支付提现手续费！", null, null, "提示", null);
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
                        ymPrompt.succeedInfo("提现申请已提交，等待审核！", 400, 200, null, function reset() {
                            window.location.href = '/fundManagement/withdraw/withdrawList?fatherMenu=3&sonMenu=2';
                        });
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
        }

        function withdrawApplyList() {
            window.location.href = '/fundManagement/withdraw/withdrawList?fatherMenu=3&sonMenu=2'
        }
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>

<!-- 样式覆盖 -->
<script type="text/javascript" src="/resource/js/myPublic.js"></script>
<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <div class="product_finanaial">
                <ul>
                    <li class="tab_checked">提现申请</li>
                    <li onclick="javascript:withdrawApplyList();" class="tab_switch_view">提现记录</li>
                    <div class="c"></div>
                </ul>
            </div>
            <div class="title_alert tetle_alert_text">温馨提示：
                <p>· 提现操作支持国内大部分银行的网上银行，只要您开通了网上银行的账户即可提现。</p>
                <p>· 单笔提现不能低于 50 元，每个月前5次提现操作免手续费。</p>
                <p>· 每个月超过5次提现操作时，需按提现金额 0.5 %向第三方支付公司支付提现手续费，费用从可用金额中扣除。</p>
                <p>· 请认真核对个人信息和银行卡。申请提交后，不可随意修改。</p>
                <p>· 如果您在提现时遇到其他问题，请咨询客服人员。</p>
            </div>
            <div class="main_form main_records">
                <form action="/withdraw/ipsWithdraw" method="post">
                    <div class="c"></div>
                    <div class="input_box">
                        <div class="content_input"><span>真实姓名</span><span
                                name="userName">
                                    <c:if test="${!empty session_user.realName }"> ${session_user.realName }</c:if></span>
                        </div>
                    </div>
                    <div class="c"></div>
                    <div class="input_box">
                        <div class="content_input"><span>身份证号码</span><span
                                name="cardId">
                                    <c:if test="${!empty session_user.userRelationInfo.cardId }"> ${fn:substring(session_user.userRelationInfo.cardId,0,4)}
                                        <c:forEach begin="" end="${fn:length(fn:substring(session_user.userRelationInfo.cardId,4,18))-5}">*</c:forEach>
                                        ${fn:substring(session_user.userRelationInfo.cardId,fn:length(session_user.userRelationInfo.cardId)-4,fn:length(session_user.userRelationInfo.cardId))}
                                    </c:if></span>
                        </div>
                    </div>
                    <div class="input_box">
                        <div class="content_input"><span style=" float:left;">收款银行</span>

                            <div class="bank_ka">
                                <div class="select_box">
                                    <div class="tag_select">---------------请选择收款银行---------------
                                    </div>
                                    <ul class="tag_options">
                                        <c:forEach items="${banklist}" var="bl">
                                            <li class="open"><img
                                                    src="/resource/images/bank/${bl.bankType.bankCode}.jpg"
                                                    width="124"
                                                    height="35" alt=""/>${bl.bankAccount}
                                                <input type="hidden" value="${bl.id}" id="userBankId"/>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div class="c"></div>
                        </div>
                    </div>

                    <div class="c"></div>
                    <div class="input_box">
                        <div class="content_input"><span>可提余额</span><span
                                id="balance">
                                <fmt:formatNumber value="${empty session_user.userFundInfo.cashBalance  ? '0.00':session_user.userFundInfo.cashBalance }" pattern="0.00"/></span>元
                        </div>
                    </div>
                    <div class="input_box yanzheng_div_box">
                        <div class="yanzheng_span"><span>提现金额</span></div>
                        <input type="text" value="" placeholder="最低提现50元" class="withdraw_input" id="money"
                               name="money"/>

                        <div class="yanzheng_pic company">元 (本月已提现${applyAccount}次)</div>
                    </div>
                    <c:if test="${applyAccount>=5}">
                        <div class="input_box">
                            <div class="content_input"><span>提款手续费</span><span
                                    id="fate">0</span>元
                            </div>
                        </div>
                    </c:if>
                    <div class="input_box yanzheng_div_box">
                        <div class="yanzheng_span"><span> 手机验证码</span></div>
                        <input type="text" value="" class="withdraw_input" placeholder="请输入收到的手机验证码" id="yhmphone"
                               name="smsCode" style="padding:0px;" onkeyup="value=value.replace(/[^\d\.]/g,'')"/>

                        <div class="yanzheng_pic"><input type="button" value="获取短信验证码" id="getcode"
                                                         onkeyup="value=value.replace(/[^\d\.]/g,'')"/></div>
                        <div class="c"></div>
                    </div>
                    <div class="input_box yanzheng_div_box">
                        <input type="button" value="确认提交" name="b" onclick="submitWithdrawApply()"
                               class="withdraw_button"/>
                    </div>

                </form>
            </div>


        </div>
        <!--End vipcontent-->
    </div>


    <div class="c"></div>

    <script type="text/javascript">
        //输入框验证
        $("input[name='money']").bind("input propertychange", checkMoney);
        function checkMoney() {
            var balance = parseFloat($("#balance").text());
            if (isNaN($(this).val())) {
                $(this).val($(this).val().replace(/[^\d]$/g, ''));
            } else if (parseInt($(this).val()) > balance) {
                ymPrompt.alert("提现金额不得超过账户余额！", null, null, "提示", null);
                $(this).val(balance);
            }
        }
        $("input[name='money']").change(function () {
            if (/^[1-4]?\d{1}$/.test($(this).val())) {
                ymPrompt.alert("单笔提现不能低于50元，请重新输入！", null, null, "提示", null);
                $(this).val(50);
            }
            if (!/^\d+$/.test($(this).val())) {
                ymPrompt.alert("提现金额不能为小数！", null, null, "提示", null);
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
                        ymPrompt.succeedInfo("提现短信发送成功!", 300, 160, "温馨提示", null);
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

        $("#money").change(function () {
                    if (parseInt($("#money").val()) > 50 && parseInt($("#money").val()) < 400) {
                        $("#fate").text(2);
                    }else if (parseInt($("#money").val()) >= 400) {
                        var fate=parseFloat($("#money").val()) * 0.005
                        $("#fate").text(fate.toFixed(2));
                    }
                }
        )
    </script>
</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
