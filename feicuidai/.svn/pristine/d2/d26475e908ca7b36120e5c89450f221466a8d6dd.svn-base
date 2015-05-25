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
<!doctype html>
<meta content="${application_keyword.keywords}" http-equiv="keywords"/>
<meta content="${application_keyword.description}" http-equiv="description"/>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>账户管理-用户信息</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    <script type="text/javascript" src="/resources/js/Validform_v5.3_min.js"></script>
    <script type="text/javascript" src="/resources/js/Validform_Datatype.js"></script>
    <link rel="stylesheet" type="text/css" href="/resources/css/vipcenter.css" />
    <script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
    <script type="text/javascript">
        function change(){
            if($("#subform").val() == "修改资料" ){
                jQuery("#subform").val("取消修改");
                jQuery("#myform_1").css('display','none');
                jQuery("#myform_2").css('display','block');
            }
            else{
                jQuery("#subform").val("修改资料");
                jQuery("#myform_2").css('display','none');
                jQuery("#myform_1").css('display','block');
            }
        }
    </script>
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
            <div class="title_alert tetle_alert_text">温馨提示：尊敬的用户请填写以下个人基本信息，提升信用等级也能更好的保护您账号的安全。
                <p>· 昵称可以是2-12位的中文或字母、数字、下划线的组合。</p>
                <p>· 昵称初始为空白的，您可以给自己修改一个更加个性化的昵称。</p>
                <p>· 出于对会员的负责，请您如实填写以下信息，我们将为您保密个人信息</p>
                <p>· 未通过安全认证的用户，建议先通过安全认证加强您的账户安全保障</p></div>

            <div class="tableSetBntBox" style="padding-right: 25px;text-align: right;width: auto;}">
                <input type="button" value="修改资料" id="subform" style="background-color: #00bc00;align-items: flex-end" onclick="change()"></div>
            <div class="main_form" style="margin: 0 auto;">
                <form id="myform_1" action="/accountManagement/userInfo/updateBasicInfo" method="post" style="display: block">

                    <table cellpadding="0" cellspacing="0" border="0" class="vipPwdManage" style="width:700px;">
                        <tbody>
                        <tr><th>用户名:</th><td colspan="2">${user.userName}</td>
                        </tr>
                        <tr><th>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:</th><td colspan="2">${empty user.nickName ? '<a class="color_64">未设置</a>':user.nickName}</td></tr>
                        <tr><th>真实姓名:</th><td  colspan="2">${empty user.realName ? '<a href="#" class="color_64">未设置</a>':user.realName}
                            <input type="hidden" name="realName" value="${user.realName}"></td></tr>
                        <tr><th>身份证号:</th><td  colspan="2"><c:if
                                test="${empty user.userRelationInfo.cardId || fn:length(user.userRelationInfo.cardId)<=0}"><a
                                href="/accountManagement/userInfo/identity">未设置</a></c:if>
                            <c:if test="${!empty user.userRelationInfo.cardId }"> ${fn:substring(user.userRelationInfo.cardId,0,4)}
                                <c:forEach begin="" end="${fn:length(fn:substring(user.userRelationInfo.cardId,4,18))-5}">*</c:forEach>
                                ${fn:substring(user.userRelationInfo.cardId,fn:length(user.userRelationInfo.cardId)-4,fn:length(user.userRelationInfo.cardId))}
                            </c:if>
                            <input type="hidden" name="cardId" value="${user.userRelationInfo.cardId}"></td></tr>
                        <tr><th>手机号码:</th><td colspan="2">${empty user.userRelationInfo.phone ? '<a href="#" class="color_64">未设置</a>':user.userRelationInfo.phone}
                            <input type="hidden" name="phone" value="${user.userRelationInfo.phone}"></td></tr>
                        <tr><th>邮箱地址:</th><td colspan="2">${empty user.userRelationInfo.email ? '<a href="#" class="color_64">未设置</a>':user.userRelationInfo.email}
                            <input type="hidden" name="email" value="${user.userRelationInfo.email}"></td></tr>
                        <tr><th>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</th><td colspan="2">
                            <c:if test="${empty user.userRelationInfo.sex }"><a class="color_64">未设置</a></c:if>
                            <c:if test="${user.userRelationInfo.sex eq '男'}">先生</c:if>
                                          <c:if test="${user.userRelationInfo.sex eq '女'}">女士</c:if></td></tr>

                        <tr><th>最高学历:</th><td colspan="2">
                            <c:if test="${empty user.userRelationInfo.qualifications }"><a class="color_64">未设置</a></c:if>
                            <c:if test="${user.userRelationInfo.qualifications eq '高中以上'}">高中以上</c:if>
                        <c:if test="${user.userRelationInfo.qualifications eq '大专或本科'}">大专或本科</c:if>
                        <c:if test="${user.userRelationInfo.qualifications eq '硕士或硕士以上'}">硕士或硕士以上</c:if></td></tr>
                        <tr><th>毕业院校:</th><td colspan="2">${empty user.userRelationInfo.institutions ? '<a class="color_64">未设置</a>':user.userRelationInfo.institutions}</td></tr>
                        <tr><th>婚姻状况:</th><td colspan="2">
                            <c:if test="${empty user.userRelationInfo.marriage }"><a class="color_64">未设置</a></c:if>
                                                              <c:if test="${user.userRelationInfo.marriage eq '已婚'}">已婚</c:if>
                                                              <c:if test="${user.userRelationInfo.marriage eq '未婚'}">未婚</c:if></td></tr>
                        <tr><th>居住地址:</th><td colspan="2">${empty user.userRelationInfo.newAddress ? '<a class="color_64">未设置</a>':user.userRelationInfo.newAddress}</td></tr>
                        <tr><th>公司行业:</th><td colspan="2">${empty user.userRelationInfo.industry ? '<a class="color_64">未设置</a>':user.userRelationInfo.industry}</td></tr>
                        <tr><th>公司规模:</th><td colspan="2">
                            <c:if test="${empty user.userRelationInfo.scale }"><a class="color_64">未设置</a></c:if>
                            <c:if test="${user.userRelationInfo.scale eq '50以下'}">50以下</c:if>
                            <c:if test="${user.userRelationInfo.scale eq '50-100人'}">50-100人</c:if>
                            <c:if test="${user.userRelationInfo.scale eq '100-500人'}">100-500人</c:if>
                            <c:if test="${user.userRelationInfo.scale eq '500-1000人'}">500-1000人</c:if>
                            <c:if test="${user.userRelationInfo.scale eq '1000人以上'}">1000人以上</c:if></td></tr>
                        <tr><th>公司职位:</th><td colspan="2">${empty user.userRelationInfo.post ? '<a class="color_64">未设置</a>':user.userRelationInfo.post}</td></tr>
                        <tr><th>月均收入:</th><td colspan="2">
                                                            <c:if test="${empty user.userRelationInfo.income }"><a class="color_64">未设置</a></c:if>
                                                                <c:if test="${user.userRelationInfo.income eq '5000以下'}">5000以下</c:if>
                                                              <c:if test="${user.userRelationInfo.income eq '5000-10000'}">5000-10000</c:if>
                                                              <c:if test="${user.userRelationInfo.income eq '10000-50000'}">10000-50000</c:if>
                                                              <c:if test="${user.userRelationInfo.income eq '50000以上'}">50000以上</c:if>
                        </tbody>
                    </table>
                </form>
                <form id="myform_2" action="/accountManagement/userInfo/updateBasicInfo" method="post" style="display: none">

                    <table cellpadding="0" cellspacing="0" border="0" class="vipPwdManage" style="width:700px;">
                        <tbody>
                        <tr><th>用户名:</th><td colspan="2">${user.userName}</td>
                        </tr>
                        <tr><th>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:</th><td colspan="2"><input id="nickName" name="nickName" value="${user.nickName}" type="text" class="vipTextBox"/></td></tr>
                        <tr><th>真实姓名:</th><td  colspan="2">${empty user.realName ? '<a href="#" class="color_64">未设置</a>':user.realName}
                            <input type="hidden" name="realName" value="${user.realName}"></td></tr>

                        <tr><th>身份证号:</th><td  colspan="2"><c:if
                                test="${empty user.userRelationInfo.cardId || fn:length(user.userRelationInfo.cardId)<=0}"><a
                                href="/accountManagement/userInfo/identity">未设置</a></c:if>
                            <c:if test="${!empty user.userRelationInfo.cardId }"> ${fn:substring(user.userRelationInfo.cardId,0,4)}
                                <c:forEach begin="" end="${fn:length(fn:substring(user.userRelationInfo.cardId,4,18))-5}">*</c:forEach>
                                ${fn:substring(user.userRelationInfo.cardId,fn:length(user.userRelationInfo.cardId)-4,fn:length(user.userRelationInfo.cardId))}
                            </c:if>
                            <input type="hidden" name="cardId" value="${user.userRelationInfo.cardId}"></td></tr>
                        <tr><th>手机号码:</th><td colspan="2">${empty user.userRelationInfo.phone ? '<a href="#" class="color_64">未设置</a>':user.userRelationInfo.phone}
                            <input type="hidden" name="phone" value="${user.userRelationInfo.phone}"></td></tr>
                        <tr><th>邮箱地址:</th><td colspan="2">${empty user.userRelationInfo.email ? '<a href="#" class="color_64">未设置</a>':user.userRelationInfo.email}
                            <input type="hidden" name="email" value="${user.userRelationInfo.email}"></td></tr>
                        <tr><th>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</th><td colspan="2"><label><input type="radio" name="sex"
                                                                                                    <c:if test="${user.userRelationInfo.sex eq '男'}">checked="checked"</c:if>
                                                                                                    value="男"> 先生</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" name="sex"
                                          <c:if test="${user.userRelationInfo.sex eq '女'}">checked="checked"</c:if>
                                          value="女"> 女士</label></td></tr>
                        <tr><th>最高学历:</th><td colspan="2"><label><input type="radio"
                                                                        <c:if test="${user.userRelationInfo.qualifications eq '高中以上'}">checked="checked"</c:if>
                                                                        value="高中以上" name="qualifications"> 高中以上</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio"
                                          <c:if test="${user.userRelationInfo.qualifications eq '大专或本科'}">checked="checked"</c:if>
                                          value="大专或本科" name="qualifications"> 大专或本科</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio"
                                          <c:if test="${user.userRelationInfo.qualifications eq '硕士或硕士以上'}">checked="checked"</c:if>
                                          value="硕士或硕士以上" name="qualifications"> 硕士或硕士以上</label></td></tr>
                        <tr><th>毕业院校:</th><td colspan="2"><input id="institutions" name="institutions" value="${user.userRelationInfo.institutions}" type="text" class="vipTextBox"/></td></tr>
                        <tr><th>婚姻状况:</th><td colspan="2"><label><input type="radio"
                                                                        <c:if test="${user.userRelationInfo.marriage eq '已婚'}">checked="checked"</c:if>
                                                                        value="已婚" name="marriage"> 已婚</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio"
                                          <c:if test="${user.userRelationInfo.marriage eq '未婚'}">checked="checked"</c:if>
                                          value="未婚" name="marriage"> 未婚</label></td></tr>
                        <tr><th>居住地址:</th><td colspan="2"><input id="newAddress" name="newAddress" value="${user.userRelationInfo.newAddress}" type="text" class="vipTextBox"/></td></tr>
                        <tr><th>公司行业:</th><td colspan="2"><input id="industry" name="industry" value="${user.userRelationInfo.industry }" type="text" class="vipTextBox"/></td></tr>

                        <tr><th>公司规模:</th><td colspan="2"><label><input type="radio"
                                                                        <c:if test="${user.userRelationInfo.scale eq '50以下'}">checked="checked"</c:if>
                                                                        name="scale" value="50以下"/>50以下</label>
                            <label><input type="radio"
                                          <c:if test="${user.userRelationInfo.scale eq '50-100人'}">checked="checked"</c:if>
                                          name="scale" value="50-100人"/>50-100人</label>
                            <label><input type="radio"
                                          <c:if test="${user.userRelationInfo.scale eq '100-500人'}">checked="checked"</c:if>
                                          name="scale"
                                          value="100-500人"/>100-500人</label>
                            <label><input type="radio"
                                          <c:if test="${user.userRelationInfo.scale eq '500-1000人'}">checked="checked"</c:if>
                                          name="scale"
                                          value="500-1000人"/>500-1000人</label>
                            <label><input type="radio"
                                          <c:if test="${user.userRelationInfo.scale eq '1000人以上'}">checked="checked"</c:if>
                                          name="scale" value="1000人以上"/>1000人以上</label>
                        </td></tr>
                        <tr><th>公司职位:</th><td colspan="2"><input id="post" name="post" value="${user.userRelationInfo.post }" type="text" class="vipTextBox"/></td></tr>

                        <tr><th>月均收入:</th><td colspan="2"><label style=><input type="radio"
                                                                               <c:if test="${user.userRelationInfo.income eq '5000以下'}">checked="checked"</c:if>
                                                                               name="income" value="5000以下"/>5000以下</label>
                            <label style=><input type="radio"
                                                 <c:if test="${user.userRelationInfo.income eq '5000-10000'}">checked="checked"</c:if>
                                                 name="income" value="5000-10000"/>5000-10000</label>
                            <label style=><input type="radio"
                                                 <c:if test="${user.userRelationInfo.income eq '10000-50000'}">checked="checked"</c:if>
                                                 name="income" value="10000-50000"/>10000-50000</label>
                            <label style=><input type="radio"
                                                 <c:if test="${user.userRelationInfo.income eq '50000以上'}">checked="checked"</c:if>
                                                 name="income" value="50000以上"/>50000以上</label></td></tr>
                        </tbody>
                    </table>
                    <div class="tableSetBntBox"><input type="submit" value="提交" id="submitForm" style="background-color: #00bc00"  /></div>
                </form>
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
