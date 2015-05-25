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
 <div class="title_table">
    <table width="100%" border="0" class="title_table_box financial_table_box" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td colspan="2" class="title_td title_td_zhuanrang">债权转让盈亏<span class="title_td title_td_right"><samp> ¥0.00</samp>元</span></td>
          <td class="title_td title_td_left" style=" width:153px;">成功转入金额<span class="title_td title_td_right"><samp>¥0.00</samp>元</span></td>
          <td class="title_td title_td_left">成功转入金额<span class="title_td title_td_right"><samp>¥0.00</samp>元</span></td>
          </tr>
        <tr>
          <td class="title_td title_td_left">转出中的份额 </td>
          <td class="title_td title_td_right"  style="border-right:1px solid #ddd; width:100px;"><samp>0</samp>份</td>
          <td class="title_td title_td_left">债权转入盈亏<span class="title_td title_td_right"><samp>¥0.00</samp>元</span></td>
          <td class="title_td title_td_right"><span class="title_td title_td_left">债权转出盈亏<samp>¥0.00</samp>元</span></td>
        </tr>
        <tr>
          <td class="title_td title_td_left">转出中的数量 </td>
          <td class="title_td title_td_right" style="border-right:1px solid #ddd;"><samp>0</samp>个</td>
          <td class="title_td title_td_left">债权转入盈亏<span class="title_td title_td_right"><samp>0</samp></span></td>
          <td class="title_td title_td_right"><span class="title_td title_td_left">已转出债权数量<samp>¥0.00</samp>份</span></td>
        </tr>        
      </tbody>
    </table>
    </div>
    <div class="product_finanaial">
    <ul>
        <li id="Tab_switch_view_1" class="tab_switch_view">可转让</li>
        <li id="Tab_switch_view_2" class="tab_switch_view">转让中</li>
        <li id="Tab_switch_view_3" class="tab_checked">申请中</li>
        <li id="Tab_switch_view_4" class="tab_switch_view">已完成</li>
        <div class="c"></div>
    </ul>
    </div>    
    <div class="content_switch_view content_table_box">
        <table width="100%" border="0" class="table_box" cellpadding="0" cellspacing="0" >
          <tbody id="tbody">
            <tr>
              <th>借款标题</th>
              <th>借款期限</th>
              <th>剩余期限</th>
              <th>投标金额</th>
              <th>利率</th>
              <th>剩余本金</th>
              <th>剩余利息</th>
              <th>本息总额</th>
              <th>操作</th>
            </tr>
 
            <c:forEach items="${assigrnmentDebtList_2}" var="assigrnmentDebt">
            <tr>
              <td>${assigrnmentDebt[0]}</td>
              <td>${assigrnmentDebt[1]}</td>
              <td>${assigrnmentDebt[2]}</td>
              <td>${assigrnmentDebt[3]}</td>
              <td>${assigrnmentDebt[4]}</td>
              <td>${assigrnmentDebt[5]}</td>
              <td>
              <fmt:formatNumber pattern="00.00" value="${assigrnmentDebt[6]}"></fmt:formatNumber>
              </td>
              <td>
              <fmt:formatNumber pattern="00.00" value="${assigrnmentDebt[6]+assigrnmentDebt[5]}"></fmt:formatNumber>
              </td>
              <td>转让</td>
            </tr>
           </c:forEach>                 
          </tbody>
        </table>
        <form action="assignmentDebtListGoOn" id="form">
        <input type="hidden" id="pageNum" name="pageNum"/>
        </form>
    </div>
    <div>
    <jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
    </div>
     <div class="title_table table_finanagement_box bg_no">
        <p>债权转让说明：</p>
        <p>1、提前还款违约金金额为剩余未支付利息的50%；</p>
        <p>2、提前还款违约金由投资者所得；</p>
        <p>3、15点整之前申请提前还款将会在当日16点进行还款，15点整之后申请提前还款将会于次日16点进行还款;</p>
        <p>4、借款标如有逾期，提前还款包含逾期金额及余下未到期的还款总额；</p>
        <p>5、如果您并不是想要把未到期的还款提前，而是想要把有逾期借款还上，则您不需要进行提前还款操作；</p>
    </div> 
  
    </div>
    <div class="c"></div>
</div>
</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>
<script type="text/javascript">
$(function(){
$(".tab_switch_view").click(function(){
		var this_id=$(this).attr("id");
		/*下面通过一部获取数据*/
		//1  可转让
		if(this_id=="Tab_switch_view_1"){
		location.href="/financeManagement/assignmentDebtController/assignmentDebtListUI";
		}
		//2 转让中
		if(this_id=="Tab_switch_view_2"){
		 location.href="/financeManagement/assignmentDebtController/assignmentDebtListGoOn";
		}
		//3申请中
		if(this_id=="Tab_switch_view_3"){
		 location.href="/financeManagement/assignmentDebtController/assignmentDebtListApply";
		}
		//4已完成
		if(this_id=="Tab_switch_view_4"){
		 location.href="/financeManagement/assignmentDebtController/assignmentDebtListFinish";
		}
		
		});
		
});
//这里的分页也应该一部获取数据
function jumpPage(pageNum,totalPage){
$("#pageNum").val(pageNum);
$("#form").submit();
}
</script>
</body>
</html>
