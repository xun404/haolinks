<%@ page language="java" pageEncoding="utf-8"  import="com.feicuidai.p2p.entity.*"%>
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
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/financial_management.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/banner.css"/>
    
       <link rel="stylesheet" type="text/css"href="/resources/css/skin/simple_gray/ymPrompt.css"/>
       <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>

</head>
<body>


<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>
<!--------注册 Start--------------->
<div class="registr_all borrow">
<div class="title">首页 > 我要融资</div>

<div class="borrow_box">
    <div class="borrow_left"></div>
    <div class="borrow_right">
         <form action="#" method="post"  id="myform">
        <input type="hidden" id="type" name="type" value="${curType}"  />
		<input type="hidden" name="borrowersBase.id" id="borrowersBasesId" value="${borrower.id }" />
         
        <div class="input_box">
            <div class="content_input"><span>申请金额</span><input dataType="/^(([1-9]\d{0,9})|0)(\.\d{1,2})?$/" class="input_text_style"
											sucmsg=" " nullmsg="请填写申请金额"
											errormsg="数字，最大为999999999.99，小数点后至多两位" type="text"
											name="money" id="money" />&nbsp;元</div>
        </div>
        
        <div class="input_box">
            <div class="content_input"><span>年利率</span><input
											datatype="/^([1-9]\d?(\.\d{1,2})?|0.\d{1,2}|100)$/" class="input_text_style"
											sucmsg=" " nullmsg="请填写年利率" errormsg="0-100，小数点后至多两位"
											type="text" name="rate" id="rate"
											value="${loantype.minRate*100}" />%</div>
        </div>
        
        <div class="input_box">
            <div class="content_input"><span>标的类型：</span><select name="loanType" id="loanType" class="input_text_style"">
											<%-- --%>
												<option value="1">普通标</option>
												 <c:if test="${userName=='admin'|| userName == 'hzc'}">
												<option value="8">体验标</option>
												 </c:if>
												<%-- <option value="3">到期一次性还本息</option>--%>
										</select></div>
        </div>
       
        <div class="input_box">
        
        
            <div class="content_input"><span>借款期限：</span><select name="borrowMonth" id="borrowMonth" class="input_text_style">
												<c:forEach var="i" begin="${loantype.minMoney }"
													end="${loantype.maxMoney }" step="1">
													<option value="${i}">${i}个月</option>
												</c:forEach>
										</select></div>
        </div>
        
        <div class="input_box">
            <div class="content_input"><span>还款方式：</span><select name="refunWay" id="refunWay" class="input_text_style"">
											<%-- 
												<option value="1">按月等额本息</option>--%>
												<option value="2">按月付息到期还本</option>
												<%-- <option value="3">到期一次性还本息</option>--%>
										</select></div>
        </div>

        <%-- 
        <div class="input_box" style="height:auto; margin:0px auto;">
            <div class="content_input" style="height:auto;"><span>借款用途:</span>
                  <textarea datatype="/^(.|\n){5,}$/" sucmsg=" "
												nullmsg="请填写借款用途" errormsg="5个字符以上" name="behoof" id="behoof"
												style="width:320px;height:80px;margin-top:5px;padding:2px;"></textarea>
            </div>
        </div>
        --%>
        <div class="input_box">
            <div class="content_input"><span></span>
                <input type="button" value="提交借款申请" name="b" class="button_style"  onclick="submitForm()"/>
            </div>
        </div>
        
        </form>   
    
    
    </div>
    <div class="c"></div>
</div>

</div>

<div class="registr_main registr_borrow">


<div class="invertment">
	<a href="#" class="inver_itm">
	<div class="inver_itm_left">
    	<div class="inver_img"><img src="/resource/images/arrow_01.png" width="205" height="205" alt=""/></div>
        <div class="inver_right">
        	<div class="inver_title">门槛低</div>
            <div class="inter_text">月收入2000元即可申请</div>
        </div>
        
    </div>
    </a>
    <a href="#" class="inver_itm">
	<div class="inver_itm_lcenter">
    	<div class="inver_img"><img src="/resource/images/arrow_02.png" width="205" height="205" alt=""/></div>
        <div class="inver_right">
        	<div class="inver_title">额度大</div>
            <div class="inter_text">最高借款额度达50万元</div>
        </div>
        <div class="c"></div>
    </div>
    </a>
    <a href="#" class="inver_itm">
	<div class="inver_itm_right">
    	<div class="inver_img"><img src="/resource/images/arrow_03.png" width="205" height="205" alt=""/></div>
        <div class="inver_right">
        	<div class="inver_title">放款快</div>
            <div class="inter_text">3个工作日内即可审核完成</div>
        </div>
        <div class="c"></div>
    </div>
    </a>
    <a href="#" class="inver_itm">
	<div class="inver_itm_right">
    	<div class="inver_img"><img src="/resource/images/arrow_04.png" width="205" height="205" alt=""/></div>
        <div class="inver_right">
        	<div class="inver_title">费率低</div>
            <div class="inter_text">月综合费率低至0.55%</div>
        </div>
        <div class="c"></div>
    </div>
    </a>    
    
    <div class="c"></div>
</div>

</div>
<!--------注册 End--------------->

     

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>


<script>

function reset(){
			window.location.href='/loanManagement/myLoanController/myLoanApplyListUI?fatherMenu=5&sonMenu=2';
		}

function submitForm(){
       
       var type= $("#loanType").val();
       var money= $("#money").val();
       var borrowMonth= $("#borrowMonth").val();
       var refunWay= $("#refunWay").val();
       //var behoof= $("#behoof").val();
       var behoof= "";
       var rate = $("#rate").val();
       var borrowersBasesId= $("#borrowersBasesId").val();
       
       var re = /^[0-9]+.?[0-9]*$/;
       if(!re.test(money)||!re.test(rate)){
       ymPrompt.errorInfo('请输入数值!',400,200,'提示',function(){});
			return;
       }
       //判断投资金额
       if(money.indexOf(".")>-1){
			ymPrompt.errorInfo('购标金额不能有小数!',400,200,'提示',function(){});
			return;
			}
	  //申请额必须为100的整数倍
	  if(money % 100 != 0){
             ymPrompt.errorInfo('申请额必须为100的整数倍!',400,200,'提示',function(){});
            return;
            }
       //申请的利率必须大于1小于100
       if(rate<1 || rate > 100){
             ymPrompt.errorInfo('申请的利率有误!',400,200,'提示',function(){});
            return;
            }     

       $.ajax({
				type : 'post',
				url : '/borrow/submit-apply',
				data : {type:type,money:money,borrowMonth:borrowMonth,refunWay:refunWay,behoof:behoof,rate:rate,borrowersBasesId:borrowersBasesId},
				success : function(msg) {
					if(msg == "success"){	

						ymPrompt.succeedInfo('申请成功', 260, 160, '成功',reset);
						
					}else{
                        alert("申请失败｜"+msg);
                    }
					 
				}
				
			});

 }
	
	</script>

</body>
</html>
