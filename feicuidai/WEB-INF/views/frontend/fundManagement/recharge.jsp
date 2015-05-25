<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <title>资金管理-我要充值</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/recharge.css"/>
</head>
<body>
<script type="text/javascript">
    $(function () {
        $("#from-data-tjcz").validationEngine({});
    })
</script>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>
<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <div class="title_alert tetle_alert_text">温馨提示：
                <p>· 充值操作支持国内大部分银行的网上银行，只要您开通了网上银行的账户即可充值。</p>

                <p>· 由于大多数银行的网银系统只支持IE浏览器，请使用IE浏览器进行充值。</p>

                <p>· 充值过程中，请勿关闭浏览器窗口，操作完成后，浏览器会自动跳转返回到网站界面。</p>

                <p>· 如果您在充值时遇到其他问题，请咨询客服人员。</p>
            </div>

            <div class="main_form main_records">
                <form id="from-data-tjcz" action="/fundManagement/recharge/recharge" method="post">
                    <div class="input_box">
                        <div class="content_input"><span>支付方式</span><img src="/resource/images/zhifu_style.jpg"
                                                                         width="202"
                                                                         height="51" alt=""/></div>
                    </div>

                    <div class="input_box yanzheng_div_box">
                        <div class="yanzheng_span"><span>充值金额</span></div>
                        <input type="text"  name="tranAmt" value="" placeholder="请输入您的充值金额" class="recharge_input validate[required,custom[integerNullZero]]"/>
                        <div class="yanzheng_pic company">元</div>
                    </div>
                    <div class="input_box yanzheng_div_box">
                        <input type="submit" value="确认提交" name="b" class="recharge_button"/>
                        <a class="recharge_link" style="left: 320px;" href="/expenses/myexpenses.htm?fatherMenu=3&sonMenu=3">查看充值记录</a>
                    </div>

                </form>
            </div>

        </div>
        <div class="c"></div>

    </div>

</div>
<!--------注册 End--------------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
