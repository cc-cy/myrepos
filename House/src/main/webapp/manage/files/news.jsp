<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBliC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
td {
	text-align: center;
}

a {
	text-decoration: none;
}
</style>
<body>
	<table width="100%" border="1" align="center" cellpadding="0"
		cellspacing="0">
		<td>新闻id</td>
		<td>新闻标题</td>
		<td>出版时间</td>
		<td>所属菜单</td>
		<td>新闻详情</td>
		<td>操作</td>
		<c:forEach items="${newsList}" var="cc">
			<tr>
				<td>${cc.newid}</td> 
				<td>${cc.title}</td>
				<td>${cc.publish_time}</td>
				<td>${cc.menuid}</td>
				<td width="280px">${cc.summary}</td>
				<td><a href="NewsServlet?op=preupdate&id=${cc.newid}">修改</a>&nbsp;&nbsp;<a
					href="NewsServlet?op=delete&id=${cc.newid}">删除</a></td>
			</tr>
		</c:forEach>
		<tr align="center">
				<td colspan="6"><a href="NewsServlet?op=selectByPage">首页</a>
				<a href="javascript:prepage('${cp-1}')">上一页</a>
							第${cp}页
				<a href="javascript:nextpage('${cp+1}','${totalpage}')">下一页</a>
				<a href="NewsServlet?op=selectByPage&cp=${totalpage}">尾页</a></td>
			</tr>
	</table>
</body>
</html>
<script type="text/javascript">
function prepage(page){
	if(page<1){
		alert("已经到了第一页，不能上翻");
	}else{
		location.href="NewsServlet?op=selectByPage&cp="+page;
	}
}
function nextpage(page,totalpage){
	if(page>totalpage){
		alert("最后一页，不能下翻");
	}else{
		location.href="NewsServlet?op=selectByPage&cp="+page;
	}
}
</script>
