<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<body style="width:100%">
    <table  class="easyui-datagrid" id="tc" title="新闻" style="width:700px;height:400px"></table>
    <script src="<%=basePath%>resources/core/js/news/news.js"></script>
</body>

</html>
