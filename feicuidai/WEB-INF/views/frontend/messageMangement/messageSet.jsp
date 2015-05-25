<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.List" %>
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

    <link rel="stylesheet" type="text/css" href="/resources/css/skin/simple_gray/ymPrompt.css"/>
    <script type="text/javascript" src="/resources/js/ymPrompt.js"></script>
    <script type="text/javascript">
        function FreeUpgrade() {
            if (${typeVip==1}) {
                ymPrompt.alert("你已经是特权会员，无需升级");
            } else {
                var vipUpgrade = "${vipUpgrade}";
                if (vipUpgrade == "免费") {
                    location.href = "/userinfovip/freeUpgrade?userId=${session_user.id}";
                    document.getElementById("upgradeId").style.display = "none";
                } else {
                    window.location.href = 'userinfovip/paymentBF.htm?money='
                    + vipUpgrade;
                }
            }
        }
    </script>


</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<!-- 样式覆盖 -->
<script type="text/javascript" src="/resource/js/myPublic.js"></script>
<script type="text/javascript" src="/resources/js/messageseting.js"></script>

<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <%--<div class="title_table table_finanagement_box">--%>
            <%--<p>请勾选您所需要设置的消息提醒，短信提醒为特权用户专属通知，如您为一般用户，请点击立即升级为特权用户后，</p>--%>
            <%--<p>享用该项服务。</p>--%>
            <%--<c:if test="${typeVip==0}"><a onclick="FreeUpgrade()" class="start_toubiao">升级为特权用户</a></c:if>--%>
            <%--<c:if test="${typeVip==1}"><a class="start_toubiao">您已是特权用户</a></c:if>--%>
            <%--</div>--%>
            <div class="title_table table_finanagement_box">
            <p>请勾选您所需要设置的消息提醒</p>
            </div>
            <div class="content_table_box message_table_02">
                <form action="update_messge" id="myForm">
                    <table width="100%" border="0" class="table_box message_table_box" cellpadding="1" cellspacing="1">
                        <tbody>
                        <tr>
                            <th width="20%">服务条款</th>
                            <th width="30%">系统消息</th>
                            <th width="30%">邮件提醒</th>
                            <th width="20%">操作</th>
                        </tr>
                        <c:forEach var="item" items="${list}" varStatus="s">
                            <c:if test="${!empty vip}">
                                <c:set var="all" value="${item[3] and item[4] and item[5]}"/>
                            </c:if>
                            <c:if test="${empty vip}">
                                <c:set var="all" value="${item[3] and item[4]}"/>
                            </c:if>
                            <tr>
                                <td width="154" class="all_l">${item[6]}</td>
                                <td width="154" align="center"><input type="checkbox" class="message_check"
                                                                      name="cbo_sys_${s.index}" value="1"
                                                                      <c:if test='${!empty item[3] and item[3]}'>checked</c:if> />
                                </td>
                                <td width="154" align="center"><input type="checkbox" class="message_check"
                                                                      name="cbo_email_${s.index}" value="1"
                                                                      <c:if test='${!empty item[4] and item[4]}'>checked</c:if> />
                                </td>
                                <td width="154" align="center"><input type="hidden" name="id_${s.index}"
                                                                      value="${item[1]}"/>
                                    <span class="checkAll" style="cursor: pointer;"><c:if test="${all}">取消</c:if><c:if
                                            test="${!all}">全选</c:if></span>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <input name="row" value="<%=((List)request.getAttribute("list")).size() %>" type="hidden"/>
                    <%--
                    <div class="tableSetBntBox">
                    <input name="row" value="<%=((List)request.getAttribute("list")).size() %>" type="hidden"/>
                    <input type="submit"   value="提交更新" />
                    <input type="reset"  value="取消" />
                    </div>

                    <input class="yes_a" type="submit"   value="提交更新" />
                    --%>
                </form>

            </div>
                <div class="end_all">
                    <a class="yes_a" onclick="submitForm()">确定</a>
                    <a class="no_a" onclick="resetForm()">取消</a>
                    <div class="c"></div>
                </div>
        </div>
        <div class="c"></div>

    </div>

</div>
<!--------注册 End--------------->

<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>
<script type="text/javascript">

    $(function () {

//全选
        $("#checkAll").click(function () {
            var bool = $(this).attr("checked");
            $(".check").each(function () {
                if (bool == 'checked') {
                    $(this).attr("checked", true);
                } else {
                    $(this).attr("checked", false);
                }
            });
        });

        /*
         * 批量删除
         */
        $("#deleteAll").click(function () {
            var ids = "";
            $(".check").each(function () {
                if ($(this).attr('checked') == 'checked') {
                    ids = ids + $(this).val() + ',';
                }
            });
            if (ids == "") {
                ymPrompt.errorInfo('请选择至少一条记录!', 220, 160, '警告', null);
            } else {
                ymPrompt.confirmInfo('确定删除？', 220, 160, '是否删除', function (tp) {
                    if (tp == 'ok') {
                        $.ajax({
                            type: 'post',
                            url: '/visitorManagement/memberCenter/deletes',
                            data: '&ids=' + ids,
                            success: function (msg) {
                                //$("#user_message").remove();
                                //$('#systemmessage').append(msg);
                                window.location.href = "/visitorManagement/memberCenter/system_message";
                            }
                        });
                    }
                });
            }

        });

    });

    function submitForm() {
        $("#myForm").submit();
    }
    ;
    function resetForm() {
        $("#myForm").reset();
    }
    ;
</script>
</body>
</html>
