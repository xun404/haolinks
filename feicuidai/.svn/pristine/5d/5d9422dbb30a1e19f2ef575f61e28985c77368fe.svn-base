<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fun"%>
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
    <title>账户管理-修改邮箱</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link rel="stylesheet" type="text/css" href="/resource/css/vipcenter.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/Validform.css"/>
    <jsp:include page="/WEB-INF/views/visitor/common_2.jsp"></jsp:include>
    <script type="text/javascript" src="/resources/js/Validform_v5.3_min.js"></script>
<script type="text/javascript" src="/resources/js/Validform_Datatype.js"></script>
<script type="text/javascript" src="/resources/js/jquery.form.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<!--End vipContBox-->
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>
        <div class="right_box">
            <!--vipContBox-->
            <div class="vipContBox">
                <div class="vipContTitleBox">
                    <h1 class="vipContTitle">
								<span><img src="/resources/images/vipseversicon.png" />
								</span>通过绑定邮箱，能够为您的账号提供更安全的保障。
                    </h1>
                    <p>尊敬的翡翠贷会员，在绑定邮箱并通过验证之后，您可以提升您在翡翠贷的用户安全等级。</p>
                </div>
                <table cellpadding="0" cellspacing="0" border="0"
                       class="vipVerification">
                    <input type="hidden" id="id" value="${session_user.id }" />
                    <tbody>
                    <tr>
                        <th><img src="/resources/images/vipcenteremail.jpg"
                                 title="" alt="" /></th>
                        <td><p>
                            您好，您已经绑定了邮箱<font><c:if
                                test="${!empty session_user.userRelationInfo.email && fun:length(session_user.userRelationInfo.email)>5}">
                            <c:if
                                    test="${fun:length(fun:substring(session_user.userRelationInfo.email,0,fun:indexOf(session_user.userRelationInfo.email,'@'))) > 5 }">
                                ${fun:substring(session_user.userRelationInfo.email,0,3)}
                                <c:forEach begin="0"
                                           end="${fun:length(fun:substring(session_user.userRelationInfo.email,3,fun:indexOf(session_user.userRelationInfo.email,'@')-2)) - 1}">*</c:forEach>
                                ${fun:substring(session_user.userRelationInfo.email,fun:indexOf(session_user.userRelationInfo.email,'@')-2,fun:length(session_user.userRelationInfo.email))}
                            </c:if>
                            <c:if
                                    test="${fun:length(fun:substring(session_user.userRelationInfo.email,0,fun:indexOf(session_user.userRelationInfo.email,'@'))) < 6 }">
                                ${session_user.userRelationInfo.email }
                            </c:if>
                        </c:if> </font>
                        </p>会员可通过填写安全问题答案修改已绑定的邮箱</td>
                    </tr>
                    </tbody>
                </table>
                <div class="vipPromptBox">
                    <p>您已设置安全问题，如果需要修改已绑定邮箱，请在下面填写您已经设置的安全问题答案!</p>
                </div>
                <form>
                    <table cellpadding="0" cellspacing="0" border="0"
                           class="vipPwdManage">
                        <tbody>
                        <tr>
                            <th>安全问题1:</th>
                            <td><select id="question03">
                                <option value="">--请选择问题--</option>
                                <c:forEach items="${safetyQuestions }" var="s">
                                    <option value="${s.id }">${s.problem }</option>
                                </c:forEach>
                            </select></td>
                        </tr>
                        <tr>
                            <th>答案1:</th>
                            <td><input id="anwser03" type="text" class="vipTextBox"
                                       style="width: 240px;" /></td>
                        </tr>
                        <tr>
                            <th>安全问题2:</th>
                            <td><select id="question04">
                                <option value="">--请选择问题--</option>
                                <c:forEach items="${safetyQuestions }" var="s">
                                    <option value="${s.id }">${s.problem }</option>
                                </c:forEach>
                            </select></td>
                        </tr>
                        <tr>
                            <th>答案2:</th>
                            <td><input id="anwser04" type="text" class="vipTextBox"
                                       style="width: 240px;" /></td>
                        </tr>
                        <tr>
                            <th>输入新邮箱:</th>
                            <td><input id="newemail" type="text" class="vipTextBox"
                                       style="width: 240px;" /></td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="tableSetBntBox">
                        <input id="uptEmail01" type="button" value="保存"
                               onclick="javascript:uptmail();" /> <input type="reset" value="取消" />
                    </div>
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
