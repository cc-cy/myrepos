<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>房地产公司宽屏网站模板</title>
</head>
<body>
	<iframe src="top.jsp" height="490px" width="100%" frameborder="no"
		border="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
	<iframe name="mainFrame" src="index.jsp" height="auto" width="100%"
		frameborder="no" border="0" marginwidth="0" marginheight="0"
		scrolling="no" id="mainFrame" onLoad="iFrameHeight()"></iframe>
	<iframe src="bottom.jsp" height="300px" width="100%" frameborder="no"
		border="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</body>
</html>
<script type="text/javascript">
	function iFrameHeight() {
		var ifm = document.getElementById("mainFrame");
		var subWeb = document.frames ? document.frames["mainFrame"].document
				: ifm.contentDocument;
		if (ifm != null && subWeb != null) {
			ifm.style.height = 'auto';
			ifm.style.height = subWeb.body.scrollHeight + 'px';
		}
	};
</script>

