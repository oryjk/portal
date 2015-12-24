<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=utf-8 />
	<title>JS Bin</title>
	<script src="<%=basePath%>resources/core/plugins/jquery-1.8.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/themes/default/easyui.css">
	<script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
	<!--[if IE]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/core/css/main.css">
	<style>
		article, aside, figure, footer, header,
		menu, nav, section { display: block; }
		.west{
			width:200px;
			padding:10px;
		}
		.north{
			height:100px;
		}
	</style>
</head>

<body class="easyui-layout">

<div id="north" data-options="region:'north',border:false">
	<h1>URL Roles Control</h1>
</div>

<div id="west" data-options="region:'west',split:true,title:'Menu'">
	<jsp:include page="../common/menu.jsp"></jsp:include>
</div>

<div id="east" data-options="region:'east',split:true,collapsed:true,title:'Roles'">
	east region
</div>

<div id="south" data-options="region:'south',border:false">
	<a href="javascript:;" id="about">1111</a>
</div>

<div id="data" data-options="region:'center',title:'Main Title'">

</div>
</body>

</html>
