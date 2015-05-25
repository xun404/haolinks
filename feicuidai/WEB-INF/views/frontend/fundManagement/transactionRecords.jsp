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

    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>

</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>资金管理-交易记录</title>

<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <div class="title_records">
    
   		<span class="data_box"><samp>交易时间</samp>
        <link type="text/css" rel="stylesheet" href="/resource/js/My97DatePicker/skin/WdatePicker.css"/>
        <script type="text/javascript" src="/resource/js/My97DatePicker/WdatePicker.js" defer="defer"></script>
        <input type="text" value="" class="Wdate data"
               onclick="WdatePicker({maxDate:&#39;#F{$dp.$D(\&#39;in12\&#39;)};;;&#39;})" readonly id="in11"> 至 <input
                    type="text" value="" class="Wdate data"
                    onclick="WdatePicker({minDate:&#39;#F{$dp.$D(\&#39;in11\&#39;)};;;&#39;})" readonly id="in12">
        </span>
                <samp class="style_box">
                    <samp>类型</samp>
                    <select class="select_style">
                        <option>全部</option>
                    </select>
                </samp>
                <input type="button" value="搜索" class="seach"/>
            </div>
            <div class="main_form main_records">
                <form action="registration_02.html" method="post">
                    <div class="input_box">
                        <div class="content_input"><span>支付方式</span><img src="/resource/images/zhifu_style.jpg"
                                                                         width="202"
                                                                         height="51" alt=""/></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>银行卡号</span><input type="text" placeholder=""
                                                                           class="input_text_style"/></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>可提余额</span><span><samp class="num">¥0.00</samp>元</span></div>
                    </div>

                    <div class="input_box yanzheng_div_box">
                        <div class="yanzheng_span"><span>提现金额</span></div>
                        <input type="text" value="" placeholder="请输入您的提现金额" class="input_text_style yanzheng_input"/>

                        <div class="yanzheng_pic company">元</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>银行卡号</span><span><samp class="num">¥0.00</samp>元</span></div>
                        <div class="text texts">每笔提现金额低于2000元以下扣取每笔2.00元手续费，2000元以上由平台代付。</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>实际提现</span><span><samp class="num">¥0.00</samp>元</span></div>
                    </div>

                    <div class="input_box yanzheng_div_box">
                        <div class="yanzheng_span"><span>交易密码</span></div>
                        <input type="text" value="" placeholder="请输入您的提现金额"
                               class="input_text_style yanzheng_input"/><span class="color_red">忘记交易密码</span>
                    </div>

                    <div class="input_box yanzheng_div_box">
                        <input type="button" value="确认提交" name="b" class="button_style button_width"/>
                        <span class="color_red">查看充值记录</span>
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
