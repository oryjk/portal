<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
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
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/themes/default/easyui.css">
    <script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
</head>

<body>

<form class="form-horizontal" style="text-align:center;margin-top:10%">
    <div class="control-group">
        <!-- Text input-->
        <label class="control-label" >公司简介</label>
    </div>

    <div class="control-group">
        <label class="control-label">简介内容</label>
        <textarea type="" class=""> </textarea>
    </div>

    <div class="control-group" style="margin-top:10px;">
        <div class="controls">
            <button class="btn btn-success" style="width:200px">确定</button>
        </div>
    </div>
</form>

</body>
