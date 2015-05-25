<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%--vipLeft --%>
<div class="vipLeftBox">
	<dl>
		<dt>账户管理</dt>
		<dd>
			<a href="<%=basePath%>member_index/member_center">我的首页</a>
		</dd>
		<dd>
			<a href="<%=basePath%>update_info/forword_url?url=head">个人基本信息</a>
		</dd>
		<%-- <dd>
			<a href="<%=basePath%>userinfovip/upgrade.htm">升级VIP</a>
		</dd> --%>
		<dd>
			<a href="/accountManagement/userInfo/message_setting">消息设置</a>
		</dd>
		<dd>
			<a href="<%=basePath%>update_info/forword_url?url=updatePwd">修改密码</a>
		</dd>
		<dd>
			<a href="/visitorManagement/memberCenter/system_message">系统消息</a>
		</dd>
		<dd>
			<a href="<%=basePath%>member/mail">安全中心</a>
		</dd>
	</dl>
	<dl>
		<dt>资金管理</dt>
		<dd>
			<a href="<%=basePath%>my_money/my_money_sum">资金统计</a>
		</dd>
		<dd>
			<a href="<%=basePath%>recharge/openRecharge">我要充值</a>
		</dd>
		<dd>
			<%-- <a href="<%=basePath%>withdraw/withdraw">我要提现</a> --%>
			<a href="<%=basePath%>withdraw/openWithdraw">我要提现</a>
		</dd>
		<dd>
			<a href="<%=basePath%>expenses/myexpenses.htm">我的收支单</a>
		</dd>
	</dl>
	<dl>
		<dt>理财管理</dt>
		<dd>
			<a href="<%=basePath%>member_index/myYouxuan.htm">理财计划</a>
		</dd>
		<dd>
			<a href="<%=basePath%>member_debt/init_assignment">债权转让</a>
		</dd>
		<dd>
			<a href="<%=basePath%>loaninfo/openLoanCir.htm">债权列表</a>
		</dd>
		<dd>
			<a href="<%=basePath%>loaninfo/openLoan.htm">我要投资</a>
		</dd>
		<dd>
			<a href="<%=basePath%>automatic/init_automatic">自动投标</a>
		</dd>
		<dd>
			<a href="<%=basePath%>depositshistory/init_two">投资记录</a>
		</dd>
		<dd>
			<a href="<%=basePath%>contract/query_page">回款计划</a>
		</dd>
		<!-- <dd><a href="<%=basePath%>collectlist/collect">我的收藏</a></dd> -->
	</dl>
	<dl>
		<dt>借款管理</dt>
		<dd>
			<a href="borrow/forwardPersoninfo">审核资料</a>
		</dd>
		<dd>
			<a href="loanManage/achieveLoan.htm">借款记录</a>
		</dd>
		<dd>
			<a href="<%=basePath%>borrower_record/toRecord">借入记录</a>
		</dd>
		<dd>
			<a href="<%=basePath%>repay_plan/showBackMoney">还款安排</a>
		</dd>
		<dd>
			<a href="<%=basePath%>to/single-7-27.htm">我要借款</a>
		</dd>
		<dd>
			<a href="<%=basePath%>repayments/repayment.htm">还款</a>
		</dd>
	</dl>
	<dl>
		<dt>合同管理</dt>
		<%-- <dd>
			<a href="<%=basePath%>member_index/borrowContract.htm?no=1">借款合同</a>
		</dd> --%>
		<dd>
			<a href="<%=basePath%>member_index/investContract.htm">投资合同</a>
		</dd>
	</dl>
	<!-- <dl>
		<dt>优惠劵管理</dt>
		<dd>
			<a href="/member_index/ucode.htm">U-code兑换</a>
		</dd>
	</dl> -->

	<dl>
		<dt>推广中心</dt>
		<dd>
			<a href="<%=basePath%>generalize/get_promote_links">推广方式</a>
		</dd>
		<dd>
			<a href="<%=basePath%>generalize/generalize_list">我的推广</a>
		</dd>
	</dl>
</div>
<script>
	var href = window.location.href;
	var allhref = "";
	$(".vipLeftBox dl dd a").each(function() {
		allhref = $(this).attr("href");
		if (href.indexOf(allhref) != -1) {
			$(this).attr("class", "vipNavLink");
			return false;
		}
	});
</script>
<%--End vipLeft--%>