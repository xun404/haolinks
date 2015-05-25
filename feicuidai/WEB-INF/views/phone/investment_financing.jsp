<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="zh-cn">
	<meta charset="UTF-8">
	<title></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="format-detection" content="telephone=no"/>
	<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
	<!-- meta keywords 和 description 及其它项请动态载入-->
	<link href="/resource/phone/bootstrap3.3.4/css/bootstrap.min.css" rel="stylesheet">
	<script src="/resource/phone/bootstrap3.3.4/js/jquery1.11.2.min.js"></script>
	<script src="/resource/phone/bootstrap3.3.4/js/bootstrap.min.js"></script>
	<!-- 以上请按顺序写入，路径请调整-->
	<link href="/resource/phone/bootstrap3.3.4/css/mobi.css" rel="stylesheet">
	<style type="text/css">
		.title_def{
			float:left;
			padding-top:14px;
			width:50%;
			font-size:1.2em;
			color:#ababab;
			text-align:center;
		    height:50px;
			border-bottom: 3px solid #ababab;
			line-height: 100%;
			vertical-align: middle;
		}
		.title_active{
			color:#00cc99;
			border-bottom: 3px solid #00cc99;
		}
		.about_us_title{
			background: #fff;
			height:50px;
		}
	</style>
</head>
<body>
<div class="main">
<!--内容 End-->
<div class="about_us_title">
    <div class="div_style title_def title_active" id="div_style_1" style="cursor: pointer;">普通标</div>
    <div class="div_style title_def" id="div_style_2" style="cursor: pointer;">体验标</div>
    <div class="c"></div>
</div>

<div class="content_box" id="Content_box_1" style="margin-top:5px">

<c:forEach var="loanSign" items="${phoneLoanSignList}">
		<div class="container-fluid">
			<div class="row list m-list bg-default">
				<div class="per-icon">
					<span><i ><img src="/resource/phone/images/ya.png" width="16" height="16" alt="标的列表"></i></span></div>
				<div class="per-content">
					<span class="m-tips">${loanSign[1]} 期限:${loanSign[5]}个月</span>
					<span class="m-tips  span2">金额：<fmt:formatNumber value="${loanSign[3]}" pattern="0"></fmt:formatNumber>元 年化率:<fmt:formatNumber value="${loanSign[2]*100}" pattern="0.0"/>%</span>
				</div>
				<div class="per-btn">
					<c:if test="${loanSign[4]==3}">
						<input type="button" class="btn btn-default btn-mid" value="投标结束"/>
					</c:if>
					<c:if test="${loanSign[4]==2&&loanSign[3]>loanSign[9]}">
						<input type="button" class="btn btn-green btn-mid" value="我要投资" onclick="window.top.location='/phoneInvest/getPhoneInvestUI?id=${loanSign[0]}';"/>
					</c:if>
					<c:if test="${loanSign[4]==4}">
						<input type="button" class="btn btn-default btn-mid" value="&nbsp;还&nbsp;款&nbsp;中&nbsp;"/>
					</c:if>
					<c:if test="${loanSign[4]==2&&loanSign[3]==loanSign[9]}">
						<input type="button" class="btn btn-default btn-mid" value="满标复审"/>
					</c:if>
				</div>
			</div>
		</div>
</c:forEach>
</div>

<div class="content_box" id="Content_box_2" style="margin-top:5px;display:none">
<c:forEach var="loanSign" items="${phoneLoanSignListTi}">
	<div class="container-fluid">
		<div class="row list m-list bg-default">
			<div class="per-icon">
				<span><i ><img src="/resource/phone/images/ti.jpg" width="16" height="16" alt="标的列表"></i></span></div>
			<div class="per-content">
				<span class="m-tips">${loanSign[1]} 期限:${loanSign[5]}个月</span>
				<span class="m-tips span2">金额:<fmt:formatNumber value="${loanSign[3]}" pattern="0"/>元 年化率:<fmt:formatNumber value="${loanSign[2]*100}" pattern="0.0"/>%</span>
			</div>
			<div class="per-btn">
				<c:if test="${loanSign[4]==3}">
					<input type="button" class="btn btn-default btn-mid" value="投标结束"/>
				</c:if>
				<c:if test="${loanSign[4]==2&&loanSign[3]>loanSign[9]}">
					<input type="button" class="btn btn-blue btn-mid" value="我要投资" onclick="window.top.location='/phoneInvest/getPhoneInvestUI?id=${loanSign[0]}';"/>
				</c:if>
				<c:if test="${loanSign[4]==4}">
					<input type="button" class="btn btn-default btn-mid" value="&nbsp;还&nbsp;款&nbsp;中&nbsp;"/>
				</c:if>
				<c:if test="${loanSign[4]==2&&loanSign[3]==loanSign[9]}">
					<input type="button" class="btn btn-default btn-mid" value="满标复审"/>
				</c:if>
			</div>
		</div>
	</div>
	</c:forEach>

<c:if test="${empty phoneLoanSignListTi}">
没有记录!
</c:if>
</div>




</div>
<div class="co_text"></div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>


<script type="text/javascript">
$(document).ready(function(){

//	$(".about").click(function(){
//		$(this).addClass("title_active");//removeClass
//		$(".content_box").hide(); //show

		$(".div_style").click(function(){
		    $(".div_style").removeClass("title_active");
			$(this).addClass("title_active");
			$(".content_box").css("display","none");
			$("#Content_box_"+$(this).attr("id").replace("div_style_","")).css("display","block")
		})
	})

</script>
</body>
</html>
