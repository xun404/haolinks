<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h2 class="contentTitle">费用比列设置</h2>

<div class="pageFormContent" layoutH="60" style="height: 400px;">
	<form action="/expenseRatio/add.htm" method="post"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<fieldset>
			<legend>借款管理费</legend>
			<dl>
				<dt>普通会员：</dt>
				<dd>
					<input name="id" type="hidden" value="${costratio.id}" /> <input
						class="required number" name="pmfeeRatio" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.pmfeeRatio*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>VIP会员：</dt>
				<dd>
					<input class="required number" name="vipPmfeeRatio" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipPmfeeRatio*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>VIP会员上限金额：</dt>
				<dd>
					<input class="required number" name="vipPmfeeTop" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipPmfeeTop}"/>" />
				</dd>
			</dl>
		</fieldset>
		<fieldset>
			<legend>投资管理费</legend>
			<dl>
				<dt>普通会员：</dt>
				<dd>
					<input class="required number" name="mfeeRatio" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.mfeeRatio*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>VIP会员：</dt>
				<dd>
					<input class="required number" name="vipMfeeRatio" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipMfeeRatio*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>VIP会员上限金额：</dt>
				<dd>
					<input class="required number" name="vipMfeeTop" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipMfeeTop}"/>" />
				</dd>
			</dl>
		</fieldset>
		<fieldset>
			<legend>违约金(借款人)</legend>
			<dl>
				<dt>提前还款违约金：</dt>
				<dd>
					<input class="required number" name="prepaymentRate" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.prepaymentRate*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>逾期还款违约金：</dt>
				<dd>
					<input class="required number" name="overdueRepayment" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.overdueRepayment*100}"/>" />%
				</dd>
			</dl>
		</fieldset>
		<fieldset>
			<legend>充值费用</legend>
			<dl>
				<dt>普通会员：</dt>
				<dd>
					<input class="required number" name="recharge" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.recharge*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>VIP会员：</dt>
				<dd>
					<input class="required number" name="vipRecharge" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipRecharge*100}"/>" />%
				</dd>
			</dl>
		</fieldset>
		<fieldset>
			<legend>提现费用</legend>
			<dl>
				<dt>普通会员：</dt>
				<dd>
					<input class="required number" name="withdraw" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.withdraw*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>VIP会员：</dt>
				<dd>
					<input class="required number" name="vipWithdraw" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipWithdraw*100}"/>" />%
				</dd>
			</dl>
			<dl>
				<dt>VIP会员上限：</dt>
				<dd>
					<input class="required number" name="vipWithdrawTop" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipWithdrawTop}"/>" />
				</dd>
			</dl>
		</fieldset>
		<fieldset>
			<legend>其它费用</legend>
			<dl>
				<dt>升级VIP：</dt>
				<dd>
					<input class="required number" name="vipUpgrade" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.vipUpgrade}"/>" />
				</dd>
			</dl>
			<dl>
				<dt>注册体验金/人:</dt>
				<dd>
					<input class="required number" name="experienceGold" type="text"
						   value="<fmt:formatNumber pattern="0.00" value="${costratio.experienceGold}"/>" />
				</dd>
			</dl>
			<dl>
				<dt>奖励推荐体检金/人：</dt>
				<dd>
					<input class="required number" name="tgExperienceGold" type="text"
						value="<fmt:formatNumber pattern="0" value="${costratio.tgExperienceGold}"/>" />
				</dd>
			</dl>
			<dl>
				<dt>奖励积分/人：</dt>
				<dd>
					<input class="required number" name="tgPoints" type="text"
						value="<fmt:formatNumber pattern="0" value="${costratio.tgPoints}"/>" />
				</dd>
			</dl>
			<dl>
				<dt>积分/1RMB：</dt>
				<dd>
					<input class="required number" name="bouns" type="text"
						value="<fmt:formatNumber pattern="0.00" value="${costratio.bouns}"/>" />
				</dd>
			</dl>
		</fieldset>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div>
				</li>
				<li>
					<div class="button">
						<div class="buttonContent">
							<button type="reset" class="close">取消</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</div>
