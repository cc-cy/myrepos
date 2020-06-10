<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% String path=request.getContextPath();
   String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basepath %>"/>
<title>高层至尊-房地产公司宽屏网站模板</title>
<meta name="Author" content="PageAdmin CMS" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="e/templates/150716/style.css" type="text/css" rel="stylesheet" />
<script src="e/js/jquery.min.js" type="text/javascript"></script>
<script src="e/js/comm.js" type="text/javascript"></script><script src="e/js/zh-cn/lang.js" type="text/javascript"></script><script src="e/js/script.js" type="text/javascript"></script>
<script src="e/js/function.js" type="text/javascript"></script>
</head>
<body>
<div class="page_style sublanmupage page_l64_sl658">
<div class="main_box main_box_style1">
 <div class="main_box_inner">
   <div class="main_box_inner_left">
<div id="nav_106"  class="nav_box nav_box_menu">

<div  class="nav_title"><span  class="nav_sign">项目展示</span><span  class="nav_more"></span></div>
<div id="nav_menu_106"  class="nav_menu">
<ul id="rootul_106">
<li id="sl653"><a href="#" class="sla653">精品住宅</a><ul><li id="sl658"><span></span><a href="#" class="sla658">高层至尊</a></li>
<li id="sl659"><span></span><a href="#" class="sla659">田园别墅</a></li>
</ul></li>
<!-- <li id="sl654"><a href="#" class="sla654">商务办公</a><ul><li id="sl660"><span></span><a href="#" class="sla660">东部地区</a></li>
<li id="sl661"><span></span><a href="#" class="sla661">西部地区</a></li>
</ul></li>
<li id="sl655"><a href="#" class="sla655">高端休闲</a><ul><li id="sl662"><span></span><a href="#" class="sla662">东部地区</a></li>
<li id="sl663"><span></span><a href="#" class="sla663">西部地区</a></li>
</ul></li>
<li id="sl656"><a href="#" class="sla656">商贸会展</a><ul><li id="sl664"><span></span><a href="#" class="sla664">东部地区</a></li>
<li id="sl665"><span></span><a href="#" class="sla665">西部地区</a></li>
</ul></li>
<li id="sl657"><a href="#" class="sla657">购物中心</a><ul><li id="sl666"><span></span><a href="#" class="sla666">东部地区</a></li>
<li id="sl667"><span></span><a href="#" class="sla667">西部地区</a></li>
</ul></li> -->
<c:forEach items="${menuChildList}" var="menu">
<li id="sl657"><a href="#" class="sla657">${menu.menu_name}</a><ul><li id="sl666"><span></span><a href="#" class="sla666">东部地区</a></li>
<li id="sl667"><span></span><a href="#" class="sla667">西部地区</a></li>
</ul></li>
</c:forEach>
</ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_106");
expand_subnav("sl658",",653,");
</script>
<div style="border:1px solid #CCCCCC;margin-top:20px;">
<div style="padding-top:5px;:"><img src="e/images/home/call.gif"></div>
<div style="padding:10px;">
<ul>
<li>热线：XXXX-XXXXXXXX</li>
<li>邮箱：XXXXe@xxxxx.com</li>
<li>传真：XXXX-XXXXXXXX</li>
<li>地址：中国某某市某某区某某街某某栋某某号</li>
</ul>
</div>
</div>

</div>
   <div class="main_box_inner_right"><div class="smallbanner"><div style="border:1px solid #CBCBCB ;padding:3px 3px 0 3px;"><img src="e/images/home/nut_4.jpg"></div></div>
<div class="current_location current_location_658"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="server/" class="cl_1">项目展示</a> &gt; <a href="#">精品住宅</a> &gt; <a href="#">高层至尊</a></li><li class="current_location_2">高层至尊</li></ul></div>
<div class="sublanmu_box sublanmu_box_658">
<div class="sublanmu_content sublanmu_content_article">
<ul class="tw_article">

<li>
<span class="pic"><a href="#" target="_self"><img src="e/upload/s1/article/image/2015/07/t_15144639.jpg" border="0" style="width:150px;height:150px;"></a></span>
<span class="title"><a href="#"  target="_self" title="XX胜景" style="">XX胜景</a></span>
<p class="introduct">XX康居——城市家庭的健康人居
幸福在哪里？它来自一点一滴的积累，当它包围在你身边的时候，你感觉不到它的存在，这是难以言说的一种温情，它是如此简单而难得。</p>
</li>

<li>
<span class="pic"><a href="#" target="_self"><img src="e/upload/s1/article/image/2015/07/t_15143424.jpg" border="0" style="width:150px;height:150px;"></a></span>
<span class="title"><a href="#"  target="_self" title="XX胜景" style="">XX胜景</a></span>
<p class="introduct">XX康居——城市家庭的健康人居
幸福在哪里？它来自一点一滴的积累，当它包围在你身边的时候，你感觉不到它的存在，这是难以言说的一种温情，它是如此简单而难得。</p>
</li>

<li>
<span class="pic"><a href="#" target="_self"><img src="e/upload/s1/article/image/2015/07/t_15143446.jpg" border="0" style="width:150px;height:150px;"></a></span>
<span class="title"><a href="#"  target="_self" title="XX胜景" style="">XX胜景</a></span>
<p class="introduct">XX康居——城市家庭的健康人居
幸福在哪里？它来自一点一滴的积累，当它包围在你身边的时候，你感觉不到它的存在，这是难以言说的一种温情，它是如此简单而难得。</p>
</li>

<li>
<span class="pic"><a href="#" target="_self"><img src="e/upload/s1/article/image/2015/07/t_15143513.jpg" border="0" style="width:150px;height:150px;"></a></span>
<span class="title"><a href="#"  target="_self" title="XX胜景" style="">XX胜景</a></span>
<p class="introduct">XX康居——城市家庭的健康人居
幸福在哪里？它来自一点一滴的积累，当它包围在你身边的时候，你感觉不到它的存在，这是难以言说的一种温情，它是如此简单而难得。</p>
</li>

<li>
<span class="pic"><a href="#" target="_self"><img src="e/upload/s1/article/image/2015/07/t_15143545.jpg" border="0" style="width:150px;height:150px;"></a></span>
<span class="title"><a href="#"  target="_self" title="XX胜景" style="">XX胜景</a></span>
<p class="introduct">XX康居——城市家庭的健康人居
幸福在哪里？它来自一点一滴的积累，当它包围在你身边的时候，你感觉不到它的存在，这是难以言说的一种温情，它是如此简单而难得。</p>
</li>

<li>
<span class="pic"><a href="#" target="_self"><img src="e/upload/s1/article/image/2015/07/t_15143620.jpg" border="0" style="width:150px;height:150px;"></a></span>
<span class="title"><a href="#"  target="_self" title="XX胜景" style="">XX胜景</a></span>
<p class="introduct">XX康居——城市家庭的健康人居
幸福在哪里？它来自一点一滴的积累，当它包围在你身边的时候，你感觉不到它的存在，这是难以言说的一种温情，它是如此简单而难得。</p>
</li>

</ul>

</div>
</div></div>
 </div>
 <div class="clear main_box_inner_bottom"></div>
</div>

</body></html>