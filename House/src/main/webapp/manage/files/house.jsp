<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
td{
	text-align:center;
}
a{
	text-decoration:none; 
}
</style>
<body>
	<table  width="100%" border="1" align="center"
		cellpadding="0" cellspacing="0" >
			<td>项目id</td>
			<td>项目标题</td>
			<td>项目详情</td>
			<td>所属菜单</td>
			<td>项目状态</td>
			<td>操作</td>	
		<c:forEach items="${houseList}" var="hl">
		<tr>
			<td>${hl.houseid}</td>
			<td>${hl.title}</td>
			<td>${hl.summary}</td>
			<td>${hl.menuid}</td>
			<td>${hl.house_status}</td>
			<td><a href="HouseServlet?op=preupdate&id=${hl.houseid}">修改</a>&nbsp;&nbsp;<a href="HouseServlet?op=del&id=${hl.houseid}">删除</a></td>		
		</tr>
		</c:forEach>
	</table>
</body>
</html>