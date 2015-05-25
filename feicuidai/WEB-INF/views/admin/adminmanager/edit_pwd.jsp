<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script src="resources/js/dwz.regional.zh.js" type="text/javascript"></script>
<div class="pageContent">
	<form method="post" action="/adminUser/update_pwd" class="pageForm" onsubmit="return validateCallback(this, dialogAjaxDone)">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>原密码：</label>
				<input type="password" name="oldstr" value="" size="15" class="required"/>
			</div>
			<div class="unit">
				<label>新密码：</label>
				<input type="password" name="newpwd" id="newpwd" size="30" minlength="6" maxlength="15" class="required"/>
			</div>
			<div class="unit">
				<label>确认密码：</label>
				<input class="required" equalto="#newpwd" type="password" size="30" />
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
	
</div>

