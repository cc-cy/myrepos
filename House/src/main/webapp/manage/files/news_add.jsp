<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basepath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 by www.mycodes.net</title>
<link rel="stylesheet" rev="stylesheet" href="server/css/style.css" type="text/css" media="all" />
<style type="text/css">
 #preview,.img,img {
  width: 200px;
  height: 200px;
 }
  
 #preview {
  border: 1px solid #000;
 }
 </style>

<script language="JavaScript" type="text/javascript">
function savenews(){
	newsform.submit();
}

function preview(file) {
	  var prevDiv = document.getElementById('preview');
	  if (file.files && file.files[0]) {
	   var reader = new FileReader();
	   reader.onload = function(evt) {
	    prevDiv.innerHTML = '<img src="' + evt.target.result + '" />';
	   }
	   reader.readAsDataURL(file.files[0]);
	  } else {
	   prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></div>';
	  }
	 }

</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="NewsServlet?op=add" method="post" enctype="multipart/form-data" name="newsform" id="newsform" target="sypost" >
  	<!-- <input type="hidden" value="add" name="status" id="status" /> -->
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >任务添加页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="保存" class="button" onclick="alert('保存成功！');"/>　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
		</td></tr>

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>添加任务</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td nowrap align="right" width="13%">新闻标题:</td>
					    <td width="41%"><input name="title" class="text" style="width:250px" type="text" size="40" />
				        <span class="red"> *</span></td>
					    <td align="right" width="19%">路径:</td>
					    <td width="27%"><input name="content_url" id="content_url" class="text" style="width:154px" /></td>
					    </tr>
					  <tr>
					    <td nowrap align="right">新闻图片:</td>
					    <td colspan="3">
					    	<input name="pic" id="pic" onchange="preview(this)" type="file"  class="text" style="width:154px" />
					    	<div id="preview"></div>	
					    
					    </td>
					    
					  </tr>
					   <tr>
					    <td nowrap align="right">新闻类别:</td>
					    <td colspan="3" >
					    <select name="menuid" >
                          <option  selected="selected">==请选择新闻类型==</option>
                          <c:forEach items="${childMenuList }" var="ml" >
                          <option value="${ml.menuid}">${ml.menu_name }</option>
                          </c:forEach>
                        </select>
                        </td>
					   
					  </tr>
					  <tr>
					    <td nowrap align="right" height="120px">新闻简介:</td>
					    <td colspan="3"><textarea id="summary" name="summary" rows="5" cols="80"></textarea></td>
					    </tr>
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button"  value="保存" onclick="savenews();" class="button" />　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
