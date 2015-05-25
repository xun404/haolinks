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
    <title>资金管理-我要提现</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/financial_management.css"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/page.css"/>

</head>
<body>
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/frontend/public/leftMenu.jsp"/>

    <div class="right_box">
        <div class="product_finanaial">
            <ul>
                <li onclick="javascript:withdraw();" class="tab_switch_view">提现申请</li>
                <li class="tab_checked">提现记录</li>
                <div class="c"></div>
            </ul>
        </div>

        <div class="content_table_box">
            <table cellpadding="0" cellspacing="0" border="0"
                   class="table_box" style="width: 728px;">

                <tbody>
                <tr>
                    <th>编号</th>
                    <th>提现申请金额</th>
                    <th>手续费</th>
                    <th>审核状态</th>
                    <th>审核结果</th>
                    <th>申请时间</th>
                    <th>审核时间</th>
                    <th>提现状态</th>
                </tr>


                <c:forEach items="${applylist}" var="WithdrawApply"
                           varStatus="on">
                    <tr>
                        <td>${on.index+1}</td>
                        <td>${WithdrawApply.applyNum}</td>
                        <td>${WithdrawApply.factorage}</td>
                        <td><c:if test="${WithdrawApply.status eq 0}">未审核</c:if>
                            <c:if test="${WithdrawApply.status eq 1}">
                                <span style="color: red">已审核</span>
                            </c:if></td>
                        <td><c:if test="${WithdrawApply.status eq 0}"></c:if> <c:if
                                test="${WithdrawApply.status eq 1}">
                            <c:if test="${WithdrawApply.result eq 0}">不通过</c:if>
                            <c:if test="${WithdrawApply.result eq 1}">
                                <span style="color: red">通过</span>
                            </c:if>
                            <c:if test="${WithdrawApply.result eq 2}">
                                <span style="color: red">通过</span>
                            </c:if>
                            <c:if test="${WithdrawApply.result eq 3}">
                                <span style="color: red">通过</span>
                            </c:if>
                        </c:if></td>
                        <td>${WithdrawApply.applyTime}</td>
                        <td>${WithdrawApply.answerTime}</td>
                        <td><c:if test="${WithdrawApply.status eq 0}">待审核</c:if>
                            <c:if test="${WithdrawApply.status eq 1}">
                                <!--<c:if test="${WithdrawApply.result eq 1}">
                                <a href="/withdraw/ipsWithdraw?id=${WithdrawApply.id}" target="_blank" style="color:#33b9ff">去提现</a>
                            </c:if>-->
                                <c:if test="${WithdrawApply.result eq 0}">
                                    审核未通过
                                </c:if>
                                <c:if test="${WithdrawApply.result eq 1}">
                                    <span style="color: red">提现中</span>
                                </c:if>
                                <c:if test="${WithdrawApply.result eq 2}">
                                    <span style="color: red">提现成功</span>
                                </c:if>
                                <c:if test="${WithdrawApply.result eq 3}">
                                    提现失败
                                </c:if>
                            </c:if></td>
                    </tr>
                </c:forEach>

                </tbody>

            </table>

            <div class="pag_div">
            <ul class="pag_ul" style="float:right;padding-right:20px;">
                <li><a href="javascript:"> 共${pager.totalCount}条${pager.totalPage}页</a></li>
                <li><a href="javascript:"> 当前第${pager.pageNum}页</a></li>
                <li><a style="color: #00bc00;" href="javascript:jumpPage(1);">首页</a></li>
                <li><a style="color: #00bc00;" href="javascript:jumpPage(${pager.pageNum-1 });">上一页</a></li>
                <li><a style="color: #00bc00;" href="javascript:jumpPage(${pager.pageNum+1 });">下一页</a></li>
                <li><a style="color: #00bc00;" href="javascript:jumpPage(${pager.totalPage});">尾页</a></li>
                <li>跳转<input id="page_no" type="text" class="tabPageJumpTx" style="width: 30px; height:20px; border: none; border:1px solid #ddd;"/>
                                    <input type="button" value="确定" class="pag_s_1 tabPageJumpBnt"onclick="jumpPage02();"  /></li>
            </ul>
            </div>
        </div>

        <c:if test="${!empty  expenses}">
            <jsp:include page="/WEB-INF/views/frontend/public/page.jsp" />
        </c:if>
    </div>

    <!--End vipcontent-->

    <div class="c"></div>
    </div>
</div>
    <script type="text/javascript">
        function withdraw() {
            window.location.href = '/fundManagement/withdraw/openWithdraw?fatherMenu=3&sonMenu=2'
        }
        function jumpPage(pageno) {
            if (pageno <= 0 || pageno >${pager.totalPage}) {
                return;
            }
            fn_ajax("<%=basePath%>fundManagement/withdraw/withdrawList?fatherMenu=3&sonMenu=2&pageNum=" + pageno);
        }
        function jumpPage02() {
            var pageno = $.trim($("#page_no").val());
            if (pageno == "" || pageno == null) {
                ymPrompt.alert("请输入页码！", 400, 200, '提示', null);
                return;
            }
            if (pageno < 0 || pageno > ${pager.totalPage}) {
                ymPrompt.alert("请输入大于0小于${pager.totalPage}的页面！", 400, 200, '提示', null);
                return;
            }
            fn_ajax("<%=basePath%>fundManagement/withdraw/withdrawList?fatherMenu=3&sonMenu=2&pageNum=" + pageno);
        }
        function fn_ajax(url) {
            window.location.href = url;
        }
    </script>

<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

</body>
</html>
