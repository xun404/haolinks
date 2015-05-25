<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="panelBar">
	<ul class="toolBar">
		<li><a class="add"
			href="/artist/queryArtistById?operation=add&id=0" target="navTab"
			rel="adddeputy" mask="true" resizable="false" maxable="false"
			width="618" height="500"><span>添加</span></a></li>
		<li><a class="delete" href="/artist/deleteArtist?id={aid}"
			title="确实要删除选中的艺术大师吗?" target="selectedTodo" rel="ids" postType="string"><span>删除</span></a></li>
		<li><a class="edit"
			href="/artist/queryArtistById?operation=upt&id={aid}"
			target="navTab" rel="adddeputy" mask="true" resizable="false"
			maxable="false" warn="请选择艺术大师！" width="618" height="500"><span>修改</span></a></li>
	</ul>
</div>
<table class="table" width="99%" layoutH="110" rel="jbsxBox2">
	<thead>
		<tr>
			<th width="22"><input value="" type="checkbox" group="ids"
				class="checkboxCtrl"></th>
			<th width="30px;">序号</th>
			<th>姓名</th>
			<th>头衔</th>
			<th>是否显示</th>
			<th>添加时间</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${artistList}" var="a" varStatus="artist">
			<tr target="aid" rel="${a.id}" class="checkall"
				onclick="selecteddefault(${topic.id});"
				style="cursor: pointer;">
				<td><input name="ids" value="${a.id}" type="checkbox"></td>
				<td>${artist.index+1}</td>
				<td>${a.name}</td>
				<td>${a.title}</td>
				<td>${enum_show_state[a.isShow]}</td>
				<td>${a.createTime}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<jsp:include page="/WEB-INF/views/admin/public/dwzpage.jsp" />
