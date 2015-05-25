<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>翡翠贷-我的账户</title>
    <jsp:include page="/WEB-INF/views/visitor/common_3.jsp"></jsp:include>
    
    <style>
.jkxqSpan {
	display: block;
	height: 30px;
	line-height: 30px;
	font-size: 14px;
	color: #444;
	float: left
}

.dataContBox ul li {
	margin: 15px 0 0 0
}
</style>

    
    <link type="text/css" rel="stylesheet" href="/resources/css/imgStyle.css" />
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/financial_management.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/banner.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>
    <link rel="stylesheet" type="text/css"href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    
    
    
    
    <link rel="stylesheet" href="/resource/css/ShopShow.css" type="text/css" />
    <link rel="stylesheet" href="/resource/css/MagicZoom.css" type="text/css" />
    
    <script src="/resource/js/MagicZoom.js" type="text/javascript"></script>
     
</head>
<body onload="showtime()">


<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<script type="text/javascript" src="/resources/js/plank.js"></script>
<script type="text/javascript" src="/resources/js/condition.js"></script>
<script type="text/javascript" src="/resources/js/loanSign/loaninfo.js"></script>
<script type="text/javascript" src="/resources/js/agree.js"></script>
<script type="text/javascript" src="/resources/js/public.js"></script>

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="registr_all borrow user_evaluation_all">
<div class="title"><a href="/" style="cursor: pointer;">首页</a>><a href="/loaninfo/openLoan.htm" style="cursor: pointer;">我要投资</a> > 项目详情</div>
<div class="title_pro" >

<div style="float:left; width:200px;font-size: 20px;height:60px; line-height:60px;">${pawn.name}</div>
<a href="javascript:history.go(-1)">
<span style="float:right; width:80px;display: block;  height: 30px; line-height: 30px; background-color: #00bc00; color: #fff; text-align: center; font-size: 14px; border-radius: 5px; margin:10px auto; margin-right:10px;">返回</span>
</a>
<div class="c"></div>
</div>
	
	
<div class="product_left_box">
  <div id="tsShopContainer">
	<div id="tsImgS"><a href="${pawnAttachmentList[0].attachmentName}" title="Images" class="MagicZoom" id="MagicZoom"><img width="164" height="114" src="${pawnAttachmentList[0].attachmentName}" /></a></div>
	  <div id="tsPicContainer">
		<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
		  <div id="tsImgSCon">
			<ul>
			
			    <c:forEach items="${pawnAttachmentList}" var="pawnAttachment" varStatus="status">
			    <c:if test="${status.index == 0 }">
			     <li onclick="showPic(${status.index})" rel="MagicZoom" class="tsSelectImg"><img src="${pawnAttachment.attachmentName}" tsImgS="${pawnAttachment.attachmentName}" /></li>
			    </c:if>
			    <c:if test="${status.index != 0 }">
			    <li onclick="showPic(${status.index})" rel="MagicZoom"><img src="${pawnAttachment.attachmentName}" tsImgS="${pawnAttachment.attachmentName}" /></li>
			    </c:if>
			    </c:forEach> 
			
			</ul>
		</div>
	   <div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
	</div>
	<img class="MagicZoomLoading" width="16" height="16" src="images/loading.gif" alt="Loading..." />
</div>
<script src="/resource/js/ShopShow.js"></script>
</div>

    
    
    <div class="product_right_box">
    <div class="content_text">
        <p><strong>编号:</strong>${pawn.number}</p>
    </div>
    <div class="content_text">
        <p><strong>尺寸:</strong>${pawn.size}</p>
    </div>
    <div class="content_text">
        <p><strong>重量:</strong>${pawn.weight}</p>
    </div>   
    <div class="content_text">
        <p><strong>原料产地:</strong>${pawn.producer} </p>
    </div> 
    <div class="content_text">
        <p><strong>工艺:</strong>${pawn.technology}</p>
    </div>   
    <div class="content_text" style="border-bottom:none;">
        <p>
         <strong>寓意: </strong> ${pawn.introduction}
		</p>
    </div>
             
    </div>
   <div class="c"></div>
 <div style="width:1000px;height:auto;">
   <div class="evaluation_content_box evaluation_content_box_02">
    <h3>抵押物（${pawn.name}）评估书</h3>
    <p>
    ${pawn.assessmentReport}
      
    </p>

    </div>     
   <div class="c"></div>      
  <div style="width:auto;height:30px; line-height:30px; text-indent:20px;">抵押物托管方：<span>${pawn.custodian }</span></div>  
  
 </div> 
          
</div>


  
<!--------注册 End--------------->

     
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>


<script>


	
	</script>

</body>
</html>
