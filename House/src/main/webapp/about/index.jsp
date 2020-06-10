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
<title>公司简介-房地产公司宽屏网站模板</title>
<meta name="Author" content="PageAdmin CMS" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="e/templates/150716/style.css" type="text/css" rel="stylesheet" />
<script src="e/js/jquery.min.js" type="text/javascript"></script>
<script src="e/js/comm.js" type="text/javascript"></script><script src="e/js/zh-cn/lang.js" type="text/javascript"></script><script src="e/js/script.js" type="text/javascript"></script>
<script src="e/js/function.js" type="text/javascript"></script>
</head>
<body>
<div class="main_box main_box_style1">
 <div class="main_box_inner">
   <div class="main_box_inner_left">
<div id="nav_104"  class="nav_box nav_box_menu">

<div  class="nav_title"><span  class="nav_sign">关于我们</span><span  class="nav_more"></span></div>
<div id="nav_menu_104"  class="nav_menu">
<!-- <ul id="rootul_104"><li id="sl564"><a href="#" class="sla564">公司简介</a></li>
<li id="sl565"><a href="#" class="sla565">组织架构</a></li>
<li id="sl566"><a href="#" class="sla566">发展历程</a></li>
<li id="sl625"><a href="#" class="sla625">公司场景</a></li>
<li id="sl636"><a href="#" class="sla636">公司荣誉</a></li>  -->

<c:forEach items="${menuChildList}" var="menu">
<li id="sl565"><a href="#" class="sla565">${menu.menu_name}</a></li>
</c:forEach>
</ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_104");
expand_subnav("sl564","0");
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
   <div class="main_box_inner_right"><div class="smallbanner"><div style="border:1px solid #CBCBCB ;padding:3px 3px 0 3px;"><img src="e/images/home/nut_2.jpg"></div></div>
