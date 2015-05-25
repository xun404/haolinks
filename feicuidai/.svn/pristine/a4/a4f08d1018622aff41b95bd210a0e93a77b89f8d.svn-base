<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<div class="left_box">
    <div class="left_ul ">
        <div id="mainpage" class="Father_1<c:if test="${empty fatherMenu||fatherMenu=='1'}">_current</c:if>">账户主页
        </div>
    </div>
    <div class="left_ul">
        <div name="father2" class="Father_2<c:if test="${fatherMenu=='2'}">_current</c:if>">账户管理</div>
        <div class="son" id="Son_2">
            <a href="/accountManagement/userInfo/basicinfo?fatherMenu=2&sonMenu=1"
               class="son_style<c:if test="${fatherMenu=='2'&&sonMenu=='1'}">_current</c:if>">用户信息</a>
            <a href="/accountManagement/userInfo/getUserBankList?fatherMenu=2&sonMenu=2"
               class="son_style<c:if test="${fatherMenu=='2'&&sonMenu=='2'}">_current</c:if>">银行卡信息</a>
            <a href="/accountManagement/userInfo/securitySettings?fatherMenu=2&sonMenu=3"
               class="son_style<c:if test="${fatherMenu=='2'&&sonMenu=='3'}">_current</c:if>">安全设置</a>

            <a href="/accountManagement/userInfo/updatePwdUI?fatherMenu=2&sonMenu=4"
               class="son_style<c:if test="${fatherMenu=='2'&&sonMenu=='4'}">_current</c:if>">修改密码</a>
        </div>
    </div>
    <div class="left_ul">
        <div name="father3" class="Father_3<c:if test="${fatherMenu=='3'}">_current</c:if>">资金管理</div>
        <div class="son" id="Son_3">
            <a href="/fundManagement/recharge/openRecharge?fatherMenu=3&sonMenu=1"
               class="son_style<c:if test="${fatherMenu=='3'&&sonMenu=='1'}">_current</c:if>">我要充值</a>
            <a href="/fundManagement/withdraw/openWithdraw?fatherMenu=3&sonMenu=2"
               class="son_style<c:if test="${fatherMenu=='3'&&sonMenu=='2'}">_current</c:if>">我要提现</a>
            <a href="/expenses/myexpenses.htm?fatherMenu=3&sonMenu=3"
               class="son_style<c:if test="${fatherMenu=='3'&&sonMenu=='3'}">_current</c:if>">交易记录</a>
        </div>
    </div>
    <div class="left_ul">
        <div name="father4" class="Father_4<c:if test="${fatherMenu=='4'}">_current</c:if>">理财管理</div>
        <div class="son" id="Son_4">
            <a href="/financeManagement/myInvestController/myInvestListUI?fatherMenu=4&sonMenu=1"
               class="son_style<c:if test="${fatherMenu=='4'&&sonMenu=='1'}">_current</c:if>">我的投资</a>
            <a href="/financeManagement/myDebtController/myDebtListUI?fatherMenu=4&sonMenu=2"
               class="son_style<c:if test="${fatherMenu=='4'&&sonMenu=='2'}">_current</c:if>">我的债权</a>
            <%--
             <a href="/financeManagement/assignmentDebtController/assignmentDebtListUI?fatherMenu=4&sonMenu=3"
                class="son_style<c:if test="${fatherMenu=='4'&&sonMenu=='3'}">_current</c:if>">债权转让</a>
             <a href="/financeManagement/autoBidController/addAutoBidUI?fatherMenu=4&sonMenu=4"
                class="son_style<c:if test="${fatherMenu=='4'&&sonMenu=='4'}">_current</c:if>">自动投标</a>
                --%>
        </div>
    </div>
    <c:if test="${sessionScope.session_user.userName  == 'admin'}">
    <div class="left_ul">
        <div name="father5" class="Father_5<c:if test="${fatherMenu=='5'}">_current</c:if>">借款管理</div>
        <div class="son" id="Son_5">
            <a href="/loanManagement/myLoanController/myLoanListUI?fatherMenu=5&sonMenu=1"
               class="son_style<c:if test="${fatherMenu=='5'&&sonMenu=='1'}">_current</c:if>">我的借款</a>
            <a href="/loanManagement/myLoanController/myLoanApplyListUI?fatherMenu=5&sonMenu=2"
               class="son_style<c:if test="${fatherMenu=='5'&&sonMenu=='2'}">_current</c:if>">借款申请</a>
            <!--  
            <a href="/loanManagement/loanCountController/loanCountUI?fatherMenu=5&sonMenu=3"
               class="son_style<c:if test="${fatherMenu=='5'&&sonMenu=='3'}">_current</c:if>">借款统计</a>
             -->
            <a href="/borrower_record/toRecord?fatherMenu=5&sonMenu=3"
               class="son_style<c:if test="${fatherMenu=='5'&&sonMenu=='3'}">_current</c:if>">借款统计</a>

            <a href="/loanManagement/myRepaymentController/myRepaymentListUI?myMark=1&fatherMenu=5&sonMenu=4"
               class="son_style<c:if test="${fatherMenu=='5'&&sonMenu=='4'}">_current</c:if>">我要还款</a>
        </div>
    </div>
    </c:if>
    
    
    <div class="left_ul">
        <div name="father6" class="Father_6<c:if test="${fatherMenu=='6'}">_current</c:if>">奖励管理</div>
        <div class="son" id="Son_6">
            <a href="/generalize/get_promote_links?fatherMenu=6&sonMenu=1"
               class="son_style<c:if test="${fatherMenu=='6'&&sonMenu=='1'}">_current</c:if>">推广方式</a>
            <a href="/generalize/generalize_list?fatherMenu=6&sonMenu=2"
               class="son_style<c:if test="${fatherMenu=='6'&&sonMenu=='2'}">_current</c:if>">我的推广</a>
        </div>
    </div>
    <div class="left_ul" style="margin-bottom: 0px;">
        <div name="father7" class="Father_7<c:if test="${fatherMenu=='7'}">_current</c:if>">消息管理</div>
        <div class="son" id="Son_7">
            <a href="/visitorManagement/memberCenter/system_message?fatherMenu=7&sonMenu=1"
               class="son_style<c:if test="${fatherMenu=='7'&&sonMenu=='1'}">_current</c:if>">系统消息</a>
            <a href="/accountManagement/userInfo/message_setting?fatherMenu=7&sonMenu=2"
               class="son_style<c:if test="${fatherMenu=='7'&&sonMenu=='2'}">_current</c:if>">消息设置</a>
        </div>

    </div>
    <input type="hidden" name="fatherMenu"
           value="${fatherMenu}"/>
    <input type="hidden" name="sonMenu"
           value="${sonMenu}"/>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".son").css("display", "none");
        var fatherMenu = $("input[name='fatherMenu']").val();
        /*var sonMenu = $("input[name='sonMenu']").val();*/
        if (parseInt(fatherMenu) > 0) {
            $("#Son_" + parseInt(fatherMenu)).toggle(0);
        }
        $("div[name*='father']").click(function () {
            var fatherName=$(this).attr("name");
            var num=fatherName.replace("father","");
            $("#Son_"+num).toggle();

        });
        $("#mainpage").click(function () {
            top.window.location = "/visitorManagement/memberCenter/memberCenter";
        })
    })
</script>