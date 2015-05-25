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
    <style>
        .addUserImg{border:1px solid #ddd; }
        .addUserImg h2{border-bottom:1px solid #ddd; }
        .vipContTitleBox{ text-indent:0px;}
        .vipUserUpdateBox{ width:700px;}
        .userImgListBox{ height:270px;}
        .head_img{height:230px; margin: 0px;}
        .head_img li{ margin: 0px; padding-top: 10px; padding-left: 12px;}
        .head_img li img{ border:1px solid #ddd;}

    </style>

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
                    <h1 class="vipContTitle"><span><img src="<%=basePath %>resources/images/vipcenterziliao_viod.png" /></span>您可以通过修改用户头像来展示自己。</h1>
                    <p>1、用户头像能直观的向其他用户展示自己，推荐使用真实照片以作为头像，也可以使用系统推荐头像。</p>
                    <p>2、使用上传图片时请不要小于100x100像素，不要大于512KB。</p>
                </div>
                <div class="vipUserUpdateBox">
                    <div class="addUserImg">
                        <h2>我的当前头像</h2>
                        <c:if test="${empty user.userRelationInfo.imgUrl}">
                            <span style="width: 100px; height: 100px;"><img src="<%=basePath %>resources/images/img/user.gif"/></span>
                        </c:if>
                        <c:if test="${!empty user.userRelationInfo.imgUrl}">
                            <span style="width: 100px; height: 100px;"><img src="${user.userRelationInfo.imgUrl}"/></span>
                        </c:if>
                        <form action="/accountManagement/userInfo/upload_head" method="post" id="myform" enctype="multipart/form-data">
  <span>
  <a href="javascript:;"><i></i>上传头像</a>
  <input type="file" name="imgUrl" id="file_upload"/>
  </span>
                        </form>
                    </div>
                    <div class="userImgList">
                        <div class="userImgListBox">
                            <h3><font>系统头像</font></h3>
                            <ul id="head_img">
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user1.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user2.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user3.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user4.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user5.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user6.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user7.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user8.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user9.jpg" title="" alt="" /></a></li>
                                <li><a href="javascript:void();"><img style="width: 100px; height: 100px;" src="<%=basePath %>resource/images/img/user10.jpg" title="" alt="" /></a></li>
                            </ul>
                            <script type="text/javascript">
                                function reset(){
                                    window.location.href="/accountManagement/userInfo/head";
                                }
                                if("${msg}"=="1"){
                                    reset();
                                }
                                $(function(){
                                    $("#head_img li a img").click(function(){
                                        var imgUrl=$(this).attr("src");
                                        $.ajax({
                                            url:'/accountManagement/userInfo/update_head',
                                            data:'imgUrl='+imgUrl,
                                            type:'post',
                                            success:function(msg){
                                                if(msg){
                                                    window.location.reload();
                                                }else{
                                                    ymPrompt.errorInfo('修改失败！', 260, 160, '失败', null);
                                                }
                                            }
                                        });
                                    });


                                    $("#file_upload").change(function(){
                                        var srcc=$("#file_upload").val();
                                        start = srcc.lastIndexOf(".");
                                        end = srcc.length;
                                        ts = srcc.substring(start + 1, end);
                                        nts = ts.toLowerCase();
                                        if(srcc.length>0){
                                            if (nts!='jpg' && nts!='png'&& nts!='gif' && nts!='jpeg' ) {
                                                document.getElementById("myform").reset();
                                                ymPrompt.errorInfo('图片格式错误！',226,150,'失败',null);
                                            }else{
                                                $('#myform').submit();
                                            }
                                        }
                                    });

                                });
                            </script>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
    <!--End vipcontent-->


 </div>
   <div class="c"></div>
    </div>
</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

 

</body>
</html>
