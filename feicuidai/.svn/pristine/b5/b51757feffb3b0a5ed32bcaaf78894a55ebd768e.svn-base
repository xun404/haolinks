<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript" src="/resource/js/pawn.js"></script>
<style>
    /*#loanstate{
            vertical-align: middle;
            float:left;
        }*/
    #search-panel span.om-combo,#search-panel span.om-calendar {
        vertical-align: middle;
    }
    .unit {
        clear: both;
        text-align: left;
    }
    .unit label {
        text-align: right;
        float: left;
        width: 100px;
    }
    .unit textarea{
        width: 280px;
        height: 5em;
    }
</style>
<div layoutH="0" class="pageContent">
    <div class="panelBar">
        <ul class="toolBar">
            <li><a class="add" href="/pawn/queryPawnById?operation=add&id=0" target="navTab" height="500" width="750" rel="addloanSign" mask="true"><span>添加</span></a></li>
            <li><a class="edit" id="editPawn" href="javascript:void(0);" height="350" width="520"><span>编辑</span></a></li>
            <%--（不能删除抵押物，因为和标loansign表有外键关联）--%>
            <%--<li><a class="delete" onclick="delConfirmMsg()"><span>删除</span></a></li>--%>
        </ul>
    </div>
    <table id="pawnList"></table>
    <div class="panelBar">
        <ul class="toolBar">
            <li>
                <a id="addAttachmentIcon" class="icon"><span>上传抵押物图片</span></a>
            </li>
            <li>
                <a id="deleteAttachment" class="delete"><span>删除附件</span> </a>
            </li>
        </ul>
    </div>
    <table id="pawnAttachment"></table>
</div>