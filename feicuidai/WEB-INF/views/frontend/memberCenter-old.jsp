<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/my_account.css"/>
    <link rel="stylesheet" type="text/css" href="/resource/css/vipcenter.css"/>
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
            <div class="user_box">
                <div class="peo_box"><c:if test="${empty user.userRelationInfo.imgUrl}">
                    <img width="107" height="107" src="/resources/images/img/user.gif"/>
                </c:if>
                    <c:if test="${!empty user.userRelationInfo.imgUrl}">
                        <img width="107" height="107" src="${user.userRelationInfo.imgUrl}"
                             alt="${session_user.userName }"
                             title="${session_user.userName }"/>
                    </c:if> <a
                            href="/accountManagement/userInfo/head">[修改头像]</a></div>
                <div class="center_box">
                    <div class="username">您好，${session_user.userName}！
                        <%--<span><img--%>
                            <%--src="/resource/images/list_news.png" width="15" height="14"--%>
                            <%--alt=""/> 消息：<a href="/visitorManagement/memberCenter/system_message"--%>
                                           <%--style="color:#fb4646;">（${messagecount}）</a></span>--%>
                    </div>
                    <p>上次登录 : 地点${loginLog.address }/时间${fn:substring(loginLog.loginTime,0,10) }</p>
                    <a href="<%=basePath %>accountManagement/userInfo/securitySettings?fatherMenu=2&sonMenu=3"
                            <c:if test="${!empty user.userRelationInfo.cardId }"> title="身份证已填写" class="user_a user_a_01s"</c:if>
                       <c:if test="${empty user.userRelationInfo.cardId || fn:length(user.userRelationInfo.cardId)<=0}">title="身份证未填写"
                       class="user_a user_a_01"</c:if>
                            ></a>
                    <a href="<%=basePath %>accountManagement/userInfo/securitySettings?fatherMenu=2&sonMenu=3"
                       <c:if test="${!empty user.userRelationInfo.phone }">title="手机已认证"
                       class="user_a user_a_02s"</c:if>
                       <c:if test="${empty user.userRelationInfo.phone || fn:length(user.userRelationInfo.phone)<=0}">title="手机未认证"
                       class="user_a user_a_02"</c:if>
                            ></a>
                    <a href="<%=basePath %>accountManagement/userInfo/securitySettings?fatherMenu=2&sonMenu=3"
                       <c:if test="${session_user.userRelationInfo.emailisPass==1 }">title="邮箱已认证"
                       class="user_a user_a_03s"</c:if>
                       <c:if test="${session_user.userRelationInfo.emailisPass!=1 }">title="邮箱未认证"
                       class="user_a user_a_03"</c:if>
                            ></a>
                    <a href="<%=basePath %>accountManagement/userInfo/securitySettings?fatherMenu=2&sonMenu=3"
                       <c:if test="${bool }">title="安全问题已设置" class="user_a user_a_04s"</c:if>
                       <c:if test="${!bool }">title="安全问题未设置" class="user_a user_a_04"</c:if>
                            ></a>
                </div>
                <div class="total_assets">
                    <div class="total_assrts_content">
                        <div class="total_title">可用余额：￥
                        <%-- 
                        <fmt:formatNumber value="${user.userFundInfo.cashBalance+user.userFundInfo.frozenAmtN}" pattern="0.00"/></div>
                        --%>
                         <fmt:formatNumber value="${empty user.userFundInfo.cashBalance ? '0.00':user.userFundInfo.cashBalance}" pattern="0.00"/></div>
                        <div class="total_button">
                            <a href="/fundManagement/recharge/openRecharge?fatherMenu=3&sonMenu=1" class="recharge">充值</a>
                            <a href="/fundManagement/withdraw/openWithdraw?fatherMenu=3&sonMenu=2" class="withdrawals">提现</a>

                            <div class="c"></div>
                        </div>
                    </div>
                </div>
                <div class="c"></div>
                <div class="keyong_cash">
                    <span>资产总额：<samp>¥
                    <%-- 
                    <fmt:formatNumber value="${empty user.userFundInfo.cashBalance ? '0.00':user.userFundInfo.cashBalance}"pattern="0.00"/>
                     --%>   
                     <fmt:formatNumber value="${user.userFundInfo.cashBalance+user.userFundInfo.frozenAmtN}" pattern="0.00"/>    
                            </samp></span>
                    <span>冻结金额：<samp>¥<fmt:formatNumber
                            value="${empty user.userFundInfo.frozenAmtN ? '0.00':user.userFundInfo.frozenAmtN}"
                            pattern="0.00"/></samp></span>
                     <span>体验金余额：<samp>¥<fmt:formatNumber
                            value="${empty user.userFundInfo.experienceGold ? '0.00':user.userFundInfo.experienceGold}"
                            pattern="0.00"/></samp></span>
                    <span>总收益：<samp>¥<fmt:formatNumber value="${empty (experienceIncome+generalIncome+dueExperienceRepay+dueGeneralRepay-manageMoneyHas-manageMoneyWill)? '0.00' : (experienceIncome+generalIncome+dueExperienceRepay+dueGeneralRepay-manageMoneyHas-manageMoneyWill)}" pattern="0.00"/></samp></span>
                </div>
                <div class="account_table_box">
                    <div class="account_title">基本信息</div>
                    <div class="account_table">
                        <table width="100%" border="0">
                            <tbody>
                            <tr>
                                <td class="account_td color_64">真实姓名：</td>
                                <td class="account_center_td"><c:if
                                        test="${empty session_user.realName || fn:length(session_user.realName)<=0}"><a
                                        href="/accountManagement/userInfo/identity" style="color:#fb4646;">设置</a></c:if>
                                    <c:if test="${!empty session_user.realName }"> ${session_user.realName }</c:if></td>
                                <td class="account_right_td"></td>
                            </tr>
                            <tr>
                                <td class="account_td color_64">身份证号码：</td>
                                <td class="account_center_td"><c:if
                                        test="${empty user.userRelationInfo.cardId || fn:length(user.userRelationInfo.cardId)<=0}"><a
                                        href="/accountManagement/userInfo/identity" style="color:#fb4646;">设置</a></c:if>
                                    <c:if test="${!empty user.userRelationInfo.cardId }"> ${fn:substring(user.userRelationInfo.cardId,0,4)}
                                        <c:forEach begin="" end="${fn:length(fn:substring(user.userRelationInfo.cardId,4,18))-5}">*</c:forEach>
                                        ${fn:substring(user.userRelationInfo.cardId,fn:length(user.userRelationInfo.cardId)-4,fn:length(user.userRelationInfo.cardId))}
                                    </c:if>
                                </td>
                                <td class="account_right_td"></td>
                            </tr>
                            <tr>
                                <td class="account_td color_64">手机号码：</td>
                                <td class="account_center_td"><c:if
                                        test="${empty user.userRelationInfo.phone || fn:length(user.userRelationInfo.phone)<=0}"><a
                                        href="#" style="color:#fb4646;">设置</a></c:if>
                                    <c:if test="${!empty user.userRelationInfo.phone }"> ${user.userRelationInfo.phone }
                                        <a href="/accountManagement/userInfo/updatePhone">[修改并验证]</a></c:if></td>
                                <td class="account_right_td"></td>
                            </tr>
                            <tr>
                                <td class="account_td color_64">电子邮箱：</td>
                                <td class="account_center_td"><c:if
                                        test="${session_user.userRelationInfo.emailisPass!=1  || fn:length(session_user.userRelationInfo.email)<=0}"><a
                                        href="/accountManagement/userInfo/setMail" style="color:#fb4646;">设置</a></c:if>
                                    <c:if test="${session_user.userRelationInfo.emailisPass==1 }"> ${session_user.userRelationInfo.email }
                                        <a href="/accountManagement/userInfo/updateMail">[修改并验证]</a></c:if></td>
                                <td class="account_right_td"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="account_table_box">
                    <div class="account_title">收支情况</div>
                    <div class="account_table">

                        <table width="100%" border="0">
                            <tbody>
                            <tr>
                                <td colspan="4" class="account_right_td color_6464">待收总额 = 待收本金 + 待收利息+待收体验金利息-待扣投资管理费</td>
                            </tr>
                            <tr>
                                <td class="account_td color_64" >待收总额：</td>
                                <td class="account_center_td" >￥<fmt:formatNumber value="${empty (dueGeneralRepay+dueExperienceRepay+toMoney-manageMoneyWill)?'0.00':(dueGeneralRepay+dueExperienceRepay+toMoney-manageMoneyWill)}" pattern="0.00"/></td>
                                <td class="account_td color_64" >待收本金：</td>
                                <td class="account_center_td">￥<fmt:formatNumber value="${empty toMoney?'0.00':toMoney}" pattern="0.00"/></td>
                            </tr>
                            <tr>
                                <td class="account_td color_64" >待收利息：</td>
                                <td class="account_center_td" >￥<fmt:formatNumber value="${empty dueGeneralRepay ?'0.00':dueGeneralRepay}" pattern="0.00"/></td>
                                <td class="account_td color_64" style="width:150px;" >待收体验金利息：</td>
                                <td class="account_center_td">￥<fmt:formatNumber value="${empty dueExperienceRepay ?'0.00':dueExperienceRepay}" pattern="0.00"/></td>
                            </tr>
                            <tr>
                                <td class="account_td color_64" >已赚利息：</td>
                                <td class="account_center_td" >￥<fmt:formatNumber value="${empty generalIncome ?'0.00':generalIncome}" pattern="0.00"/></td>
                                <td class="account_td color_64" >已赚体验利息：</td>
                                <td class="account_center_td">￥<fmt:formatNumber value="${empty experienceIncome ?'0.00':experienceIncome}" pattern="0.00"/></td>
                            </tr>
                             <tr>
                                <td class="account_td color_64" style="width: 170px">已扣投资管理费：</td>
                                <td class="last_td" >￥<fmt:formatNumber value="${empty manageMoneyHas ?'0.00':manageMoneyHas}" pattern="0.00"/></td>
                                <td class="account_td color_64" style="width: 170px">待扣投资管理费：</td>
                                <td class="last_td">￥<fmt:formatNumber value="${empty manageMoneyWill ?'0.00':manageMoneyWill}" pattern="0.00"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="account_table_box">
                    <div class="account_title">投资记录</div>
                    <div class="account_table">

                        <table width="100%" border="0">
                            <tbody>
                            <tr>
                                <td class="account_td color_64" >投资总额：</td>
                                <td class="account_center_td" >￥<fmt:formatNumber value="${ empty (harvestedLoan+lentBid+recoveryLoan) ? '0.00':(harvestedLoan+lentBid+recoveryLoan)}" pattern="0.00"/></td>
                                <td class="account_td color_64" style="width:120px;">已完成投资：</td>
                                <td class="account_center_td">￥<fmt:formatNumber value="${ empty harvestedLoan ? '0.00':harvestedLoan}" pattern="0.00"/></td>
                               
                            </tr>
                            <tr>
                                <td class="account_td color_64" style="width:120px;" >竞标中投资：</td>
                                <td class="account_center_td" >￥<fmt:formatNumber value="${ empty lentBid ? '0.00':lentBid}" pattern="0.00"/></td>
                                <td class="account_td color_64">回收中投资：</td>
                                <td class="account_center_td">￥<fmt:formatNumber value="${ empty recoveryLoan ? '0.00':recoveryLoan}" pattern="0.00"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="account_table_box">
                    <div class="account_title">提现记录</div>
                    <div class="account_table">

                        <table width="100%" border="0">
                            <tbody>
                            <tr>
                                <td class="account_td color_64" >提现总额：</td>
                                <td class="account_center_td" >￥<fmt:formatNumber value="${ empty withDrawMoney ? '0.00':withDrawMoney}" pattern="0.00"/></td>
                                <td class="account_td color_64" style="width:120px;">提现总笔数：</td>
                                <td class="account_center_td"><fmt:formatNumber value="${withDrawCount}" pattern="0"/></td>
                               
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                
            </div>
        </div>
        <div class="c"></div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
