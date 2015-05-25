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
    <title>账户管理-用户信息</title>
    <link type="text/css" rel="stylesheet" href="/resource/css/individual_center.css"/>
    <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
</head>
<body>
<!-- top -->
<jsp:include page="/WEB-INF/views/visitor/communal/head.jsp"/>
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="individual_center_all">
    <div class="individual_center">
        <jsp:include page="/WEB-INF/views/member/communal/leftMenu.jsp"/>
        <div class="right_box">
            <div class="title_alert">温馨提示：亲爱的用户，为节约您的宝贵时间，请认真准确填以下信息，否则评估会不准确，对您借款会有影响。</div>
            <div class="main_form">
                <form action="registration_02.html" method="post">
                    <div class="input_box">
                        <div class="content_input"><span>用户名:</span><span>xxx</span></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>昵称:</span><input type="text" placeholder="请输入出生日期"
                                                                          class="input_text_style"/></div>
                        <div class="text">错误提示</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>真实姓名:</span><a href="#" class="color_64">未设置</a></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>身份证号:</span><a href="#" class="color_64">未设置</a></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>手机号码:</span><span>13527862661</span></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>邮箱地址:</span><a href="#" class="color_64">未设置</a></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span><samp>*</samp>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</span>
                            <label><input type="radio" name="RadioGroup1" value="保密" id="RadioGroup1_0"> 保密</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" name="RadioGroup1" value="先生" id="RadioGroup1_1"> 先生</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" name="RadioGroup1" value="女士" id="RadioGroup1_2"> 女士</label>
                        </div>
                        <div class="text height_none"></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span><samp>*</samp>出生日期</span><input type="text"
                                                                                         placeholder="请输入出生日期"
                                                                                         class="input_text_style"/>
                        </div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>最高学历:</span>
                            <label><input type="radio" name="RadioGroup1" value="高中以上"> 高中以上</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" name="RadioGroup1" value="大专或本科"> 大专或本科</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" name="RadioGroup1" value="硕士或硕士以上"> 硕士或硕士以上</label>
                        </div>
                        <div class="text height_none"></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>毕业院校:	</span><input type="text" placeholder="请输入邮箱地址"
                                                                                class="input_text_style"/></div>
                        <div class="text">错误提示</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>婚姻状况</span>
                            <label><input type="radio" name="RadioGroup1" value="保密" id="RadioGroup1_0"> 已婚</label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" name="RadioGroup1" value="先生" id="RadioGroup1_1"> 未婚</label>&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>居住地址:</span><input type="text" placeholder="请输入邮箱地址"
                                                                            class="input_text_style"/></div>
                        <div class="text">错误提示</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>公司行业:</span><input type="text" placeholder="请输入邮箱地址"
                                                                            class="input_text_style"/></div>
                        <div class="text">错误提示</div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>公司规模</span>
                            <label><input type="radio" name="RadioGroup1" value="50以下" id="RadioGroup1_0">50以下</label>
                            <label><input type="radio" name="RadioGroup1" value="50-100人"
                                          id="RadioGroup1_1">50-100人</label>
                            <label><input type="radio" name="RadioGroup1" value="50以下"
                                          id="RadioGroup1_0">100-500人</label>
                            <label><input type="radio" name="RadioGroup1" value="50-100人"
                                          id="RadioGroup1_1">500-1000人</label>
                            <label><input type="radio" name="RadioGroup1" value="50-100人"
                                          id="RadioGroup1_1">1000人以上</label>
                        </div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>职位:</span><input type="text" placeholder="请输入邮箱地址"
                                                                          class="input_text_style"/></div>
                    </div>

                    <div class="input_box">
                        <div class="content_input"><span>公司规模</span>
                            <label><input type="radio" name="RadioGroup1" value="50以下" id="RadioGroup1_0">50以下</label>
                            <label><input type="radio" name="RadioGroup1" value="50-100人"
                                          id="RadioGroup1_1">50-100人</label>
                            <label><input type="radio" name="RadioGroup1" value="50以下"
                                          id="RadioGroup1_0">100-500人</label>
                            <label><input type="radio" name="RadioGroup1" value="50-100人"
                                          id="RadioGroup1_1">500-1000人</label>
                            <label><input type="radio" name="RadioGroup1" value="50-100人"
                                          id="RadioGroup1_1">1000人以上</label>
                        </div>
                    </div>


                    <div class="input_box">
                        <div class="content_input"><span></span>
                            <input type="button" value="确认修改" name="b" class="button_style"/>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <div class="c"></div>
    </div>
</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/visitor/communal/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/visitor/communal/footer.jsp"/>

</body>
</html>
