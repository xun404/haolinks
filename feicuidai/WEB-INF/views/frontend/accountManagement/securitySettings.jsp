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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>账户管理-安全设置</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resource/js/ymPrompt.js"></script>
    <script type="text/javascript">
        if(${verification eq 1}){
            ymPrompt.alert("您尚未完善个人安全信息<br/>请完善个人安全信息。");}
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <div class="title_alert tetle_alert_text">温馨提示：<p>· 尊敬的翡翠贷会员，在绑定邮箱并通过验证之后，您可以提升您在翡翠贷的用户安全等级。</p>

                <p>· 在提现操作之前，必需完成身份认证等操作</p>

                <p>· 在绑定银行卡时，请您使用储蓄卡进行绑定，禁止使用信用卡绑定。</p></div>
            <div class="main_form">
                <table width="700" border="0" class="decurity_table">
                    <tbody>
                    <tr>
                        <td class="td_icon"><img src= ${!empty user.userRelationInfo.phone ? "/resource/images/secur_bg_2.png": "/resource/images/secur_bg_1a.png" } width="60" height="60" alt=""/>
                        </td>
                        <td class="td_text">
                            <div class="title">手机绑定</div>
                            <p>完成手机绑定，获取各项操作认证授权，需要核实您的投资身份</p></td>
                        <td class="sur_check"><img src="${!empty user.userRelationInfo.phone ? "/resource/images/sur_yes.png": "/resource/images/sur_no.png" }" width="30" height="29" alt=""/>
                        </td>
                        <td class="authentication red">${!empty user.userRelationInfo.phone ? "已认证": "<a href='#'>未认证</a>" }</td>
                    </tr>
                    <tr>
                        <td class="td_icon"><img src=${session_user.userRelationInfo.emailisPass==1 ? "/resource/images/secur_bg_1e.png": "/resource/images/secur_bg_1f.png" } width="60" height="60" alt=""/>
                        </td>
                        <td class="td_text">
                            <div class="title">邮箱认证</div>
                            <p>完成实名认证，获取各项操作认证授权，需要核实您的投资身份</p></td>
                        <td class="sur_check"><img src=${session_user.userRelationInfo.emailisPass==1 ? "/resource/images/sur_yes.png": "/resource/images/sur_no.png" } width="30" height="29" alt=""/>
                        </td>
                        <td class="authentication red">${session_user.userRelationInfo.emailisPass==1 ? "已认证": "<a href='/accountManagement/userInfo/setMail'>未认证</a>" }</td>
                    </tr>
                    <tr>
                        <td class="td_icon"><img src=${!empty user.realName ? "/resource/images/secur_bg_1.png": "/resource/images/secur_bg_1b.png" } width="60" height="60" alt=""/>
                        </td>
                        <td class="td_text">
                            <div class="title">实名认证</div>
                            <p>完成实名认证，获取各项操作认证授权，需要核实您的投资身份</p></td>
                        <td class="sur_check"><img src=${!empty user.realName ? "/resource/images/sur_yes.png": "/resource/images/sur_no.png" } width="30" height="29" alt=""/>
                        </td>
                        <td class="authentication  red">${!empty user.realName ? "已认证": "<a href='/accountManagement/userInfo/identity'>未认证</a>" }</td>
                    </tr>
                    <tr>
                        <td class="td_icon"><img src=${bool ? "/resource/images/secur_bg_1c.png": "/resource/images/secur_bg_3.png" } width="60" height="60" alt=""/>
                        </td>
                        <td class="td_text">
                            <div class="title">安全问题</div>
                            <p>完成安全问题设置，获取各项操作认证授权，需要核实您的投资身份</p></td>
                        <td class="sur_check"><img src=${bool ? "/resource/images/sur_yes.png": "/resource/images/sur_no.png" } width="30" height="29" alt=""/>
                        </td>
                        <td class="authentication red">${bool ? "已认证": "<a href='/accountManagement/userInfo/setSecurityProblem'>未认证</a>" }</td>
                    </tr>
                    </tbody>
                </table>

            </div>
        </div>
        <div class="c"></div>

    </div>

</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
