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
<div class="registr_all borrow">
<div class="title"> <a href="/" style="cursor: pointer;"> 首页</a> > <a href="/loaninfo/openLoan.htm" style="cursor: pointer;">我要投资</a> > 项目详情</div>

<div class="Content">
		<div class="w960px" style="width:1000px; margin:20px auto; ">
			<!--End mapLinkBox-->
			<div style="width: 980px; height: auto; background-color: #fff;margin:0px auto;">
				<div style="width: 600px; height: auto; float: left">
					<div style="width: 570px; height: 40px;line-height:40px;">
						<span style=" font-size: 18px; color: #666; margin-left: 35px;">
							<font style=" font-size: 18px; color: #6e6e6e;">标题：</font>${loan.loanSignBasics.loanTitle}</span>
							
							<span style="height: 30px; line-height: 30px; font-size: 16px; color: #222; margin-left: 35px;">
							(发布时间：${publishTime})</span>
					</div>
					<div
						style="width: 570px; height: 40px;line-height:40px; ">
						<span
							style="font-size: 18px; color: #666; margin-left: 35px;">
							<font style=" font-size: 18px; color: #00bc00;">编号：</font>${loan.loanSignBasics.loanNumber}</span>
					</div>
					<c:if test="${loanSignType8 ==1}">
					<div
						style="width: 570px; height: 40px;line-height:40px;   border-bottom: 1px solid #ddd;">
						<span
							style=" font-size: 18px; color: #666; margin-left: 35px;">
							<font style=" font-size: 18px; color: #00bc00;">担保方：</font>${loan.loanSignBasics.assure}</span>
					</div>
					</c:if>
					<div style="width: 535px; height: 220px; padding-left: 35px;">
						<div
							style="width: 230px; height: 70px; border-right: 1px dotted #777; margin-top: 15px; float: left">
							<span
								style="display: block; width: 230px; height: 30px; line-height: 30px; font-size: 14px; color: #444; line-height: 25px;">
								项目总额： </span><span
								style="display: block; width: 230px; height: 40px; line-height: 40px; font-size: 28px; color: #333;">
								<fmt:formatNumber value="${loan.issueLoan}" pattern="##.##"
									minFractionDigits="2" /> <font
								style="font-size: 14px; color: #444; margin-left: 5px">元</font>
							</span>
						</div>
						<div
							style="width: 120px; height: 70px; border-right: 1px dotted #777; margin: 15px 0 0 30px; float: left">
							<span
								style="display: block; width: 75px; height: 30px; line-height: 30px; font-size: 14px; color: #444; float: left">
								年利率 </span> <a title="借款年利率" href="javascript:void(0)"
								style=" display: block; width: 16px; height: 17px; float: left; margin: 5px 0 0 0"></a>
							<span
								style="display: block; width: 120px; height: 40px; line-height: 40px; font-size: 28px; color: #fb4646;">
								<fmt:formatNumber value="${loan.rate*100}" pattern="##.#"
									minFractionDigits="1" /> <font
								style="font-size: 15px; margin-left: 5px">%</font> </span>
						</div>
						<div
							style="width: 120px; height: 70px; margin: 15px 0 0 30px; float: left">
							<span
								style="display: block; width: 120px; height: 30px; line-height: 30px; font-size: 14px; color: #444; line-height: 25px;">
								借款期限： </span><span
								style="display: block; width: 120px; height: 40px; line-height: 40px; font-size: 28px; color: #333;">
								<c:if test="${!empty loan.month}">
						${loan.month}<font style="font-size: 14px; margin-left: 5px">个月</font>
								</c:if> <c:if test="${empty loan.month}">
						${loan.useDay}<font style="font-size: 14px; margin-left: 5px">天</font>
								</c:if> </span>
						</div>
						
						<c:if test="${loanSignType8 ==1}">
						<span class="jkxqSpan" style="width: 285px; margin-top: 30px; height:40px;line-height:40px;">
							<font style="float: left; font-size: 14px">投资保障：</font> <a
							title="本金" href="javascript:void(0)"
							style="background-image: url(/resources/images/img/benxi.png); display: block; width: 25px; height: 30px; float: left; margin-right: 3px;"></a>
							<a title="利息" href="javascript:void(0)"
							style="background: url(/resources/images/img/benxi.png) no-repeat -28px 0; display: block; width: 25px; height: 30px; float: left"></a>
						</span> 
						</c:if>
						
						<c:if test="${loanSignType8 ==8}">
						<span class="jkxqSpan" style="width: 285px; margin-top: 30px; height:40px;line-height:40px;">
						<font style="float: left; font-size: 14px">体验标：</font>
						<a title="利息" href="javascript:void(0)"
							style="background: url(/resources/images/img/benxi.png) no-repeat -28px 0; display: block; width: 25px; height: 30px; float: left"></a>
						</span> 
						</c:if>
						
						
						<span class="jkxqSpan" style="width: 245px; margin-top: 30px; height:40px;line-height:40px;">
							还款方式： <c:if test="${loan.loanType==1}">
								<c:if test="${loan.refundWay==1}">等额本息</c:if>
								<c:if test="${loan.refundWay==2 && loanSignType8 ==1}">先息后本</c:if>
								<c:if test="${loanSignType8 ==8}">先息后本</c:if>
								<c:if test="${loan.refundWay==3}">到期一次性还本息</c:if>
							</c:if> <c:if test="${loan.loanType==2||loan.loanType==3}">
							</c:if> 
						</span> 
  				
  						<span class="jkxqSpan" style="width: 285px; height:40px;line-height:40px;"> 
  						
  						<span  style="float: left; font-size: 14px; color: #444;">投标进度：</span> 
  						
  					<%--
							<span style="background-color: #b6b6b6; width: 70px; height: 8px; margin-top: 12px; border-radius: 3px; float: left">
						    <span style="background-color:#00bc00;display:block;width:${scale*100}%;height:8px;border-radius:3px;"></span>
						    </span> 
						    
						    
						<span  style="float: left; font-size: 14px; color: #444; margin-left: 5px;"><fmt:formatNumber
									value="${scale*100}" pattern="##.#" minFractionDigits="1" />%</span>
						 --%>	
						 	
							 <div class="myStat" style="display: inline-block; height: 50px" data-width="10" 
                                 data-fontsize="10" data-percent="${(firstNumber/secondNumber)*100}"
                                 <c:if test="${(firstNumber/secondNumber)*100 == 100}">data-text="<fmt:formatNumber value='${(firstNumber/secondNumber)*100}' pattern='0'/>%"</c:if>
                                 <c:if test="${(firstNumber/secondNumber)*100 != 100}">data-text="<fmt:formatNumber value='${(firstNumber/secondNumber)*100}' pattern='0.0'/>%"</c:if>
                                 >
                                 </div>		
								
									
						</span>
						 <span class="jkxqSpan" style="width: 245px; height:40px;line-height:40px;">
							剩余金额：${reMoney } 元</span> <span class="jkxqSpan" style="width: 285px">
							投标人数：${buyCount }人 </span> 
							<span id="showtime" class="jkxqSpan" style="width: 245px"> 
							剩余时间：<input type="hidden" id="loantype" value="${loan.loanType }" /> 
							<input type="hidden" id="loanrate" value="${loan.rate }" /> 
							<input type="hidden" id="loanState" value="${loan.loanState }" /> 
							<input type="hidden" id="bidEndTime" value="${bidEndTime}" />
							<input type="hidden" id="time" value="${loan.endTime }" /> 
							<label id="showday" class="showtime"></label>天
							<label id="showhour" class="showtime"></label>时
							<label id="showminute" class="showtime"></label>分
							<label id="showsecond" class="showtime"></label>秒
						</span>
					</div>
				</div>
				<div
					style="width: 320px; height: 280px; float: right; margin-right: 20px;">
					<%-- <c:if test="${loan.loanState==3||loan.loanState==4}">
						<div
							style="width: 320px; height: 55px; border-bottom: 1px solid #ddd;">
							<span
								style="height: 55px; line-height: 65px; font-size: 18px; color: #222;">
								${loan.loanSignBasics.loanTitle} </span>&nbsp;&nbsp; <a
								href="/loaninfo/contact?loansignId=${loan.id }"
								style="height: 55px; line-height: 65px; font-size: 14px; color: #ff6501;">借款合同下载</a>
						</div>
					</c:if> --%>
					<div style="width: 275px; height: 220px; margin-left: 45px;">
						<input type="hidden" id="yuding" name="" value="" />
						<c:if test="${empty session_user }">
							<span
								style="height: 45px; line-height: 45px; margin-left: 45px; font-size: 14px; color: #444">
								账户余额<a href="/visitorManagement/visitor/to-login"
								style="font-size: 14px; color: #00bc00;"> 登录 </a>后可见 </span>
							<div
								style="width: 250px; height: 40px; border: 1px solid #ddd; line-height: 40px;">
								<span
									style="width: 190px; height: 40px; font-size: 18px; color: #555; margin-left: 10px;"></span>
								<span
									style="width: 20px; height: 40px; font-size: 14px; color: #aaa; float: right">元</span>
							</div>
							<div style="width: 250px; height: 30px; margin-top: 15px">
								<input type="checkbox" id="checkAgree"  style="float: left; margin: 7px 15px 0 0;" checked="checked" />
								 <span style="display: block; height: 30px; line-height: 30px; float: left;">我已经阅读并同意<a
									href="/visitorManagement/visitor/agreement" style="color: #00bc00;">《使用条款》</a>
								</span>
							</div>
							<a href="/visitorManagement/visitor/to-regist"> <span
								style="display: block; width: 240px; height: 55px; line-height: 55px; background-color: #00bc00; color: #fff; text-align: center; font-size: 20px; border-radius: 5px; margin: 20px 0 0 5px;">立即注册</span>
							</a>
						</c:if>
						<input type="hidden" id="pawnId" value="${loan.pawn.id}"/>
						<c:if test="${empty session_user }">
						 <input type="hidden" id="loanid" name="id" value="${loan.id}" />
						</c:if>
						<c:if test="${!empty session_user }">
						<%-- 
							<form id="form1" action="/plank/getLoaninfo.htm" method="post">
						--%>	
							<form id="form1" method="post">
								    <input type="hidden" id="loanid" name="id" value="${loan.id}" />
								
								    <input type="hidden" id="loanuserId" name="loanuserId" value="${loan.userBasicsInfo.id }" /> 
									
									<input type="hidden" id="userId" name="userId" value="${session_user.id}" /> 
									
									<input type="hidden" id="effective" name="effective" value="${maxMoney}" /> 
									
									<input type="hidden" id="logo" value="${logo}" /> 
									
									<input type="hidden" id="minmoney" name="minmoney" value="${loan.loanUnit }" />
									
									<input type="hidden" id="loanSignType8" name="loanSignType8" value="${loanSignType8}" />
									
									<input type="hidden" id="experienceGold" name="experienceGold" value="${experienceGold}" />
									
									<!-- 这里存储重复提交标示 -->
									<input type="hidden" id="repeatLoanMark" name="repeatLoanMark" value="${repeatLoanMark}" />
									
								<p>
									<span
										style="height: 35px; line-height: 35px; margin-left: 45px; font-size: 14px; color: #444">
										可投金额：<font style="color: #ff6501; font-size: 14px;"><fmt:formatNumber
												value="${maxMoney}" pattern="#,#00.00" /> </font>元 </span>
								</p>
								<p>
								    <c:if test="${loanSignType8 ==1}">
									<span
										style="height: 45px; line-height: 35px; margin-left: 35px; font-size: 14px; color: #444">
										账户余额：<span 
										style="line-height: 35px; font-size: 14px; color: #444">
										<fmt:formatNumber value="${money}" pattern="#,#00.00" /> </span>元
										
										<input type="hidden" value="${money}" id="accountBalance" />
										
										<a href="/fundManagement/recharge/openRecharge"
										style="color: #2a90da; margin-left: 10px; line-height: 35px; font-size: 12px">充值</a>
									</span>
									</c:if>
									
									<c:if test="${loanSignType8 ==8}">
									<span
										style="height: 45px; line-height: 35px; margin-left: 35px; font-size: 14px; color: #444">
										体验金余额：<span 
										style="line-height: 35px; font-size: 14px; color: #444">
										<fmt:formatNumber value="${empty experienceGold ? 0.00:experienceGold}" pattern="#,#00.00" /> 
												</span>元
									</span>
									</c:if>
								</p>
								<div style="width: 250px; height: 40px; border: 1px solid #ddd; line-height: 40px; font-size: 20px;">
									<input type="text" id="investMoney" name="money" style="outline:none;border: 0px; width: 215px; height: 38px; line-height: 38px; margin: 1px 5px 0 10px; color: #555; float: left;"  placeholder="最小投资额为${loan.loanUnit}" />
									<span style="width: 20px; height: 40px; font-size: 14px; color: #aaa; float: left">元</span>
								</div>
								<script>
									$("#investMoney").bind("input propertychange",
										function() {
										    
											if (isNaN($(this).val())) {
												$(this).val($(this).val().replace(/[^\d]/g,''));
											}
									});
								</script>
								<div style="width: 250px; height: 30px; margin-top: 15px">
									<input type="checkbox" id="checkAgree" checked="checked"
										style="float: left; margin: 7px 15px 0 0;" /> <span
										style="display: block; height: 30px; line-height: 30px; float: left;">我已经阅读并同意
										<!-- <a href="javascript:showAgree();" style="color: #2a90da">《使用条款》</a> -->
										<a href="/visitorManagement/visitor/agreement" target="_blank" style="color: #2a90da">《使用条款》</a>
									</span>
								</div>
								<c:if test="${loan.loanState == 2 && reMoney > 0 && isTimeEndMark == 1}">
								
								<%--
								
								<a id="suBnt_a" href="javascript:void(0);"> <span
										style="display: block; width: 240px; height: 45px; line-height: 45px; background-color: #fb4646; color: #fff; text-align: center; font-size: 20px; border-radius: 5px; margin: 20px 0 0 5px;">立即投标</span>
									</a>
								 --%>
								
									<a id="invest_now" href="javascript:void(0);"> <span
										style="display: block; width: 240px; height: 45px; line-height: 45px; background-color: #fb4646; color: #fff; text-align: center; font-size: 20px; border-radius: 5px; margin: 20px 0 0 5px;">立即投标</span>
									</a>
									
								</c:if>
								<c:if test="${loan.loanState == 3 }">
									<a href="javascript:void(0);"> <span
										style="display: block; width: 240px; height: 45px; line-height: 45px; background-color: #a7a7a7; color: #fff; text-align: center; font-size: 20px; border-radius: 5px; margin: 20px 0 0 5px;">还款中</span>
									</a>
								</c:if>
								<c:if test="${loan.loanState == 4}">
									<a href="javascript:void(0);"> <span
										style="display: block; width: 240px; height: 45px; line-height: 45px; background-color: #a7a7a7; color: #fff; text-align: center; font-size: 20px; border-radius: 5px; margin: 20px 0 0 5px;">已完成</span>
									</a>
								</c:if>
								<c:if test="${loan.loanState == 2 && remoney <= 0}">
									<a href="javascript:void(0);"> <span
										style="display: block; width: 240px; height: 45px; line-height: 45px; background-color: #a7a7a7; color: #fff; text-align: center; font-size: 20px; border-radius: 5px; margin: 20px 0 0 5px;">已满标</span>
									</a>
								</c:if>
								
								<c:if test="${loanSignType8 ==1}">
								<a href="/visitorManagement/visitor/getPawn?pawnId=${loan.pawn.id}">
								<span style="display: block; width: 240px; height: 45px; line-height: 45px; background-color: #00bc00; color: #fff; text-align: center; font-size: 20px; border-radius: 5px; margin: 20px 0 0 5px;">抵押物</span>
							    </a>
							    </c:if>
							</form>
						</c:if>
					</div>
				</div>
			</div>
			<!--借款信息资料-->
			 <c:if test="${loanSignType8 ==1}">
			  <div style="width: 980px;  background-color: #fff; margin: 15px auto;">
				<div style="width: 600px; float: left;border:1px solid #ddd; margin:20px 0px 20px 0px">
					<div class="dataInfoTabBox">
						<ul class="dataInfoTab">
							<li><span class="dataTabLink" style="border-left: 0px">项目信息</span></li>
							<%-- 
							<li><span>借款记录</span></li>
							--%>
							<li><span>投资记录</span></li>
							<%--
							<c:if test="${!empty session_user }">
							 
								<li><span>借款历史记录</span></li>
							</c:if>--%>
							<li><span>风控附件</span></li>
							
						</ul>
					</div>
					<script>
						function jumpPage(pageNo, totalPage) {
						
							//if (pageno<=0 || pageno>totalPage) {
								//return;
							//}
								$.ajax({
									type : 'post',
									url : '/loaninfo/loanRecord.htm',
									data : {
										id : $("#loanid").val(),
										pageNo : pageNo
									},
									success : function(msg) {
										$(".dataContBox:eq(1)").html(msg);
									}
								});
						
						}
					</script>
					<div class="dataInfoCont">
						<div class="listContLeft" style="padding-left:11px;">
							<!-- 借款方相关资料 -->
							<div class="content dataContBox" style="min-height:auto;height:auto;margin-left:5px; padding-left:0px;">
							<style>
							.dataInfoCont .listContLeft .dataContBox span{color:#666;width:110px;}
							.dataInfoCont .listContLeft .dataContBox span p{font-family:'微软雅黑';}
							</style>
							    <p style="font-family:'微软雅黑';font-size:12px;line-height:25px;"><span style="colir:#666;width:110px;font-family:'微软雅黑';font-weight:bold;">借款方资金用途 :</span><samp>${loan.loanSignBasics.behoof}</samp></p>
   							    <p style="font-family:'微软雅黑';font-size:12px;line-height:25px;"><span style="colir:#666;width:110px;font-family:'微软雅黑';font-weight:bold;">借款方还款来源 :</span><samp>${loan.loanSignBasics.loanOrigin}</samp></p>
   							    <p style="font-family:'微软雅黑';font-size:12px;line-height:25px;"><span style="colir:#666;width:110px;font-family:'微软雅黑';font-weight:bold;">风险控制措施 :</span><samp>${loan.loanSignBasics.riskCtrlWay}</samp></p>

							</div>
							<!-- End借款方相关资料 -->
							<!-- 借款记录 -->
							<div class="dataContBox" style="display: none;"></div>

							<!-- 附件列表 -->
							<div class="dataContBox" style="display: none;">
							
								<%-- <div align="center">
	                            <c:forEach items="${pawnAttachmentList}" var="pawnAttachment">
		  	                    <img src="${pawnAttachment.attachmentName}"  style="width:500px"/>
	                            </c:forEach>
                                </div> --%>
                                
                                <!--效果htmlmskeImgBg开始-->
								<div class="msKeimgBox">
									<ul>
										<c:forEach items="${pawnAttachmentList}" var="attach">
											     <li>
											     <img src="${attach.attachmentName}"/> <br />
												<span class="hidden" style="display: none;"> 
												<img class="bigImg" src="${attach.attachmentName}"/> </span>
												</li>
										</c:forEach>
									</ul>
								</div>
								<!--效果html结束-->
							</div>
						</div>
						<!-- End借款历史记录 -->
						<div class="clear"></div>
					</div>
				</div>
				
				
				<div class="listContRight" style="border:1px solid #ddd; margin-top:20px;">
					<h1 style="border-bottom: 1px solid #ddd; color: #444; font-size: 18px;text-indent: 20px;">资料审核状态</h1>
					<table cellpadding="0" cellspacing="0" class="dataContTable">
						<thead>
							<tr>
								<th style="width: 150px">审核名称</th>
								<th>状态</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>实名</td>
								<td><img src="resources/images/ok.png" /></td>
								<td></td>
							</tr>
							<tr>
								<td>手机认证</td>
								<td><img src="resources/images/ok.png" /></td>
								<td></td>
							</tr>
							<tr>
								<td>邮箱</td>
								<td><img src="resources/images/ok.png" /></td>
								<td></td>
							</tr>
							<tr>
								<td>营业执照</td>
								<td><img src="resources/images/ok.png" /></td>
								<td></td>
							</tr>
							<tr>
								<td>头像</td>
								<td><img src="resources/images/ok.png" /></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="clear"></div>
			</div>
			</c:if>

			<!--End 借款信息资料-->
		</div>
		<div class="c"></div>
<c:if test="${loanSignType8 ==8}">
<style>
.invertment{ width:1000px; height:auto; margin:0px auto; padding:40px 0px; margin:30px auto;}
.inver_itm{ width:333px; height:auto; float:left; text-align:center;}
.invertment .table_box{ width:1000px; color:#6e6e6e; width:960px; margin:0px auto;}
.invertment .title_head{ height:auto; line-height:60px; text-indent:20px; color:#6E6E6E;}
.invertment .title_head a{ float:right; padding-right:30px; display:inline; color:#00bc00;}
.invertment .title_head a:hover{ text-decoration:underline;}
.invertment .title_head span{    padding-right: 30px;font-size: 22px;color: #00BC00;}
.invertment .title_head samp{ color:#fb4646;}
.invertment .table_box .table_td{ height:97px; line-height:97px; border-bottom:1px solid #cecece; }
.invertment .table_box .list_one{ background:url(../images/ya.png) no-repeat left center; line-height:97px; text-indent:30px;}
.invertment .table_box .table_td p{ line-height:20px; text-align:center;}
.invertment .table_box .no_td_bor{ border-bottom:none;}
.table_box a{ width:96px; height:32px; display:block; text-align:center; line-height:32px; border-radius:5px;  margin:20px auto; color:#fff;}
.table_box .color_chang{background:#00bc00;}
</style>
	<div class="invertment" style="width:1000px; height:auto;padding:20px 0px;">
        <a href="#" class="inver_itm">
            <div class="inver_itm_left">
                <div class="inver_img"><img src="/resource/images/group-1@2x.png" width="90" height="90" alt=""/></div>
                <div class="inver_right">
                    <div class="inver_title">经营理念</div>
                    <div class="inter_text"><div>致力于搭建投资者最安全理财平台</div>致力于解决玉石行业融资难融资贵问题</div>
                </div>

            </div>
        </a>
        <a href="#" class="inver_itm">
            <div class="inver_itm_lcenter">
                <div class="inver_img"><img src="/resource/images/group-2@2x.png" width="90" height="90" alt=""/></div>
                <div class="inver_right">
                    <div class="inver_title">开创先河</div>
                    <div class="inter_text"> <div>玉石+互联网+金融</div>
						开创中国首家玉石行业互联网金融平台</div>
                </div>
                <div class="c"></div>
            </div>
        </a>
        <a href="#" class="inver_itm">
            <div class="inver_itm_right">
                <div class="inver_img"><img src="/resource/images/group-3@2x.png" width="90" height="90" alt=""/></div>
                <div class="inver_right">
                    <div class="inver_title">安全保障</div>
                    <div class="inter_text"><div>100%无条件先行垫付本息</div>
                        专做升值潜力大的精品玉石质押标</div>
                </div>
                <div class="c"></div>
            </div>
        </a>
        <div class="c"></div>
    </div>
			</c:if>	
	</div>
</div>

<!--图库弹出层 开始-->
	<div class="mskeLayBg"></div>
	<div class="mskelayBox">
		<div class="mske_html"></div>
		<img class="mskeClose" src="/resources/images/mke_close.png"
			width="27" height="27" />
	</div>
	<!--图库弹出层 结束-->
	<!--End Content-->
	<div class="clear"></div>

<!--------注册 End--------------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>
<script type="text/javascript" src="/resource/js/jquery/jquery.circliful.1.js"></script>
<script>

    $(document).ready(function () {
        $(".myStat").each(function () {
            $(this).circliful({
                dimension: 55,
                backgroundColor: "#eee"
            });
        });

    });
    
    

</script>

</body>
</html>
