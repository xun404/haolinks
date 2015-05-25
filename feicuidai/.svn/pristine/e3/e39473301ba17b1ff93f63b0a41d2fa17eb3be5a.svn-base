<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
.textarea {
	width: 510px;
	height: 100px;
	border: 1px red soild
}
</style>
<script src="resources/js/dwz.regional.zh.js" type="text/javascript"></script>
<script src="resources/js/loanSign/addLoanSign.js"
	type="text/javascript"></script>
<div class="pageContent">
	<form id="form1" method="post" action="/loanSign/updateLoansign"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="60" style="margin-left: 50px;">
			<input type="text" style="display: none;" name="id"
				value="${loanSign.id}" /> <input type="hidden" id="operNumber"
				name="operNumber" value="${operNumber}" />
			<p>
				<label> 借款人</label> <input type="text" class="required"
					name="Userbasicsinfo.name" value="${loanSign.userBasicsInfo.realName}"
					readonly="readonly" />
				<%-- 	<input type="text"  name="Userbasicsinfo.id" value="${loansign.userBasicsInfo.id}" /> --%>
				<input type="hidden" name="userId"
					value="${loanSign.userBasicsInfo.id}" />
				<c:if test="${loperNumber ne '3'&& loanSign.loanState eq '1'}">
					<input type="hidden" name="loperNumber" value="${loperNumber}" />
				</c:if>
				<c:if test="${operNumber eq '1'}">
					<a class="btnLook" href="/baseLoanSign/borrowersbaseLists"
						width="520" lookupGroup="Userbasicsinfo">查找带回</a>
				</c:if>

				<c:if test="${loperNumber ne '3'&& loanSign.loanState eq '1'}">
					<a class="btnLook" href="/baseLoanSign/borrowersbaseLists"
						width="520" lookupGroup="Userbasicsinfo">查找带回</a>
				</c:if>
			</p>
			<p>
				<label>还款方式</label> <select name="refundWay"
					<c:if test="${loanSign.loanState ne 1}"> disabled </c:if>>
					<option value="1"
						<c:if test="${loanSign.refundWay eq  '1'}">selected="selected"</c:if>>按月等额本息</option>
					<option value="2"
						<c:if test="${loanSign.refundWay eq  '2'}">selected="selected"</c:if>>按月付息到期还本</option>
					<option value="3"
						<c:if test="${loanSign.refundWay eq  '3'}">selected="selected"</c:if>>到期一次性还本息</option>
				</select>
			</p>
			<p>
				<label>本期借款额</label> <input type="text" name="issueLoan"
					id="issueLoan" value="${loanSign.issueLoan}"
					class="required number" min="100" maxlength="15"
					<c:if test="${loanSign.loanState ne 1}"> disabled</c:if>>元
			</p>
			<p>
				<label>最小借出单位</label> <select name="loanUnit" id="loanUnit"
					<c:if test="${loanSign.loanState ne 1}">  disabled </c:if>>
					<option value="50"
						<c:if test="${loanSign.loanUnit eq  '50'}">selected="selected"</c:if>>50</option>
					<option value="100"
						<c:if test="${loanSign.loanUnit eq  '100'}">selected="selected"</c:if>>100</option>
					<option value="200"
						<c:if test="${loanSign.loanUnit eq  '200'}">selected="selected"</c:if>>200</option>
					<option value="300"
						<c:if test="${loanSign.loanUnit eq  '300'}">selected="selected"</c:if>>300</option>
					<option value="500"
						<c:if test="${loanSign.loanUnit eq  '500'}">selected="selected"</c:if>>500</option>
					<option value="1000"
						<c:if test="${loanSign.loanUnit eq  '1000'}">selected="selected"</c:if>>1000</option>
				</select>
			</p>
			<p>
				<label>标种子类型</label> <select name="subType" id="subType"
					<c:if test="${loanSign.loanState ne 1}"> disabled </c:if>>
					<option value="1"
						<c:if test="${loanSign.subType eq  '1'}">selected="selected"</c:if>>富担标</option>
					<option value="2"
						<c:if test="${loanSign.subType eq  '2'}">selected="selected"</c:if>>担保</option>
					<option value="3"
						<c:if test="${loanSign.subType eq  '3'}">selected="selected"</c:if>>抵押</option>
					<option value="4"
						<c:if test="${loanSign.subType eq  '4'}">selected="selected"</c:if>>信用</option>
					<option value="5"
						<c:if test="${loanSign.subType eq  '5'}">selected="selected"</c:if>>实地</option>
				</select>
			</p>
			<p>
				<label>还款期限</label> <select name="month" id="month"
					<c:if test="${loanSign.loanState ne 1}"> disabled </c:if>>
					<option value="1"
						<c:if test="${loanSign.month eq  '1'}">selected="selected"</c:if>>1个月</option>
					<option value="2"
						<c:if test="${loanSign.month eq  '2'}">selected="selected"</c:if>>2个月</option>
					<option value="3"
						<c:if test="${loanSign.month eq  '3'}">selected="selected"</c:if>>3个月</option>
					<option value="4"
						<c:if test="${loanSign.month eq  '4'}">selected="selected"</c:if>>4个月</option>
					<option value="5"
						<c:if test="${loanSign.month eq  '5'}">selected="selected"</c:if>>5个月</option>
					<option value="6"
						<c:if test="${loanSign.month eq  '6'}">selected="selected"</c:if>>6个月</option>
					<option value="7"
						<c:if test="${loanSign.month eq  '7'}">selected="selected"</c:if>>7个月</option>
					<option value="8"
						<c:if test="${loanSign.month eq  '8'}">selected="selected"</c:if>>8个月</option>
					<option value="9"
						<c:if test="${loanSign.month eq  '9'}">selected="selected"</c:if>>9个月</option>
					<option value="10"
						<c:if test="${loanSign.month eq  '10'}">selected="selected"</c:if>>10个月</option>
					<option value="11"
						<c:if test="${loanSign.month eq  '11'}">selected="selected"</c:if>>11个月</option>
					<option value="12"
						<c:if test="${loanSign.month eq  '12'}">selected="selected"</c:if>>12个月</option>
					<option value="13"
						<c:if test="${loanSign.month eq  '13'}">selected="selected"</c:if>>13个月</option>
					<option value="14"
						<c:if test="${loanSign.month eq  '14'}">selected="selected"</c:if>>14个月</option>
					<option value="15"
						<c:if test="${loanSign.month eq  '15'}">selected="selected"</c:if>>15个月</option>
					<option value="16"
						<c:if test="${loanSign.month eq  '16'}">selected="selected"</c:if>>16个月</option>
					<option value="17"
						<c:if test="${loanSign.month eq  '17'}">selected="selected"</c:if>>17个月</option>
					<option value="18"
						<c:if test="${loanSign.month eq  '18'}">selected="selected"</c:if>>18个月</option>
					<option value="19"
						<c:if test="${loanSign.month eq  '19'}">selected="selected"</c:if>>19个月</option>
					<option value="20"
						<c:if test="${loanSign.month eq  '20'}">selected="selected"</c:if>>20个月</option>
					<option value="21"
						<c:if test="${loanSign.month eq  '21'}">selected="selected"</c:if>>21个月</option>
					<option value="22"
						<c:if test="${loanSign.month eq  '22'}">selected="selected"</c:if>>22个月</option>
					<option value="23"
						<c:if test="${loanSign.month eq  '23'}">selected="selected"</c:if>>23个月</option>
					<option value="24"
						<c:if test="${loanSign.month eq  '24'}">selected="selected"</c:if>>24个月</option>
				</select>
			</p>
			<p>
				<label>借款标号</label> <input name="loanNumber" type="text"
					value="${loansignbasics.loanNumber }" class="required"
					minlength="1" maxlength="20"
					<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if> />
			</p>
			<p>
				<label>借款标题</label> <input name="loanTitle" type="text"
					value="${loansignbasics.loanTitle}" class="required" minlength="1"
					maxlength="20"
					<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if> />
			</p>
			<p>
				<label>风险评估</label> <select name="riskAssess"
					<c:if test="${loanSign.loanState ne 1}"> disabled </c:if>>
					<option value="1"
						<c:if test="${loansignbasics.riskAssess eq  '1'}">selected="selected"</c:if>>低</option>
					<option value="2"
						<c:if test="${loansignbasics.riskAssess eq  '2'}">selected="selected"</c:if>>中</option>
					<option value="3"
						<c:if test="${loansignbasics.riskAssess eq  '3'}">selected="selected"</c:if>>高</option>
				</select>
			</p>
			<c:if test="${!empty loanSign.rate}">
				<p>
					<label>年利率</label> <input name="rate" type="text"
						class="required number" min="0" max="30"
						value='<fmt:formatNumber value="${loanSign.rate*100 }" />'
						<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if> />%
				</p>

			</c:if>
			<p>
				<label>是否显示</label> <input name="isShow"
					<c:if test="${loanSign.isShow ne  '2'}">checked="checked"</c:if>
					value="1" type="radio" />显
				示&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					name="isShow"
					<c:if test="${loanSign.isShow eq  '2'}">checked="checked"</c:if>
					value="2" type="radio" />不显示
			</p>
			<p>
				<label>推荐到首页</label> <input name="isRecommand"
					<c:if test="${loanSign.isRecommand ne  '2'}">checked="checked"</c:if>
					value="1" type="radio" />推
				荐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					name="isRecommand"
					<c:if test="${loanSign.isRecommand eq  '2'}">checked="checked"</c:if>
					value="2" type="radio" />不推荐
			</p>
			<!-- 			<p> -->
			<!-- 				<label>结束时间</label> -->
			<%-- 				<input type="text" datefmt="yyyy-MM-dd" class="date required" name="endTime" value="${loansign.endTime}" readonly="readonly"  <c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if>  /> --%>
			<!-- 			</p> -->
			<p>
				<label>担保方</label> <input name="assure" class="required"
					value="${loansignbasics.assure}" type="text" maxlength="50"
					<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if> />
			</p>
			<p>
				<label>反担保方式</label> <input name="unassureWay" class="required"
					value="${loansignbasics.unassureWay}" type="text" maxlength="30"
					<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if> />
			</p>
			<p>
				<label>借款标类型</label> <select id="loanSignTypeId" name="type"
					style="width: 133px;"
					<c:if test="${loanSign.loanState ne 1}">  disabled  </c:if>>
					<c:forEach items="${loansignType}" var="type">
						<option value="${type.id}"
							<c:if test="${loanSign.loanSignType.id eq  type.id}">selected="selected"</c:if>>${type.typeName}</option>
					</c:forEach>
				</select>
			</p>

			<p>
				<label>普通会员最大份数</label> <input name="counterparts" id="counterparts"
					class="required" value="${loanSign.counterparts}" type="text"
					maxlength="30"
					<c:if test="${loanSign.loanState ne 1}"> readonly="readonly" </c:if> />
			</p>
			<p>
				<label>VIP最大份数</label> <input name="vipCounterParts"
					id="vipCounterparts" class="required"
					value="${loanSign.vipCounterParts}" type="text" maxlength="30"
					<c:if test="${loanSign.loanState ne 1}"> readonly="readonly" </c:if> />
			</p>

			<p>
				<label>招标期限</label> <select name="bidTime"
					<c:if test="${loanSign.loanState ne 1}"> disabled </c:if>>
					<option value="1"
						<c:if test="${loansignbasics.bidTime eq  '1'}">selected="selected"</c:if>>1天</option>
					<option value="5"
						<c:if test="${loansignbasics.bidTime eq  '5'}">selected="selected"</c:if>>5天</option>
					<option value="10"
						<c:if test="${loansignbasics.bidTime eq  '10'}">selected="selected"</c:if>>10天</option>
					<option value="15"
						<c:if test="${loansignbasics.bidTime eq  '15'}">selected="selected"</c:if>>15天</option>
					<option value="20"
						<c:if test="${loansignbasics.bidTime eq  '20'}">selected="selected"</c:if>>20天</option>
				</select>
			</p>
			<p>
				<label>保证金</label> <input name="guaranteesAmt" class="number"
					type="text" value="${loansignbasics.guaranteesAmt}"
					<c:if test="${loanSign.loanState ne 1}"> readonly="readonly" </c:if> />元
			</p>
			<!-- 			<p> -->
			<!-- 				<label>借款管理费</label> -->
			<%-- 				<input name="mgtMoney" value="${loansignbasics.mgtMoney }" class="number" type="text"  readonly="readonly" maxlength="20" />元 --%>
			<!-- 			</p> -->
			
			<p style="clear: both;height: 100px;width: 100%">
				<label>借款方借款用途</label>
				<textarea name="behoof" class="textarea required" rows="20"
					cols="20"
					<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if>>${loansignbasics.behoof}</textarea>
			</p>
			<p style="clear: both;height: 100px;width: 100%">
				<label>借款方还款来源</label>
				<textarea class="textarea required" name="loanOrigin" rows="20"
					cols="20"
					<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if>>${loansignbasics.loanOrigin}</textarea>
			</p>
			<p style="clear: both;height: 100px;width: 100%">
				<label>风险控制措施</label>
				<textarea class="textarea required" name="riskCtrlWay" rows="20"
					cols="20"
					<c:if test="${loanSign.loanState ne 1}"> disabled="true" </c:if>>${loansignbasics.riskCtrlWay}</textarea>
			</p>
			
		</div>
		<div class="formBar">
			<ul>
				<c:if test="${operNumber ne '1'}">
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="button" id="submit">保存</button>
							</div>
						</div>
					</li>
				</c:if>
				<li>
					<div class="button">
						<div class="buttonContent">
							<button type="reset" class="close">
								<c:if test="${operNumber ne '3'}">取消</c:if>
								<c:if test="${operNumber eq '3'}">关闭</c:if>
							</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</div>
