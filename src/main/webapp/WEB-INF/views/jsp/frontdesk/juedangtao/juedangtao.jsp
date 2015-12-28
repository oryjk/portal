<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhongxinkeji/juedangtao/juedangtao.css">
</head>
<body>
<!-- header -->
	<%@include file="../../common/header.jsp" %>
<!-- content -->
<div class="content">
    <a href="#" class="banner"><img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/banner2.jpg"></a>
    <div class="substance">
        <div class="title">
            <div class="title-left"><img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/title-logo.png"></div>
            <img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/jiantou.png">
            <a href="#" class="title-right">进入绝当淘商城</a>
        </div>
       <div class="substance-content">
             ${baotao.content }
        </div>
    </div>
</div>
<!--footer-->
		<%@include file="../../common/footer.jsp" %>
</body>
</html>