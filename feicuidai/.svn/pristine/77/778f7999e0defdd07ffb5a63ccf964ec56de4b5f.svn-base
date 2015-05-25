<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="pageContent">
    <form action="/artist/addOrUpdateArtist?operation=${operation }" method="post" class="pageForm required-validate"
          onsubmit="return validateCallback(this, navTabAjaxDone)">
        <c:if test="${operation == 'upt'}">
            <input type="hidden" name="id" value="${artist.id }"/>
            <input type="hidden" name="createTime" value="${artist.createTime }"/>
        </c:if>
        <c:if test="${operation == 'add'}"><input type="hidden" name="id" value="0"/></c:if>
        <div class="pageFormContent" layoutH="56">

            <div style="width:600px; margin:0 auto;">

                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>姓名：</label>
                    <input style="width: 135px;" class="required" type="text" name="name" value="${artist.name }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>头衔/职称：</label>
                    <input style="width: 135px;" class="required" type="text" name="title" value="${artist.title }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>材质：</label>
                    <input style="width: 135px;" class="required" type="text" name="material" value="${artist.material }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>业界称号：</label>
                    <input style="width: 135px;" class="required" type="text" name="designation" value="${artist.designation }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>大师类型：</label>
                    <input type="radio" name="type" value="0"<c:if test="${artist.type == 0 }">checked="checked"</c:if>>鉴定专家
                    <input type="radio" name="type" value="1"<c:if test="${artist.type == 1 }">checked="checked"</c:if>>艺术大师
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>是否显示：</label>
                    <c:if test="${artist.isShow == '1'}"><input type="checkbox" name="isShow" checked="checked"
                                                                 value="1"></c:if>
                    <c:if test="${artist.isShow != '1'}"><input type="checkbox" name="isShow" value="1"></c:if>
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>大师简介：</label>
					<textarea class="editor" name="introduction" rows="13" cols="80"
                              upImgUrl="/admincolum/uploadFile"
                              upImgExt="jpg,jpeg,gif,png">${artist.introduction}</textarea>
                </p></div>

            </div>

        </div>
        <div class="formBar">
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
                <li>
                    <div class="buttonActive">
                        <div class="buttonContent">
                            <button type="submit">保存</button>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="button">
                        <div class="buttonContent">
                            <button type="button" class="close">取消</button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </form>
</div>
<script type="text/javascript" src="/resources/js/article.js"></script>