<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--easy ui-->
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/themes/metro/easyui.css">
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/layer.js"></script>

<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/core/css/main.css">
<table  class="easyui-datagrid" id="tc" style="width:100%;height:450px"></table>
<script src="<%=basePath%>resources/core/js/news/categroy.js"></script>