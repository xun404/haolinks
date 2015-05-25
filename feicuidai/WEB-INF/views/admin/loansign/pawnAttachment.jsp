<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="pageContent">
	<form method="post" action="/attachment/uploadPawnAttachment" class="pageForm required-validate" enctype="multipart/form-data" onsubmit="return iframeCallback(this, dialogAjaxDone)">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<input type="hidden" name="pawn.id"  value="${id}"/>
			</div>
			<div>
			<input name="myMark" type="radio" value="1" checked="checked"/>上传抵押物图片
			<input name="myMark" type="radio" value="2" />上传风控附件图片
			</div>
			<div class="unit">
				<label>图片上传：</label>
				<input type="file" name="fileurl"  value=""/>
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