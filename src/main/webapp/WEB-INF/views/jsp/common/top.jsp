<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<script src="<%=basePath%>resources/zhongxinkeji/index/js/myfocus-2.0.4.min.js" type="text/javascript"></script>
	<script src="<%=basePath%>resources/zhongxinkeji/index/js/mf-pattern/mF_expo2010.js" type="text/javascript"></script>
	<link href="<%=basePath%>resources/zhongxinkeji/index/js/mf-pattern/mF_expo2010.css" rel="stylesheet" type="text/css">
	<link href="<%=basePath%>resources/zhongxinkeji/index/index.css" rel="stylesheet" type="text/css">
</head>

<body>
<!-- header -->
<div class="header">
	<div class="header-nav">
		<a href="#" class="header-left">
			<img src="<%=basePath%>resources/zhongxinkeji//img/logo.png">
		</a>
		<ul class="header-right">
			<li ><a class="header-index" href="#">首页</a></li>
			<li><a class="header-same" href="#">绝当淘</a></li>
			<li><a class="header-same" href="#">收益淘</a></li>
			<li><a class="header-same" href="#">新闻资讯</a></li>
			<li><a class="header-same" href="#">关于我们</a></li>
		</ul>
	</div>
</div>
</body>

</html>