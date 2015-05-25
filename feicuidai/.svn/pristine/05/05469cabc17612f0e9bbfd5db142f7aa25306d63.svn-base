<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.textarea{width: 510px;height: 100px;border:1px red soild}
</style>
<script src="resources/js/dwz.regional.zh.js" type="text/javascript"></script>
<script type="text/javascript" >
 	$(function(){
		$("input[name='issueLoan']").keyup(function(){
			var issueLoan=$("input[name='issueLoan']").val();
			var mgtMoneyScale=$("input[name='mgtMoneyScale']").val();
			var month=$("#month").val();
			$("input[name='mgtMoney']").val(issueLoan*mgtMoneyScale*month/100);
		});
		$("input[name='mgtMoneyScale']").keyup(function(){
			var issueLoan=$("input[name='issueLoan']").val();
			var mgtMoneyScale=$("input[name='mgtMoneyScale']").val();
			var month=$("#month").val();
			$("input[name='mgtMoney']").val(issueLoan*mgtMoneyScale*month/100);
		});
		$("#month").change(function(){
			var issueLoan=$("input[name='issueLoan']").val();
			var mgtMoneyScale=$("input[name='mgtMoneyScale']").val();
			var month=$("#month").val();
			$("input[name='mgtMoney']").val(issueLoan*mgtMoneyScale*month/100);
		});
 	});
 	
 	
    </script>
