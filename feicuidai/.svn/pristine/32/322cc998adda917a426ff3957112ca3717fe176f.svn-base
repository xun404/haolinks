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
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/financial_management.css"/>

</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>
<!--------注册 Start--------------->
<div class="individual_center_all">
<div class="individual_center">
   <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
    <div class="right_box">
    <div class="title_table table_finanagement_box">
        <p>自动投标工具说明:</p>
        <p>1.用户设置并启用自动投标功能后立即生效。</p>
        <p>2.借款标发布前10分钟开始自动投标。如未投满，则在每天凌晨4：00按发标顺序再次执行自动投标。</p>
        <p>3.借款用户在获得借款时会自动关闭自动投标，以避免借款被用作自动投标资金。</p>
        <p>4.投资者在不需要执行“自动投标”功能时请切记关闭此功能，以免造成前期投标回款金额自动投出。</p>
        <br/>
        <p>投标排序规则如下:</p>
        <p>1.投标序列按照开启自动投标的时间先后进行排序。修改自动投标条件后，也按时间先后重新排序。</p>
        <p>2.每个用户每个标可自动投标多次，投标成功后，重新排序。</p>
        <p>3.当用户账户余额充足，轮到用户投标时没有符合用户条件的标，原地等待，不重新排序，直至成功投标。</p>
    </div>

    <div class="table_finanagement_form">
    	<form action="sfdf.html" method="post">
        <div class="title_list">自动投标设置:</div>
		<div class="finanagement_form_list">当前账户可用余额 <samp>￥0.00</samp> 元 </div>
        <div class="finanagement_form_list">1.自动投资金额</div>              
        <div class="finanagement_form_list">

            <label>
              <input type="radio" name="RadioGroup1" value="1" id="RadioGroup1_0">
              按账户可用余额投资</label>
        </div>
        <div class="finanagement_form_list">
            <label>
              <input type="radio" name="RadioGroup1" value="2" id="RadioGroup1_1">
              单笔最大金额
            </label>
            <input type="text" value="dsfd" class="input_radio_style"/> 元<samp> (请填写100的整数倍金额)</samp></br>
        </div> 
        <div class="finanagement_form_list">
            <label>
              <input type="radio" name="RadioGroup1" value="2" id="RadioGroup1_2">
              固定投资金额
            </label>
            <input type="text" value="dsfd" class="input_radio_style"/> 元<samp> (请填写100的整数倍金额)</samp></br>
        </div>     
        <div class="finanagement_form_list">
            <label>
              <input type="radio" name="RadioGroup1" value="2" id="RadioGroup1_2">
              账户保留余额
            </label>
            <input type="text" value="dsfd" class="input_radio_style"/> 元<samp></samp></br>
        </div>                      
        <div class="finanagement_form_list">2.借款利率 <input type="text" value="" class="input_loan"/> % 至 <input type="text" value="" class="input_loan"/> <samp> (请填写10~20的整数，不填为不限利率)</samp></div>           
		<div class="finanagement_form_list">3.借款期限 <input type="text" value="" class="input_loan"/> 天 至 <input type="text" value="" class="input_loan"/> 天 <samp> (请填写0~365的整数，0或不填为不限期限，30天为一个月)</samp></div>    
        <div class="finanagement_form_list">
            <label><input type="checkbox" name="CheckboxGroup1" value="1" id="CheckboxGroup1_01">  我已阅读并同意 《翡翠贷网站自动投标协议》</label>
		</div>  
        <div  class="finanagement_form_list">
            <input type="button" value="确认提交"  class="button_style"/>
        </div>
   
        </form>
    </div>
    
    <a href="#" class="start_toubiao">确认投标</a>
    <span class="curr_toubiao">当前状态：<samp>未启用</samp></span>
    
    
    </div>
    <div class="c"></div>

</div>

</div>
<!--------注册 End--------------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
