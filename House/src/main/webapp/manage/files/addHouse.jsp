<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>编辑房源信息</title>
</head>
<body>
<form method="post" action="HouseServlet">
		
		<input type="hidden" name="op" <c:if test="${house==null}"> value="add"</c:if> 
			<c:if test="${house!=null}">value="update" </c:if> >
		<table>
		<c:if test="${house!=null }">
			<tr>
				<td>项目id</td>
				<td><input type="text" name="houseid" value="${house.houseid}" readonly="readonly"/></td>
			</tr>
				</c:if>
			<tr>
				<td>项目标题</td>
				<td><input type="text" name="title" value="${house.title }"/></td>
			</tr>
			<tr>
				<td>项目简介</td>
				<td><input type="text" name="summary" value="${house.summary }"/></td>
			</tr>
			<tr>
				<td>菜单id</td>
				<td><input type="text" name="menuid" value="${house.menuid}"/></td>
			</tr>
			<tr>
				<td>项目状态</td>
				<td><input type="text" name="status" value="${house.house_status}"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="确定" />
				<td><input type="reset" name="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>