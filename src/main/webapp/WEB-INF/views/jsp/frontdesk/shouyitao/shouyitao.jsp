<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- <meta charset="UTF-8"> -->
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhongxinkeji/shouyitao/shouyitao.css">
</head>
<body>
<!-- header -->
	<%@include file="../../common/header.jsp" %>
<!-- content -->
<div class="content">
    <c:forEach items="${banners}" var="banners">
              <a href="#" class="banner" style="background:url(${pageContext.request.contextPath }/${banners.url}) no-repeat center center;"></a>
    </c:forEach>

    <div class="substance">
        <div class="title">
            <div class="title-left"><img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/taozaidang.png"></div>
            <img class="img12" src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/jiantou.png">
            <a href="http://www.dianjinzi.com" class="title-right">进入淘在当商城</a>
        </div>
        <div class="substance-content">
             ${baotao.content }
        </div>

        <div class="box">
            <div class="box-top">
                <h2>收益淘资讯</h2>
                <a href="${pageContext.request.contextPath }/news/findNews?type=4">更多<<</a>
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