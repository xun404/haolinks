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
    <title>账户管理-银行卡信息</title>
    <script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link rel="stylesheet" type="text/css"
          href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(
                function () {
                    //当省改变的时候加载城市信息
                    jQuery("#province").change(
                            function () {
                                jQuery("#city").html("");
                                var provinceID = jQuery("#province").val();
                                fn_ajax("/member/getCityList", {
                                    provinceID: provinceID
                                }, function (data) {
                                    var json_obj = $.parseJSON(data);
                                    for (var i in json_obj) {
                                        jQuery("#city").append(
                                                '<option value=' + json_obj[i].id + '>'
                                                + json_obj[i].name
                                                + '</option>');
                                    }
                                });
                            });
                });
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
            <div class="title_alert tetle_alert_text">温馨提示：<p>· 带<samp> * </samp> 标记的为必填项，必须使用以本人为户名的银行卡进行绑定。</p>

                <p>· 同一银行卡号连续出现三次绑定失败，该卡不能再进行绑定，需更换银行卡进行绑定。</p>

                <p>· 请您使用储蓄卡进行绑定，禁止使用信用卡绑定。</p></div>
            <div class="main_form">
                <form action="#" id="userBankForm" method="post">
                    <!-- <div class="input_box">
                         <div class="content_input"><span><samp>*</samp>开户姓名</span><input type="text"
                                                                                          placeholder="请输入银行账号开户人姓名"
                                                                                          class="input_text_style"/>
                         </div>
                     </div>

                     <div class="input_box">
                         <div class="content_input"><span><samp>*</samp>身份证号</span><input type="text"
                                                                                          placeholder="请输入开户人身份证号码"
                                                                                          class="input_text_style"/>
                         </div>
                     </div>-->
                    <input type="hidden" id="userBankId" value="${userBank.id}"/>

                    <div class="input_box">
                        <div class="content_input"><span><samp>*</samp>开户银行</span>
                            <select id="bankType" class="input_text_style">
                                <option value="">请选择开户银行</option>
                                <c:forEach items="${bankType }" var="bt">
                                    <c:if test="${bt.name eq userBank.bankType.name}">
                                        <option selected="selected" value="${bt.id }">${bt.name }</option>
                                    </c:if>
                                    <c:if test="${bt.name ne userBank.bankType.name}">
                                        <option value="${bt.id }">${bt.name }</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span><samp>*</samp>银行网点</span>
                            <select id="province">
                                <option value="">请选择省份</option>
                                <c:forEach items="${provinces }" var="p">
                                    <c:if test="${p.name eq userBank.province}">
                                        <option selected="selected" value="${p.id}">${p.name}</option>
                                    </c:if>
                                    <c:if test="${p.name ne userBank.province}">
                                        <option value="${p.id}">${p.name}</option>
                                    </c:if>
                                </c:forEach>
                            </select> <select id="city">
                                <option
                                        value="">请选择城市
                                </option>
                                <c:forEach items="${citys }" var="c">
                                    <%--<c:if test="${c.name eq userBank.city}">--%>
                                    <%--<option  selected ="selected" value="${c.id}">${c.name}</option>--%>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${c.name ne userBank.city}">--%>
                                    <option value="${c.id}">${c.name}</option>
                                    <%--</c:if>--%>
                                </c:forEach>
                                <c:if test="${!empty userBank.city}">
                                    <option  selected ="selected">${userBank.city}</option>
                                </c:if>
                            </select>
                        </div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span><samp>&nbsp;</samp>支行名称</span><input type="text"
                                                                                              id="bankName"
                                                                                              value="${userBank.bankName}"
                                                                                              placeholder="请输入你的支行名称"
                                                                                              class="input_text_style"/>
                        </div>
                        <div class="text">请输入您的银行支行</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span><samp>&nbsp;</samp>银行账号</span><input type="text"
                                                                                              id="bankAccount"
                                                                                              value="${userBank.bankAccount}"
                                                                                              placeholder="请输入你的银行账号"
                                                                                              class="input_text_style"/>
                        </div>
                        <div class="text">请谨慎填写您的银行卡号</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span></span>
                            <input type="button" onclick="${empty userBank.id ? 'javascript:bindBankCard()' :'javascript:updateBankCard()'};" value="确认提交" name="b"
                                   class="pop_button  button_style" id="Pop_button_1"/>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <div class="c"></div>

    </div>

</div>
<!--------注册 End--------------->

<!--------公告、咨询  END---------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>
</body>
</html>
