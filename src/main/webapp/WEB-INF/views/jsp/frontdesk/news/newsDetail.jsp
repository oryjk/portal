<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <link rel="stylesheet" href="<%=basePath%>resources/zhongxinkeji/news/news.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>新闻详细内容查看</title>
</head>
<body>

<jsp:include page="../../common/header.jsp"></jsp:include>

<!-- 内容 -->
<div class="content" >
    <div class="title" style="color:black;font-size:15px;font-family:楷体;" >
        <h2>${news.title}</h2>
        <span class="time">2015年11月11日</span>
    </div>
    <div class="substance" align="center">
        <c:if test="${!empty media}"><img src="<%=basePath%>${media.url}"></c:if>
        <p style="font-size:15px;
 			   font-family:楷体;text-align:left;">
            ${news.article}
        </p>
    </div>
</div>

<%@include file="../../common/footer.jsp" %>

</body>
</html>