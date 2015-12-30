<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>控制台 - （点金子）后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <jsp:include page="../common/css.jsp"></jsp:include>
    <script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/layer.js"></script>
    <script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery.form.js"></script>
</head>

<body>
<div style="border:1px #ccc solid;width:450px;height:300px;margin:150px auto" >
<form action="uploadbanner" method="post">
        <h1>公司简介</h1>

    <div class="control-group">
        <label class="control-label">简介内容:</label>
        <textarea name="content"></textarea>
    </div>

    <div class="control-group" style="margin-top:10px;">
        <div class="controls">
            <p style="margin:20px"> <input value="提交" type="submit"/>         </p>
        </div>
    </div>
</form>
</div>
</body>