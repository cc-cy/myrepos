<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>房地产公司宽屏网站模板</title>
<meta name="keywords" content="PageAdmin企业网站管理系统" />
<meta name="Author" content="PageAdmin CMS" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="e/templates/150716/style.css" type="text/css" rel="stylesheet" />
<script src="e/js/jquery.min.js" type="text/javascript"></script>
<!-- <script src="e/js/function.js" type="text/javascript"></script>
<script src="e/js/comm.js" type="text/javascript"></script>
<script src="e/js/zh-cn/lang.js" type="text/javascript"></script>
<script src="e/js/script.js" type="text/javascript"></script> -->
</head>
<body>
<div class="page_style lanmupage page_l61">
<div class="top_box">
 <div class="top_box_inner">
   <div class="topcontent"><div class="weibo">
	<a href="" class="xinl">新浪微博</a><a href="" class="tengx">腾讯微博</a> 
</div></div><div class="clear"></div>
   <div class="logo"><a href=""><img src="e/images/logo.jpg" border="0"></a></div>
   <div class="menu_box" id="Menu"><ul>
<li class="menu_style_homepage menu_current" id="MenuItem61" name="MenuItem"><a href="" class="menu">首页</a></li>
<!-- <li class="menu_style" id="MenuItem62" name="MenuItem"><a href="about/index.html" target="mainFrame" class="menu">关于我们</a></li>
<li class="menu_style" id="MenuItem63" name="MenuItem"><a href="news/index.html" target="mainFrame" class="menu">新闻中心</a></li>
<li class="menu_style" id="MenuItem67" name="MenuItem"><a href="product/index.html" target="mainFrame" class="menu">业务服务</a></li>
<li class="menu_style" id="MenuItem64" name="MenuItem"><a href="server/index.html" target="mainFrame" class="menu">项目展示</a></li>
<li class="menu_style" id="MenuItem68" name="MenuItem"><a href="rczp/index.html" target="mainFrame" class="menu">人才招聘</a></li>
<li class="menu_style" id="MenuItem65" name="MenuItem"><a href="contact/index.html" target="mainFrame" class="menu">联系我们</a></li> -->
<c:forEach items="${menuList}" var="menu">

<li class="menu_style" id="MenuItem62" name="MenuItem"><a href="${menu.menu_url}" target="mainFrame" class="menu">${menu.menu_name}</a></li>
</c:forEach>
</ul></div>
 </div>
</div>
<script type="text/javascript">var IsPageHome="1";var Lanmu_Id="61";var Sublanmu_Id="0";ShowSubMenu(Lanmu_Id);</script> 
<div class="banner"><div style="background:url(e/images/banner/tt33.jpg) no-repeat center top;height:355px;">
	<div style="width:980px;margin:0 auto;">
		<div style="padding:100px 0px 0 100px;">
			<div style="font-size:30px;fint-weight:bold;color:white;font-family:" 黑体";"="">
		筑造<span style="font-size:26px;margin-left:20px;">幸福中国</span> 
		</div>
		<div style="font-size:24px;fint-weight:bold;color:white;">
			BUILD HAPPY
		</div>
		<div style="font-size:14px;fint-weight:bold;color:white;">
			没有目标的未来   只能由此止步
		</div>
	</div>
</div>
	</div></div>
</body>
</html>