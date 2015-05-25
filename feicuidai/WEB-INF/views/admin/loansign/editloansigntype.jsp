<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="resources/js/dwz.regional.zh.js" type="text/javascript"></script>
 	
<div class="pageContent">
	<form method="post" action="/loansigntype/edit" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="60" style="margin-left: 50px;">
		${loansigntype.id}
		<input type="text" style="display: none;" name="id" value="${loansigntype.id}"/>
			<div style="width:600px; margin:0 auto; float: left;">
				<p>
					<label>类型名</label>
					<input type="text"  name="typeName" value="${loansigntype.typeName}"  class="required"  maxlength="20">
				</p>
				<p>
					<label>借款标期</label>
					<input type="text"  name="money" value="${loansigntype.money}"  class="required digits" min="0"  max="36" > 月
				</p>
				<p>
					<label>最小借款额度</label>
					<input type="text"  name="minCredit" value="${loansigntype.minCredit}"  class="required number" maxlength="12">元
				</p>
				<p>
					<label>最大借款额度</label>
					<input type="text"  name="maxCredit" value="${loansigntype.maxCredit}"  class="required number" maxlength="12">元
				</p>

				<p>
					<label>最小借款期限</label>
					<input type="text"  name="minMoney" value="${loansigntype.minMoney}"  class="required digits" min="0" max="36" >月
				</p>

				<p>
					<label>最大借款期限</label>
					<input type="text"  name="maxMoney" value="${loansigntype.maxMoney}"  class="required digits" min="0" max="36" >月
				</p>
				<p>
					<label>最低借款利率</label>
					<input type="text"  name="minRate" value="${loansigntype.minRate*100}"  class="required number" min="0" max="40">%
				</p>

				<p>
					<label>最高借款利率</label>
					<input type="text"  name="maxRate" value="${loansigntype.maxRate*100}"  class="required number"  min="0" max="40">%
				</p>
			</div></div>
		<div class="formBar">
			<ul>
					<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="reset" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
