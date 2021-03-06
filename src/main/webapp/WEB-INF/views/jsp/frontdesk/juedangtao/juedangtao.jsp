<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
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
    
	<c:forEach items="${banners}" var="banners" varStatus="status">
        <a href="#" class="banner" style="background:url(${pageContext.request.contextPath }/${banners.url}) no-repeat center center;"></a>
	</c:forEach>

    <div class="substance">
        <div class="title">
            <div class="title-left"><img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/title-logo.png"></div>
            <img class="img1" src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/jiantou.png">
            <a href="http://mp.dianjinzi.com" class="title-right">进入绝当淘商城</a>
        </div>
        <div class="substance-content">
              ${baotao.content }
		</div>

        <div class="box">
            <div class="box-top">
                <h2>绝当淘资讯</h2>
                <a href="${pageContext.request.contextPath }/news/findNews?type=3">更多<<</a>
            </div>
            <ul>
                <c:forEach items="${newslist}" var="newslist">
                    <li><a href="${pageContext.request.contextPath }/news/detail?id=${newslist.news_id}">${newslist.title}</a> <span class="time"><fmt:formatDate value="${newslist.date}" type="date" dateStyle="short"/></span></li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<!--footer-->
	<%@include file="../../common/footer.jsp" %>
</body>
</html>