<div class="current_location current_location_564"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="about/">关于我们</a> &gt; <a href="#">公司简介</a></li><li class="current_location_2">公司简介</li></ul></div>
<div class="sublanmu_box sublanmu_box_564">
<div class="sublanmu_content sublanmu_content_introduct"><p style="display: block"><font color="#555555"><a target="_blank" href="http://www.pageadmin.nete/upload/s1/fck/image/v2.jpg"><img vspace="5" hspace="5" border="0" align="right" alt="" src="e/upload/s1/fck/image/2011-05/13163518[1].jpg" /></a></font>PageAdmin CMS是一款支持多分站、多语种，集成内容发布、信息发布、自定义表单、自定义模型、会员系统、业务管理等功能于一体的网站管理系统，于2009年正式发布，目前全国用户已经超过50万以上，被广泛用于企业、中小学、大专院校，政府部门的网站搭建。<br />
&nbsp;<br />
<strong>PageAdmin特点</strong><br />
&nbsp;&nbsp;&nbsp; 1、简单易用、强大灵活：以前开发一个网站只能找网络公司，  做出的网站管理后台功能简单，导致后期维护、修改和扩展困难，甚至只能付费让制作公司维护，PageAdmin强大的功能、易用性、灵活扩展性完美的解决 了这些问题。因为系统经过多年发展，其间综合了大量用户的切身使用体验，大大小小经过上百次的升级更新，在操作上不断追求人性化，功能上在也日趋完善，其 中的自定义表单+自定义模型功能更是让用户可以轻松开发出自己的个性化功能。<br />
<br />
&nbsp;&nbsp;&nbsp; 2、高负载功能：一个网站负载功能在网站访问量或内容量巨大时至关重要，pageadmin通过生成静态化和数据库连接优化两个方面来提高网站的负载能力。<br />
&nbsp;&nbsp;&nbsp; 2.1、生成静态可以保证用户打开页面时不必连接数据库，从而大大提高页面访问速度和节约服务器资源；<br />
&nbsp;&nbsp;&nbsp;  2.2、采用特有的技术手段对每个表的连接都进行优化处理，保证无用字段数据不会被读取，通过实际测试，在采用sqlserver数据库的前提 下，pageadmin的子栏目列表页读取100万数据表耗时3秒左右，实际应用中都是有条件的提取数据，所以速度会更快。</p>
<p>&nbsp;&nbsp;&nbsp; 3、样式和内容分离：系统主体框架div+css结构，遵循国际最新W3C网页设计标准，兼容IE系列、火狐等主流浏览器，内容和样式分离让网站风格可以轻松修改和更换，而不会导致内容和结构的破坏。</p>
<p>&nbsp;&nbsp;&nbsp; 4、周密的安全策略和攻击防护：对SQL参数进行敏感字符过滤、对密码、cookie进行了不可逆加密处理，数据库备份功能、对管理员权限的自由分配等，在方方面面保证了系统的安全和稳定。</p>
<p><strong>主要功能：</strong><br />
&nbsp;&nbsp;&nbsp; 1、多语言、多站点：后台可以任意增加分站，每个分站可以任意设置语种，分站之间的信息可以灵活调用，可以灵活设置管理员单独管理分站。<br />
&nbsp;&nbsp;&nbsp; 2、方便灵活的栏目管理：后台可以对栏目进行任意增加，修改和删除，并可以无限级增加子栏目。<br />
&nbsp;&nbsp;&nbsp; 3、强大的信息发布功能：支持信息的发布，删除，修改，复制，转移，可自由设置置顶，最新，热门，审核等属性，管理员可以在后台发布信息，同时支持匿名投稿及会员中心投稿，会员可以在会员中心管理自己发布的信息。<br />
&nbsp;&nbsp;&nbsp;  4、自定义表单+自定义字段+自定义模型：通过后台可以任意增加表单，如系统自带的文章，图片，下载，留言，招聘等板块都通过此功能来实现；字段可以任意 增加和修改，支持常用文本字段，下拉字段，图片及图片组字段，附件及附件组字段；用户可以通过此功能实现任何个性化的功能及展示需求。<br />
&nbsp;&nbsp;&nbsp; 5、完善的SEO优化功能，后台可以生成静态，每个静态文件名，目录都可以自由设置，任意页面可以自定义标题，关键词，描述。<br />
&nbsp;&nbsp;&nbsp; 6、工作流：可以自定义信息发布的流程，比如前台投稿，需要A用户审核后转给b用户审核，在转给c用户审核。<br />
&nbsp;&nbsp;&nbsp; 7、计划任务功能：如果需要某个功能在特定时间定期执行就可以利用此功能，可以支持循环支持，可以按月，按天，按小时来设置执行时间。<br />
&nbsp;&nbsp;&nbsp; 8、信息签收功能：比如我们发布一篇文章，需要特定用户或特定用户组签收就可以用此功能，支持单用户，用户组或按部门来签收。<br />
&nbsp;&nbsp;&nbsp; 9、信息签发功能：信息审核员可以在后台或会员中心对信息进行签发和审核，支持按工作流来签发，签发后方通过审核、并显示在网站上。<br />
&nbsp;&nbsp;&nbsp; 10、在线支付功能：支持支付宝，财务通，网银在线等接口，马上支付，即时入账。<br />
&nbsp;&nbsp;&nbsp; 11、在线订购功能：用户可以对产品进行在线下单，支持订单删除，修改及支付等商务性功能。<br />
&nbsp;&nbsp;&nbsp; 12、信息发送：支持站内信息，邮件，手机短信三种发送方式，可以进行单用户发送，会员组和指定用户群发。<br />
&nbsp;&nbsp;&nbsp; 13、采集功能：采用ajax方式进行采集，可以远程图片保存到本地，可以过滤特定字符，特定url等。</p>
<p>&nbsp;&nbsp;&nbsp; 更多功能请下载系统自行体验，只要足够熟练，您想到的，PageAdmin就能做到......</p>
<p style="display: block"></p></div>
</div></div>
 </div>
 <div class="clear main_box_inner_bottom"></div>
</div>
</body></html>