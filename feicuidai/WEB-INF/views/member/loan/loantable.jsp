<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<style>
.wylc0 {
	background-color: #f0f4f7;
}

.jke {
	width: 210px;
	padding-left: 50px;
	font-size: 15px;
	text-shadow: 0 0 0 #333;
	color: #666;
}

.jke .syje {
	color: #f9653d;
	font-size: 15px;
	text-shadow: 0 0 0 #f9653d
}
</style>
<script type="text/javascript">
$(".DataLoadding b").load("javascript:void(0)",function(){
	var $data_value=$(this).parent("span").attr("data-value");					   
		$(this).parent("span").animate({
		width:$data_value+"%"	
				});	
		if($data_value<5&&$data_value!=0)
		{
		  $(this).parent("span").animate({
				width:4+"%"	
			});	

		}
});
</script>
<table
	style="width: 1003px; border: 1px solid #ddd; margin:20px 0;background-color:#fff;">
	<tr>
		<td style="height: 45px; border-bottom: 1px solid #ddd"><span
			style="display: block; height: 45px; float: left; font-size: 18px; line-height: 45px; color: #003384; font-weight: 500; margin-left: 10px;"><img
				src="resources/images/img/sbtz.png" align="absmiddle" />&nbsp;散标投资</span>
			<%-- <span
			style="display: block; height: 45px; float: right; margin-right: 10px;">
				<a href="javascript:void(0)"
				style="font-size: 14px; line-height: 45px; color: #003384;">更多</a> </span> --%>
		</td>
	</tr>
	<c:forEach items="${page.list}" var="loanList" varStatus="stat">
		<tr class="wylc${stat.index%2 }">
			<td style="height: 100px;">
				<table>
					<tr>
						<td style="width: 380px; height: 50px"><span
							style="display:inline-block;font-size: 16px; color: #003368; margin-left: 10px;height:50px;line-height:50px">
								<img src="/resources/images/img/subtype-${loanList[19]}.png"
								style="width:16px;height:16px;display:inline-block;float:left;margin-top:16px"
								<c:choose>
							  <c:when test="${loanList[19] eq 1 }">alt="小担当认证标" title="小担当认证标"</c:when>
							  <c:when test="${loanList[19] eq 2 }">alt="担保认证标" title="担保认证标"</c:when>
							  <c:when test="${loanList[19] eq 3 }">alt="抵押认证标" title="抵押认证标"</c:when>
							  <c:when test="${loanList[19] eq 4 }">alt="信用认证标" title="信用认证标"</c:when>
							  <c:when test="${loanList[19] eq 5 }">alt="实地认证标" title="实地认证标"</c:when>
							  <c:otherwise>alt="认证标" title="认证标"</c:otherwise>
							</c:choose> />
								<a href="/loaninfo/getLoanInfo.htm?id=${loanList[0]}"
								style="float:left;font-size:16px;margin-left:5px">${loanList[1]}</a>
						</span></td>
						<td style="width: 270px">
						
							<div class="DataLoadding">
								<span
									data-value="${fn:substring(loanList[15]/loanList[3]*100,0,fn:indexOf(loanList[15]/loanList[3]*100,'.')+2)}"
									class="">
									<b></b>
								</span>
								完成进度${fn:substring(loanList[15]/loanList[3]*100,0,fn:indexOf(loanList[15]/loanList[3]*100,".")+1)}%
							</div></td>
						<td class="jke">已成功借款：${fn:substring(loanList[15]+0.0,0,fn:indexOf(loanList[15],".")+2)}元</td>
						<td rowspan="2" style="width: 115px; text-align: center;"><c:if
								test="${loanList[7]==2 && loanList[8]<1}">
								<a href="/loaninfo/getLoanInfo.htm?id=${loanList[0]}"> <img
									src="resources/images/img/ktz.png"
									style="width: 100px; height: 35px"></img> </a>
							</c:if> <c:if test="${loanList[7]==3}">
								<a href="/loaninfo/getLoanInfo.htm?id=${loanList[0]}"> <img
									src="resources/images/img/hkz.jpg"
									style="width: 100px; height: 35px"></img> </a>
							</c:if> <c:if test="${loanList[7]==4}">
								<a href="javascript:void(0)"> <img
									src="resources/images/img/ywc.png"
									style="width: 100px; height: 35px"></img> </a>
							</c:if> <c:if test="${loanList[7]==2}">
								<c:if test="${fn:substring(loanList[8],0,1)==1}">
									<a href="javascript:void(0)"> <img
										src="resources/images/img/ymb.jpg"
										style="width: 100px; height: 35px"></img> </a>
								</c:if>
							</c:if></td>
					</tr>
					<tr>
						<td><span style="margin-left: 10px; float: left">利率：<font
								style="font-size: 16px; color: #ff6503">${fn:substring(loanList[4]*100,0,fn:indexOf(loanList[4]*100,".")+2)}</font><font
								style="font-size: 12px; color: #ff6503">&nbsp;%</font> </span> <span
							style="display:block;width:100px;margin-right: 30px; float: right">期限：<font
								style="font-size: 16px; color: #ff6503"> <c:if
										test="${!empty loanList[5]}">${loanList[5] }个月</c:if> <c:if
										test="${empty loanList[5]}">${loanList[6]+0 }天</c:if> </font> </span></td>
						<td style="text-align: right"><span style="">金额：<font
								style="font-size: 12px; color: #333">￥${fn:substring(loanList[3],0,fn:indexOf(loanList[3],".")+2)}</font>
						</span></td>
						<td class="jke">剩余借款金额：<font class="syje">${fn:substring(loanList[3]-loanList[15],0,fn:indexOf(loanList[3]-loanList[15],".")+2)
								}元</font>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</c:forEach>
</table>
<jsp:include page="/WEB-INF/views/member/communal/page.jsp" />
