<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<div class="left_box">
    <div class="left_ul ">
        <div class="fater_style current" id="Father_1">账户主页</div>
    </div>
    <div class="left_ul">
        <div class="fater_style" id="Father_2">账户管理</div>
        <div class="son" id="Son_2">
            <a href="/update_info/forword_url?url=accountInfo" class="son_style">用户信息</a>
            <a href="security_validation_02.html" class="son_style">银行卡信息</a>
            <a href="security_validation_03.html" class="son_style">安全设置</a>
        </div>
    </div>
    <div class="left_ul">
        <div class="fater_style" id="Father_3">资金管理</div>
        <div class="son" id="Son_3">
            <a href="#" class="son_style">资金统计</a>
            <a href="#" class="son_style">我要充值</a>
            <a href="#" class="son_style">我要提现</a>
            <a href="#" class="son_style">交易记录</a>
        </div>
    </div>
    <div class="left_ul">
        <div class="fater_style" id="Father_4">理财管理</div>
        <div class="son" id="Son_4">
            <a href="/financeManagement/myInvestController/myInvestListUI" class="son_style">我的投资</a>
            <a href="/financeManagement/myDebtController/myDebtListUI" class="son_style">债权转入</a>
            <a href="/financeManagement/assignmentDebtController/assignmentDebtListUI" class="son_style">债权转出</a>
            <a href="/financeManagement/autoBidController/addAutoBidUI" class="son_style">自动投标</a>
        </div>
    </div>
    <div class="left_ul">
        <div class="fater_style" id="Father_5">借款管理</div>
        <div class="son" id="Son_5">
            <a href="/loanManagement/myLoanController/myLoanListUI" class="son_style">我的借款</a>
            <a href="/loanManagement/loanCountController/loanCountUI" class="son_style">借款统计</a>
            <a href="/loanManagement/myRepaymentController/myRepaymentListUI" class="son_style">我要还款</a>
        </div>
    </div>
    <div class="left_ul">
        <div class="fater_style" id="Father_6">奖励管理</div>
        <div class="son" id="Son_6">
            <a href="reward_management_01.html" class="son_style">我的推荐</a>
            <a href="reward_management_02.html" class="son_style">我的积分</a>
            <a href="reward_management_03.html" class="son_style">我的红包</a>
        </div>
    </div>
    <div class="left_ul">
        <div class="fater_style" id="Father_7">消息管理</div>
        <div class="son" id="Son_7">
            <a href="message_management_01.html" class="son_style">系统消息</a>
            <a href="message_management_02.html" class="son_style">消息设置</a>
        </div>
    </div>

</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".son").css("display", "none");
        $(".fater_style").click(function () {

            var this_father = $(this).attr("id");
            var num = this_father.replace("Father_", "");
            //$(this).css("background","#00bc00");
            //$(this).css("color","#fff");
            $("#Son_" + num).toggle(0);

        })

    })
</script>