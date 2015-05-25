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
    <title>资金管理-忘记密码—资金统计</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>

</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <div class="financial_box tetle_alert_text">
                <div class="financial_title financial_01"><span>可用金额：</span><samp>¥ 0.00</samp></div>
                <div class="financial_title financial_02"><span>冻结金额：</span><samp>¥ 0.00</samp></div>
                <div class="financial_title financial_03"><span>代收金额：</span><samp>¥ 0.00</samp></div>
                <div class="financial_title financial_04"><span>累积收益：</span><samp>¥ 0.00</samp></div>

            </div>

            <div class="product_finanaial password_management">
                <ul>
                    <li id="Tab_switch_view_1" class="tab_switch_view">修改登陆密码</li>
                    <li id="Tab_switch_view_2" class="tab_switch_view">修改交易密码</li>
                    <div class="c"></div>
                </ul>

                <div class="content_switch_view form_password" id="Content_switch_view_1">
                    <table width="700" border="0">
                        <tbody>
                        <tr>
                            <td class="password_td">居间服务费：</td>
                            <td class="password_td color_64">¥0.00</td>
                            <td class="password_td">投资冻结：</td>
                            <td class="password_td color_64">¥0.00</td>
                            <td class="password_td">还款冻结：</td>
                            <td class="password_td color_64">¥0.00</td>
                        </tr>
                        <tr>
                            <td class="password_td">提 现 冻 结：</td>
                            <td class="password_td color_64">¥0.00</td>
                            <td class="password_td">放款冻结：</td>
                            <td class="password_td color_64">¥0.00</td>
                            <td class="password_td">其他冻结：</td>
                            <td class="password_td color_64">¥0.00</td>
                        </tr>
                        </tbody>
                    </table>
                </div>


                <div class="content_switch_view form_password" id="Content_switch_view_2">
                    <table width="700" border="0">
                        <tbody>
                        <tr>
                            <td class="password_td">居间服务费：</td>
                            <td class="password_td color_64">¥0.02</td>
                            <td class="password_td"> 投资冻结：</td>
                            <td class="password_td color_64">¥0.10</td>
                            <td class="password_td">还款冻结：</td>
                            <td class="password_td color_64">¥0.50</td>
                        </tr>
                        <tr>
                            <td class="password_td">提 现 冻 结：</td>
                            <td class="password_td color_64">¥0.40</td>
                            <td class="password_td">放款冻结：</td>
                            <td class="password_td color_64">¥0.70</td>
                            <td class="password_td">其他冻结：</td>
                            <td class="password_td color_64">¥0.80</td>
                        </tr>
                        </tbody>
                    </table>
                </div>


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
