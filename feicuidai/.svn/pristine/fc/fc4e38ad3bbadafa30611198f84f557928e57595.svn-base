<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link rel="stylesheet" type="text/css" href="/resources/css/vipcenter.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/Validform.css"/>
    <jsp:include page="/WEB-INF/views/visitor/common_2.jsp"></jsp:include>
    <script type="text/javascript" src="/resources/js/Validform_v5.3_min.js"></script>
    <script type="text/javascript" src="/resources/js/Validform_Datatype.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.form.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">

            <div class="display" style="width:727px;margin:0px auto;">
                <!--vipContBox-->
                <div class="vipContBox">
                    <div class="vipContTitleBox">
                        <h1 class="vipContTitle"><span><img
                                src="<%=basePath %>resources/images/vipseversicon.png"/></span>您可以通过经常性修改登录密码，更好的保护您的账号安全，以避免您受到意外损失。
                        </h1>

                        <p>1、经常性修改登录密码能有效的保护您的帐号安全</p>

                        <p>2、涉及到您的账户安全，请勿设置简单的登录密码，不要设置和其它网站相同的登录密码</p>
                    </div>
                    <form action="/accountManagement/userInfo/update_pwd_1" method="post" id="myform">
                        <table cellpadding="0" cellspacing="0" border="0" class="vipPwdManage" style="width:700px;">
                            <tbody>
                            <tr>
                                <th>用户名:</th>
                                <td>${user.userName}</td>
                                <input type="hidden" id="myMark" name="myMark" value="1"/>
                                <%--<td>--%>
                                <%--<input type="radio" name="myMark" id="myMark_1"  <c:if test="${myMark==null||myMark==1 }">checked="checked"</c:if>      value="1">登录密码&nbsp;--%>
                                <%--<input type="radio" name="myMark"  id="myMark_1" <c:if test="${myMark==2}">checked="checked"</c:if> value="2">交易密码&nbsp;--%>
                                <%--</td>--%>
                            </tr>
                            <tr>
                                <th>请输入原密码:</th>
                                <td colspan="2"><input id="oldPwd" name="oldPwd" datatype="*6-20" sucmsg=" "
                                                       nullmsg="请输入密码" errormsg="长度6-20位 " type="password"
                                                       class="vipTextBox"/><font>（请输入您的原密码）</font></td>
                            </tr>
                            <tr>
                                <th>请输入新密码:</th>
                                <td colspan="2"><input id="newPwd" name="pwd" datatype="*6-20" sucmsg=" "
                                                       nullmsg="请输入密码" errormsg="长度6-20位 " type="password"
                                                       class="vipTextBox"/><font>（请输入您的新密码，并牢记新密码）</font></td>
                            </tr>
                            <tr>
                                <th>请确认新密码:</th>
                                <td colspan="2"><input id="newPwd_1" recheck="pwd" datatype="*6-20" sucmsg=" "
                                                       nullmsg="请再次输入密码" errormsg="密码输入不一致" type="password"
                                                       class="vipTextBox"/><font>（请再次输入新密码）</font></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="tableSetBntBox"><input type="button" value="提交密码" id="submitForm"
                                                           style="background-color: #00bc00"/> <input type="reset"
                                                                                                      value="取消"
                                                                                                      style="background-color: #00bc00"/>
                        </div>
                    </form>
                </div>
                <!--End vipContBox-->
            </div>
        </div>
        <div class="c"></div>
    </div>
</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>


<script type="text/javascript">

    function reset() {
        window.location.reload();
    }

    $("#submitForm").click(function () {
        var myMark = $("input[name='myMark']").val();
        var ajax_url = "/accountManagement/userInfo/update_pwd_1"; //表单目标
        var ajax_type = $(this).attr('method'); //提交方法
        var ajax_data = $(this).serialize(); //表单数据
        var pswVal=$("input[name='pwd']").val();
        if (!(/^.*?[\d]+.*$/
                        .test(pswVal)
                && /^.*?[A-Za-z].*$/
                        .test(pswVal) && /^.{6,16}$/
                        .test(pswVal))) {
            ymPrompt.succeedInfo('密码必须是数字与字母组合!', 260, 160, '成功', reset);
        } else {
            $.ajax({
                type: ajax_type, //表单提交类型
                url: ajax_url, //表单提交目标
                data: "oldPwd=" + $("#oldPwd").val() + "&pwd=" + $("#newPwd").val() + "&pwd_1=" + $("#newPwd_1").val() + "&myMark=" + myMark, //表单数据
                success: function (msg) {
                    if (msg == 'true_1') {//msg 是后台调用action时，你穿过来的参数
                        ymPrompt.succeedInfo('登录密码修改成功!', 260, 160, '成功', reset);
                        $("myMark_1").attr("checked", "checked");
                    } else if (msg == 'true_2') {
                        ymPrompt.succeedInfo('交易密码修改成功!', 260, 160, '成功', reset);
                        $("myMark_2").attr("checked", "checked");
                    } else if (msg == 'different') {
                        ymPrompt.errorInfo('原密码错误!', 260, 160, '失败', null);
                    } else if (msg == 'different_1') {
                        ymPrompt.errorInfo('两次输入的新密码不相同!', 260, 160, '失败', null);
                    } else {
                        ymPrompt.errorInfo('密码修改失败!', 260, 160, '失败', null);
                    }
                }
            });
            return false; //阻止表单的默认提交事件
        }
    });


</script>


</body>
</html>
