<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% String path=request.getContextPath();
   String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>业务服务-房地产公司宽屏网站模板</title>
<meta name="Author" content="PageAdmin CMS" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="e/templates/150716/style.css" type="text/css" rel="stylesheet" />
<script src="e/js/jquery.min.js" type="text/javascript"></script>
<script src="e/js/comm.js" type="text/javascript"></script><script src="e/js/zh-cn/lang.js" type="text/javascript"></script><script src="e/js/script.js" type="text/javascript"></script>
<script src="e/js/function.js" type="text/javascript"></script>
</head>
<body>
<div class="page_style sublanmupage page_l67_sl649">
<div class="main_box main_box_style1">
 <div class="main_box_inner">
   <div class="main_box_inner_left">
<div id="nav_105"  class="nav_box nav_box_menu">

<div  class="nav_title"><span  class="nav_sign">新闻资讯</span><span  class="nav_more"></span></div>
<div id="nav_menu_105"  class="nav_menu">
<ul id="rootul_105">
<c:forEach items="${menuChildList}" var="menu">
<li id="sl647"><a href="#" class="sla647">${menu.menu_name}</a></li>
</c:forEach>
</ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_105");
expand_subnav("sl649","0");
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
   <div class="main_box_inner_right"><div class="smallbanner"><div style="border:1px solid #CBCBCB ;padding:3px 3px 0 3px;"><img src="e/images/home/nut_3.jpg"></div></div>
<div class="current_location current_location_649"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="product/">业务服务</a> &gt; <a href="#">业务服务</a></li><li class="current_location_2">业务服务</li></ul></div>
<div class="sublanmu_box sublanmu_box_649">
<div class="sublanmu_content sublanmu_content_introduct"><div class="wp-title_content" style="word-wrap:break-word;padding:10px;border-color:#CCCCCC;border-width:1px;width:664px;display:block;border-style:solid;">
	<span style="font-size:14px;line-height:200%;"><strong>物业管理</strong></span> <br />
<span style="line-height:200%;">公司设有物业管理部门，提供专业管理服务，以维持各项发展及投资计划的声誉及价值。</span><br />
<span style="line-height:200%;">公司属下各物业经理在保安员及维修员的协助下，处理各物业的日常及长期管理工作。</span><br />
<span style="line-height:200%;">公司与有关政府部门及各个业主立案法团紧密合作，为旗下各主要住宅项目内的住客，提供优质的管理服务</span><br />
<br />
<strong><span style="font-size:14px;line-height:200%;">项目管理</span></strong><br />
<span style="line-height:200%;">公司所有物业发展计划均在专业项目管理小组监督下进行，小组由建筑师、工程师及建筑才料测量师组成。</span><br />
<span style="line-height:200%;">该小组负责监督及协调工作，确保由外界顾问及承建商所进行的物业设计及建造工程均符合预算，并达至最高标准。</span><br />
<br />
<span style="font-size:14px;line-height:200%;"><strong>&nbsp;市场推广</strong></span><br />
<span style="line-height:200%;">公司属下的市场部负责处理公司大部份物业的租赁及出售工作。</span><br />
<span style="line-height:200%;">该部门提供有关物业发展设计的专业意见，以确保新的发展计划配合目前的市场需求，另外公司提供有关物业服务，例如租务接洽、估值、可行性研究及一般物业顾问服务。</span><br />
<br />
<span style="font-size:14px;line-height:200%;"><strong>电子商贸</strong></span><br />
<span style="line-height:200%;">旨在为旗下在XX的发展项目开创「真正的智能式」家居和办公室的先河，而XX物业网则致力成为XX首家网上地产代理公司。</span><br />
	<p>
		<span style="line-height:200%;">XX物业网支援公司最近在XX和XX推出的传统物业顾问服务。除了重点介绍公司的发展项目，网站还提供买卖和租赁代理服务，同时亦会为业主、租户和发展商服务。</span> 
	</p>
	<p>
		<br />
<span style="line-height:200%;"></span> 
	</p>
</div></div>
</div></div>
 </div>
 <div class="clear main_box_inner_bottom"></div>
</div>

</body></html>