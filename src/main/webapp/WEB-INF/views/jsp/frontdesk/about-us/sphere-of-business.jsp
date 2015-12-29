<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhongxinkeji/about-us/sphere-of-business.css">
</head>
<body>
<!-- header -->
	<%@include file="../../common/header.jsp" %>
<!--content-->
<div class="content">
    <div class="list">
        <a href="#" class="about2">
            公司介绍
        </a>
        <a href="#" class="about1">
            <span class="about-left">
                <span class="about-right">业务范围</span>
            </span>
        </a>
        <a href="#" class="about2">
            招贤纳士
        </a>
        <a href="#" class="about2">
            联系我们
        </a>
    </div>
    <div class="substance">
        ${aboutus.content }

    </div>
</div>
<!--footer-->
	<%@include file="../../common/footer.jsp" %>
</body>
</html>