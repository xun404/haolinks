$(function(){
  //借款信息
	$(".dataInfoTab li span").click(function(){
				$(this).parent("li").siblings().find("span").removeClass("dataTabLink");
				$(this).addClass("dataTabLink");
				var $loanid = $("#loanid").val();
				var $pawnId = $("#pawnId").val();
				var $thisIndex=$(this).parent("li").index();
				if($thisIndex==0){
					$(".dataContBox:eq("+$thisIndex+")").siblings(".dataContBox").hide();
					$(".dataContBox:eq("+$thisIndex+")").show();
				}else if($thisIndex==1){
					$(".dataContBox:eq("+$thisIndex+")").siblings(".dataContBox").hide();
					$.ajax({
						type:'post',
						url:'loaninfo/loanRecord.htm',
						data:{id:$loanid,pageNo:1},
						success:function(msg){
							$(".dataContBox:eq("+$thisIndex+")").html(msg);
						}
					});
					$(".dataContBox:eq("+$thisIndex+")").show();
				}else if($thisIndex==2||$thisIndex==3){
					$(".dataContBox:eq("+$thisIndex+")").siblings(".dataContBox").hide();
					$(".dataContBox:eq("+$thisIndex+")").show();
				}
		});
	//购买借款标
	$("#suBnt_a").click(function(){
		var $logo = $("#logo").val();
		var $effective = $("#effective").val();
		var $investMoney = $("#investMoney").val();
		var $loanuserId=$("#loanuserId").val();
		var $userId=$("#userId").val();
		var $minmoney=$("#minmoney").val();
		var $accountBalance=$("#accountBalance").val();
		var $pcrettype=$("#pcrettype").val();
		var $issueLoan=$("#issueLoan").val();
		
		var $loanSignType8=$("#loanSignType8").val();
		var $experienceGold=$("#experienceGold").val();
		
		/*if($logo!="logo"){
			ymPrompt.errorInfo('您还未登录额!',400,200,'提示',function(){top.window.location="visitor/to-login";});
			return;
		}*/
		/*if($investMoney>$effective){
			ymPrompt.errorInfo('投资金额大于剩余可投资金额!',400,200,'提示',function(){});
			return;
		}*/
		
		if($investMoney.indexOf(".")>-1){
			ymPrompt.errorInfo('购标金额不能有小数!',400,200,'提示',function(){});
			return;
			}
		if($loanuserId==$userId){
			ymPrompt.errorInfo('您不能投自己的标!',400,200,'提示',function(){});
			return;
		}
		if(isNaN($investMoney)){
			ymPrompt.errorInfo('输入含非法字符!',400,200,'提示',function(){});
			return;
		}
		if($investMoney==""){
			ymPrompt.errorInfo('请输入购标金额!',400,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)%parseInt($minmoney)!=0){
			ymPrompt.errorInfo('输入金额必须为最小购买金额('+$minmoney+')的倍数!',400,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)>parseInt($effective)){
			ymPrompt.errorInfo('您的输入已超过了最大购买金额,请重新输入!',400,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)<parseInt($minmoney)){
			ymPrompt.errorInfo('您的输入不足于最小购买金额,请重新输入!',400,200,'提示',function(){});
			return;
		}
		/*if(parseInt($pcrettype)==2&&parseFloat($investMoney)==parseFloat($issueLoan)){
			ymPrompt.errorInfo('部分转让时，输入的金额应小于债权总额!',400,200,'提示',function(){});
			return;
		}*/
		
		//这里区分体验金和现金
		if($loanSignType8==8){
			if(parseInt($experienceGold)<parseInt($investMoney)){
				ymPrompt.errorInfo('您的体验金余额不足!',400,200,'提示',function(){});
				return;
			}
		}else{
			if(parseInt($accountBalance)<parseInt($investMoney)){
				ymPrompt.errorInfo('您的账户余额不足,请先充值!',400,200,'提示',function(){});
				return;
			}
		}
		
		if(!document.getElementById("checkAgree").checked){
			ymPrompt.errorInfo('请先同意使用条款!',400,200,'提示',function(){});
			return;
		}
		
		$("#form1").submit();
	});
	
	
	//购买借款标  ajax
	$("#invest_now").click(function(){
		
		var $logo = $("#logo").val();
		var $effective = $("#effective").val();
		var $investMoney = $("#investMoney").val();
		var $loanuserId=$("#loanuserId").val();
		var $userId=$("#userId").val();
		var $minmoney=$("#minmoney").val();
		var $accountBalance=$("#accountBalance").val();
		var $pcrettype=$("#pcrettype").val();
		var $issueLoan=$("#issueLoan").val();
		
		var $loanSignType8=$("#loanSignType8").val();
		var $experienceGold=$("#experienceGold").val();
		
		var $loanid = $("#loanid").val();
		var $repeatLoanMark = $("#repeatLoanMark").val();
		
		
		/*if($logo!="logo"){
			ymPrompt.errorInfo('您还未登录额!',400,200,'提示',function(){top.window.location="visitor/to-login";});
			return;
		}*/
		/*if($investMoney>$effective){
			ymPrompt.errorInfo('投资金额大于剩余可投资金额!',400,200,'提示',function(){});
			return;
		}*/
		
		if($investMoney.indexOf(".")>-1){
			ymPrompt.errorInfo('购标金额不能有小数!',400,200,'提示',function(){});
			return;
			}
		if($loanuserId==$userId){
			ymPrompt.errorInfo('您不能投自己的标!',400,200,'提示',function(){});
			return;
		}
		if(isNaN($investMoney)){
			ymPrompt.errorInfo('输入含非法字符!',400,200,'提示',function(){});
			return;
		}
		if($investMoney==""){
			ymPrompt.errorInfo('请输入购标金额!',400,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)%parseInt($minmoney)!=0){
			ymPrompt.errorInfo('输入金额必须为最小购买金额('+$minmoney+')的倍数!',400,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)>parseInt($effective)){
			ymPrompt.errorInfo('您的输入已超过了最大购买金额,请重新输入!',400,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)<parseInt($minmoney)){
			ymPrompt.errorInfo('您的输入不足于最小购买金额,请重新输入!',400,200,'提示',function(){});
			return;
		}
		/*if(parseInt($pcrettype)==2&&parseFloat($investMoney)==parseFloat($issueLoan)){
			ymPrompt.errorInfo('部分转让时，输入的金额应小于债权总额!',400,200,'提示',function(){});
			return;
		}*/
		
		//这里区分体验金和现金
		if($loanSignType8==8){
			if(parseInt($experienceGold)<parseInt($investMoney)){
				ymPrompt.errorInfo('您的体验金余额不足!',400,200,'提示',function(){});
				return;
			}
		}else{
			if(parseInt($accountBalance)<parseInt($investMoney)){
				ymPrompt.errorInfo('您的账户余额不足,请先充值!',400,200,'提示',function(){});
				return;
			}
		}
		/*
		if(!document.getElementById("checkAgree").checked){
			ymPrompt.errorInfo('请先同意使用条款!',400,200,'提示',function(){});
			return;
		}*/
		//异步表单提交
		$.ajax({
			type : 'post',
			url : '/plank/getLoaninfoAjax.htm',
			data:{
				id:$loanid,
				money:$investMoney,
				loanSignType8:$loanSignType8,
				repeatLoanMark:$repeatLoanMark
				},
			success:function(data){
					ymPrompt.succeedInfo(data.msg, 400,200, '成功', function(tp) {
						//if (tp == 'ok') {
							// 刷新投资页面
							location.reload();
								        // }
					})
					
			}
		});
		
		
	});
	
	
	
	
    // 电脑版 投资
	$("#invest_now_phone").click(function(){
		
		var $logo = $("#logo").val();
		var $effective = $("#effective").val();
		var $investMoney = $("#investMoney").val();
		var $loanuserId=$("#loanuserId").val();
		var $userId=$("#userId").val();
		var $minmoney=$("#minmoney").val();
		var $accountBalance=$("#accountBalance").val();
		var $pcrettype=$("#pcrettype").val();
		var $issueLoan=$("#issueLoan").val();
		
		var $loanSignType8=$("#loanSignType8").val();
		var $experienceGold=$("#experienceGold").val();
		
		var $loanid = $("#loanid").val();
		var $repeatLoanMark = $("#repeatLoanMark").val();
		
		
		/*if($logo!="logo"){
			ymPrompt.errorInfo('您还未登录额!',400,200,'提示',function(){top.window.location="visitor/to-login";});
			return;
		}*/
		/*if($investMoney>$effective){
			ymPrompt.errorInfo('投资金额大于剩余可投资金额!',400,200,'提示',function(){});
			return;
		}*/
		
		if($investMoney.indexOf(".")>-1){
			ymPrompt.errorInfo('购标金额不能有小数!',250,200,'提示',function(){});
			return;
			}
		if($loanuserId==$userId){
			ymPrompt.errorInfo('您不能投自己的标!',250,200,'提示',function(){});
			return;
		}
		if(isNaN($investMoney)){
			ymPrompt.errorInfo('输入含非法字符!',250,200,'提示',function(){});
			return;
		}
		if($investMoney==""){
			ymPrompt.errorInfo('请输入购标金额!',250,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)%parseInt($minmoney)!=0){
			ymPrompt.errorInfo('输入金额必须为最小购买金额('+$minmoney+')的倍数!',250,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)>parseInt($effective)){
			ymPrompt.errorInfo('您的输入已超过了最大购买金额,请重新输入!',250,200,'提示',function(){});
			return;
		}
		if(parseInt($investMoney)<parseInt($minmoney)){
			ymPrompt.errorInfo('您的输入不足于最小购买金额,请重新输入!',250,200,'提示',function(){});
			return;
		}
		/*if(parseInt($pcrettype)==2&&parseFloat($investMoney)==parseFloat($issueLoan)){
			ymPrompt.errorInfo('部分转让时，输入的金额应小于债权总额!',400,200,'提示',function(){});
			return;
		}*/
		
		//这里区分体验金和现金
		if($loanSignType8==8){
			if(parseInt($experienceGold)<parseInt($investMoney)){
				ymPrompt.errorInfo('您的体验金余额不足!',250,200,'提示',function(){});
				return;
			}
		}else{
			if(parseInt($accountBalance)<parseInt($investMoney)){
				ymPrompt.errorInfo('您的账户余额不足,请先充值!',250,200,'提示',function(){});
				return;
			}
		}
		/*
		if(!document.getElementById("checkAgree").checked){
			ymPrompt.errorInfo('请先同意使用条款!',400,200,'提示',function(){});
			return;
		}*/
		//异步表单提交
		$.ajax({
			type : 'post',
			url : '/plank/getLoaninfoAjax.htm',
			data:{
				id:$loanid,
				money:$investMoney,
				loanSignType8:$loanSignType8,
				repeatLoanMark:$repeatLoanMark
				},
			success:function(data){
					ymPrompt.succeedInfo(data.msg, 250,200, '成功', function(tp) {
						//if (tp == 'ok') {
							// 刷新投资页面
							location.reload();
								        // }
					})
					
			}
		});
		
		
	});
	
	
	
	
		
});






function jumpPage(pageno,totalPage){
	if(pageno<=0 || pageno>totalPage){
		return;
	}
	$.ajax({
		type:'post',
		url:'/member_index/system_message',
		data:'pageNum='+pageno,
		success:function(msg){
			top.window.location='/member_index/system_message?pageNum='+pageno;
		}
	});
}

//收藏借款标
function collect(){
	var $logo = $("#logo").val();
	var id=$("#loanid").val();
	if(!document.getElementById("checkAgree").checked){
		alert("请先同意使用条款！");
		return;
	}
	/*if($logo!="logo"){
		ymPrompt.errorInfo('您还未登录额!',400,200,'提示',function(){top.window.location="visitor/to-login";});
		return;
	}*/
	$.ajax({
		type:'post',
		url:'/collectlist/addCollect',
		data:'id='+id,
		success:function(msg){
			ymPrompt.errorInfo(msg,400,200,'提示');
		}
	});
}