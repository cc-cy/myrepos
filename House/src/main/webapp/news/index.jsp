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
<title>公司新闻-房地产公司宽屏网站模板</title>
<meta name="Author" content="PageAdmin CMS" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="e/templates/150716/style.css" type="text/css" rel="stylesheet" />
<script src="e/js/jquery.min.js" type="text/javascript"></script>
<script src="e/js/comm.js" type="text/javascript"></script><script src="e/js/zh-cn/lang.js" type="text/javascript"></script><script src="e/js/script.js" type="text/javascript"></script>
<script src="e/js/function.js" type="text/javascript"></script>
</head>
<body>
<div class="page_style sublanmupage page_l63_sl547">
<div class="main_box main_box_style1">
 <div class="main_box_inner">
   <div class="main_box_inner_left">
<div id="nav_105"  class="nav_box nav_box_menu">

<div  class="nav_title"><span  class="nav_sign">新闻资讯</span><span  class="nav_more"></span></div>
<div id="nav_menu_105"  class="nav_menu">
<ul id="rootul_105">
<%-- <li id="sl547"><a href="#" class="sla547">公司新闻</a></li>
<li id="sl647"><a href="#" class="sla647">${menu.menu_name}</a></li>
<li id="sl648"><a href="#" class="sla648">媒体报道</a></li> --%>
<c:forEach items="${menuChildList}" var="menu">
<li id="sl647"><a href="#" class="sla647">${menu.menu_name}</a></li>
</c:forEach>
</ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_105");
expand_subnav("sl547","0");
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
   <div class="main_box_inner_right"><div class="smallbanner"><div style="border:1px solid #CBCBCB ;padding:3px 3px 0 3px;"><img src="e/images/home/nut_1.jpg"></div></div>
<div class="current_location current_location_547"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="news/" class="cl_1">新闻中心</a> &gt; <a href="#">公司新闻</a></li><li class="current_location_2">公司新闻</li></ul></div>
<div class="sublanmu_box sublanmu_box_547">
<div class="sublanmu_content sublanmu_content_article">
<ul class="article">

<li><span class="title">
<a href="#" target="_self" title="2014年北京不限购项目成交盘点珠江四季悦城榜上有名" style="">2014年北京不限购项目成交盘点珠江四季悦城榜上有名</a></span>
<span class="date">2015-07-21</span>
</li>

<li><span class="title">
<a href="#" target="_self" title="东贸珠宝城翡翠嘉年华京东掀热浪" style="">东贸珠宝城翡翠嘉年华京东掀热浪</a></span>
<span class="date">2015-07-21</span>
</li>

<li><span class="title">
<a href="#" target="_self" title="公积金贷款新政释放利好 元旦假期北京二手房买卖火爆" style="">公积金贷款新政释放利好 元旦假期北京二手房买卖火爆</a></span>
<span class="date">2015-07-21</span>
</li>

<li><span class="title">
<a href="#" target="_self" title="12月28日 引爆地铁物业升值潜力" style="">12月28日 引爆地铁物业升值潜力</a></span>
<span class="date">2015-07-21</span>
</li>

<li><span class="title">
<a href="#" target="_self" title="2014中国六大城市群排名:京津冀第三" style="">2014中国六大城市群排名:京津冀第三</a></span>
<span class="date">2015-07-21</span>
</li>

</ul>

</div>
</div></div>
 </div>
 <div class="clear main_box_inner_bottom"></div>
</div>

</body></html>