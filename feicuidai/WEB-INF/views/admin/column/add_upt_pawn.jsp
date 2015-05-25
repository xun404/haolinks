<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="pageContent">
    <form action="/pawn/addOrUpdatePawn?operation=${operation }" method="post" class="pageForm required-validate"
          onsubmit="return validateCallback(this, navTabAjaxDone)">
        <c:if test="${operation == 'upt'}">
            <input type="hidden" name="id" value="${pawn.id }"/>
            <input type="hidden" name="createTime" value="${pawn.createTime }"/>
        </c:if>
        <c:if test="${operation == 'add'}"><input type="hidden" name="id" value="0"/></c:if>
        <div class="pageFormContent" layoutH="56">

            <div style="width:600px; margin:0 auto;">

                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>名称：</label>
                    <input style="width: 135px;" class="required" type="text" name="name" value="${pawn.name }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>编号：</label>
                    <input style="width: 135px;" class="required" type="text" name="number" value="${pawn.number }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>尺寸：</label>
                    <input style="width: 135px;" class="required" type="text" name="size" value="${pawn.size }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>重量：</label>
                    <input style="width: 135px;" class="required" type="text" name="weight" value="${pawn.weight }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>原料产地：</label>
                    <input style="width: 135px;" class="required" type="text" name="producer" value="${pawn.producer }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>工艺：</label>
                    <input style="width: 135px;" class="required" type="text" name="technology" value="${pawn.technology }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>抵押物托管方：</label>
                    <input style="width: 135px;" class="required" type="text" name="custodian" value="${pawn.custodian }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>视频地址：</label>
                    <input style="width: 135px;" type="text" name="videoURL" value="${pawn.videoURL }">
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;height: 110px;"><p>
                    <label>寓意：</label>
                    <textarea name="introduction" rows="5" cols="80" class="required">${pawn.introduction}</textarea>
                </p></div>
                <div style="width:100%; float: left; margin-top: 10px;"><p>
                    <label>评估书：</label>
					<textarea class="editor" name="assessmentReport" rows="13" cols="80"
                              upImgUrl="/admincolum/uploadFile"
                              upImgExt="jpg,jpeg,gif,png">${pawn.assessmentReport}</textarea>
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