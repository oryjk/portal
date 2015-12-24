<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
	<title>dianjinzi</title>
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

</div>

<div id="west" data-options="region:'west',split:true,title:'选项单'">
	<jsp:include page="../common/menu.jsp"></jsp:include>
</div>

<div id="east" data-options="region:'east',split:true,collapsed:true,title:'Roles'">
	east
</div>

<div id="south" data-options="region:'south',border:false">

</div>

<div id="data" data-options="region:'center',title:'工作'">
	<jsp:include page="../news/index.jsp"></jsp:include>
</div>
</body>


</html>