<div class="pageContent">
	<form method="post" action="/loanSignOfCir/saveORupdateloanSignSic" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="60" style="margin-left: 50px;">
		<input type="text" style="display: none;" name="id" value="${loanSign.id}"/>
			<p>
				<label> 借款人</label>
					<input type="text" class="required" name="Userbasicsinfo.name" value="${name}" readonly="readonly" />
					<input type="hidden"  name="userName" value="${userName}" />
					<input type="hidden"  name="Userbasicsinfo.id" value="${id}" />
					<c:if test="${operNumber eq '1'}">
						<a class="btnLook" href="/baseLoanSign/assignmentBaseList" width="520" lookupGroup=Userbasicsinfo>查找带回</a>
					</c:if>
					<c:if test="${loperNumber ne '3'&&loanSign.loanState eq '1'}">
						<a class="btnLook" href="/baseLoanSign/borrowersBaseList" width="520" lookupGroup="Userbasicsinfo">查找带回</a>
					</c:if>
			</p>
				<p>
				<label>最小借出单位</label>
				<select name="loanUnit"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="disabled" </c:if>  <c:if test="${operNumber eq '3'}"> disabled="disabled" </c:if>>
						<option value="100" <c:if test="${loanSign.loanUnit eq  '100'}">selected="selected"</c:if>>100</option>
						<option value="200" <c:if test="${loanSign.loanUnit eq  '200'}">selected="selected"</c:if>>200</option>
						<option value="300" <c:if test="${loanSign.loanUnit eq  '300'}">selected="selected"</c:if>>300</option>
						<option value="500" <c:if test="${loanSign.loanUnit eq  '500'}">selected="selected"</c:if>>500</option>
						<option value="1000" <c:if test="${loanSign.loanUnit eq  '1000'}">selected="selected"</c:if>>1000</option>
				</select>
			</p>
			<p>
				<label>本期借款额</label>
				<input type="text"  name="tenderMoney" value="${tenderMoney}"  class="required number"  min="100" maxlength="15"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if>  <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>>元
			</p>
			<p>
				<label>还款期限</label>
				<select name="month" id="month"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="disabled" </c:if>  <c:if test="${operNumber eq '3'}"> disabled="disabled" </c:if>>
						<option value="1" <c:if test="${loanSign.month eq  '1'}">selected="selected"</c:if>>1个月</option>
						<option value="2" <c:if test="${loanSign.month eq  '2'}">selected="selected"</c:if>>2个月</option>
						<option value="3" <c:if test="${loanSign.month eq  '3'}">selected="selected"</c:if>>3个月</option>
						<option value="4" <c:if test="${loanSign.month eq  '4'}">selected="selected"</c:if>>4个月</option>
						<option value="5" <c:if test="${loanSign.month eq  '5'}">selected="selected"</c:if>>5个月</option>
						<option value="6" <c:if test="${loanSign.month eq  '6'}">selected="selected"</c:if>>6个月</option>
						<option value="7" <c:if test="${loanSign.month eq  '7'}">selected="selected"</c:if>>7个月</option>
						<option value="8" <c:if test="${loanSign.month eq  '8'}">selected="selected"</c:if>>8个月</option>
						<option value="9" <c:if test="${loanSign.month eq  '9'}">selected="selected"</c:if>>9个月</option>
						<option value="10" <c:if test="${loanSign.month eq  '10'}">selected="selected"</c:if>>10个月</option>
						<option value="11" <c:if test="${loanSign.month eq  '11'}">selected="selected"</c:if>>11个月</option>
						<option value="12" <c:if test="${loanSign.month eq  '12'}">selected="selected"</c:if>>12个月</option>
				</select>
			</p>
			<p>
				<label>借款标号</label>
				<input name="loanNumber"  type="text" value="${loanSignBasics.loanNumber }"  class="required"  minlength="1" maxlength="20"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if>  <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>/>
			</p>
			<p>
				<label>风险评估</label>
				<select name="riskAssess"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="disabled" </c:if>  <c:if test="${operNumber eq '3'}"> disabled="disabled" </c:if>>
						<option value="1" <c:if test="${loanSignBasics.riskAssess eq  '1'}">selected="selected"</c:if>>低</option>
						<option value="2" <c:if test="${loanSignBasics.riskAssess eq  '2'}">selected="selected"</c:if>>中</option>
						<option value="3" <c:if test="${loanSignBasics.riskAssess eq  '3'}">selected="selected"</c:if>>高</option>
				</select>
			</p>
			
			<p>
				<label>借款标题</label>
				<input name="loanTitle"  type="text"  value="${loanSignBasics.loanTitle}" class="required"  minlength="1" maxlength="20"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if>  <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>/>
			</p>
			<p>
				<label>是否显示</label>
				<input name="isShow" <c:if test="${loanSign.isShow ne  '2'}">checked="checked"</c:if>  value="1" type="radio"/>显 示&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="isShow" <c:if test="${loanSign.isShow eq  '2'}">checked="checked"</c:if> value="2" type="radio"/>不显示
			</p>
			<p>
				<label>年化利率</label>
				<input name="rate"  type="text" class="required number"  min="0" max="30" value="${loanSign.rate}"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if>  <c:if test="${operNumber eq '3'}">  disabled="true" </c:if> />%
			</p>
			<p>
				<label>推荐到首页</label>
				<input name="isRecommand" <c:if test="${loanSign.isRecommand ne  '2'}">checked="checked"</c:if> value="1" type="radio"/>推 荐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="isRecommand"  <c:if test="${loanSign.isRecommand eq  '2'}">checked="checked"</c:if> value="2" type="radio"/>不推荐
			</p>
			<p>
				<label>结束时间</label>
				<input type="text" datefmt="yyyy-MM-dd" class="date required" name="endTime" value="${loanSign.endTime}" readonly="readonly"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if> <c:if test="${operNumber eq '3'}">  disabled="true" </c:if> />
			</p>
			
			
			<p>
				<label>借款标类型</label>
				<input name="loanCategory" value="1"  <c:if test="${loanSignBasics.loanCategory ne  '2'}">checked="checked"</c:if> type="radio"/>国开宝&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="loanCategory"  <c:if test="${loanSignBasics.loanCategory eq  '2'}">checked="checked"</c:if> value="2" type="radio"/>转盈宝
			</p>
			
			<p>
				<label>担保方</label>
				<input name="assure" class="required" value="${loanSignBasics.assure}" type="text"  maxlength="50"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if><c:if test="${operNumber eq '3'}">  disabled="true" </c:if>/>
			</p>
				<p>
				<label>反担保方式</label>
				<input name="unassureWay"  class="required" value="${loanSignBasics.unassureWay}" type="text"  maxlength="30"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if> <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>/>
			</p>
			<p>
				<label>普通会员最大份数</label>
				<input name="counterparts" value="${loanSign.vipCounterParts}" type="text" class="required" readonly="readonly"  min="0" max="50" >
			</p>
			<p>
				<label>VIP最大份数</label>
				<input name="vipCounterParts" value="${loanSign.vipCounterParts }" class="required" type="text"  readonly="readonly" maxlength="30" />
			</p>
			<p  style="clear: both;height: 100px;width: 100%">
				<label>借款方商业概述</label>
				<textarea class="textarea" name="overview" rows="20" cols="20"  <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if> <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>>${loanSignBasics.overView}</textarea>
			</p>
			<p style="clear: both;height: 100px;width: 100%">
				<label>借款方借款用途</label>
				<textarea class="textarea" name="behoof"  rows="20" cols="20" <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if> <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>>${loanSignBasics.behoof}</textarea>
			</p>
			<p style="clear: both;height: 100px;width: 100%">
				<label>借款方还款来源</label>
				<textarea class="textarea"  name="loanOrigin" rows="20" cols="20" <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if> <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>>${loanSignBasics.loanOrigin}</textarea>
			</p>
			<p  style="clear: both;height: 100px;width: 100%">
				<label>风险控制措施</label>
				<textarea class="textarea"  name="riskCtrlWay" rows="20" cols="20" <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if> <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>>${loanSignBasics.riskCtrlWay}</textarea>
			</p>
			<p  style="clear: both;height: 100px;width: 100%">
				<label>借款人感言</label>
				<textarea class="textarea" name="speech" rows="20" cols="20" <c:if test="${operNumber eq '2'&&loanSign.loanState ne 1}"> disabled="true" </c:if> <c:if test="${operNumber eq '3'}">  disabled="true" </c:if>>${loanSignBasics.speech}</textarea>
			</p>
			</div>
		<div class="formBar">
			<ul>
				<c:if test="${operNumber ne '3'}">
					<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				</c:if>
				<li>
					<div class="button"><div class="buttonContent"><button type="reset" class="close"><c:if test="${operNumber ne '3'}">取消</c:if><c:if test="${operNumber eq '3'}">关闭</c:if></button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
