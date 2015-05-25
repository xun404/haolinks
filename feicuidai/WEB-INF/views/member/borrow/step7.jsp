<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>翡翠贷贷款平台-会员中心</title>
<link rel="stylesheet" type="text/css" href="resources/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/vipcenter.css" />
<link rel="stylesheet" href="../resources/css/validationEngine.jquery.css"
	type="text/css" />

<jsp:include page="/WEB-INF/views/visitor/common.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp" />
	<script type="text/javascript" src="../resources/js/global.js"></script>
<script type="text/javascript" src="../resources/js/recharge.js"></script>
	<script src="/resources/js/jquery/jquery.validationEngine.js"
	type="text/javascript"></script>
	<script src="/resources/js/jquery/jquery.validationEngine-zh_CN.js"
	type="text/javascript"></script>
	<!--Content-->
	<div class="Content">
		<div class="w960px">
			<!--vipContent-->
			<div class="vipContentBox">
				<jsp:include page="/WEB-INF/views/member/communal/communal_left.jsp" />


				<!--vipRight-->
				<div class="vipRightBox">
					<div class="vipHeadMenuBox">
						<ul>
							<li><a href="javascript:void(0);" class="vipHeadLink">我要借款</a></li>
						</ul>
					</div>
					<!--vipContBox-->
					<div class="vipContBox">
						<div class="vipContTitleBox">
							<h1 class="vipContTitle">
								<span><img src="../resources/images/vipseversicon.png" /></span>通过提交您的资料上传，翡翠贷将进行初步审核。
							</h1>
						</div>
						<form action="borrow/uploadFile" method="post" enctype="multipart/form-data" id="form-data-zlsc">
						<input type="hidden" name="fileType" value="">
						<input type="hidden" id="baseId" name="borrowersBase.id" value="${borrower.id}">
							<div class="upDataStep curvyCorners_5">
								<a href="../borrow/forwardPersoninfo" >个人资料</a>
<a href="../borrow/forwardContact">联系方式</a>
<a href="../borrow/forwardCompany">单位资料</a>
<a href="../borrow/forwardFinanes">财务状况</a>
<a href="../borrow/forwardOthercontact">联保情况</a>
<a href="../borrow/forwardBusinessImg" >商业图片</a>
<a class="stepLink">资料上传</a>
<a href="../borrow/forwardAuditRecord">审核记录</a>
							</div>
							<fieldset class="imgfieldset">
								<legend>我的相册</legend>
								<ul>
									<c:if test="${!empty files }">
										<c:forEach items="${files }" var="b_img">
											<li><img src="${b_img.filePath}" width="159" height="134" /></li>
										</c:forEach>
									</c:if>
								</ul>
							</fieldset>

							<fieldset class="fileUpfieldset">
								<legend>上传图片</legend>
								<span class="vipfileBox"> <input type="text"
									class="vipfileTx" /> <input type="file" name="file" class="vipfile validate[funcCall[money_format]]"
									onchange="$(this).siblings('.vipfileTx').val($(this).val());" />
									<span>选择</span>
								</span> <input type="submit" value="提交"
									class="vipfileUpDataBnt curvyCorners_3" />
								<p class="fileGeshi">请上传【jpg,gif,bmp,png】等图片格式的文件</p>
							</fieldset>

							<div class="tableSetBntBox">
<!-- 								<input type="submit" value="保存继续" /> -->
								<input type="button" value="申请"  onclick="fun_updateBorrower();"/>
							</div>
						</form>
					</div>
					<!--End vipContBox-->
				</div>
				<!--End vipRight-->
			</div>
			<!--End vipcontent-->

		</div>
	</div>
	<!--End vipContent-->
	<!--End vipRight-->
	</div>
	<!--End vipcontent-->
	</div>
	</div>
	<!--End vipContent-->
	<jsp:include page="/WEB-INF/views/visitor/footer.jsp" />
	<script>
	
		$(function(){
			$("#form-data-zlsc").validationEngine({});
			
		})
	
		function money_format(o,a,c,b){
			
			var FileName = o.val();
			
			var extension = FileName.substring(FileName.lastIndexOf(".") + 1,
					FileName.length);// 文件扩展名
			extension = extension.toLowerCase();
			if (FileName == null || FileName == "") {
				return "请选择您要上传的文件";
			}
			if (extension != "jpg" && extension != "png" && extension != "gif"
					&& extension != "bmp") {// 不安全的扩张名
				return "请选择图片上传";	
			}
			
		}
		
		function fun_updateBorrower(){
			var borrowerId = $("#baseId").val();
			var committime = $("#commite_time").val();
			if(borrowerId == null || borrowerId == ""){
				ymPrompt.alert('请先填写个人资料！', 400, 200, '提示', null);
				return false;
			}else{
				if(committime == null || committime == ""){
					fn_ajax(
							"/borrow/updateBorrower",
							{
								baseId : borrowerId
							},
							function(data) {
								if(data == true){
									ymPrompt.alert("您的资料已成功提交，我们将会在近期对您的资料进行审核！");
								}else{
									ymPrompt.alert("对不起，您的资料提交失败了！");
								}
							});
				}else{
					ymPrompt.alert("您的信息已经提交，不需要重复提交！", 400, 200, '提示', null);
					return false;
				}
			}
			
			
		}
	</script>
</body>
</html>
