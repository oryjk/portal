<%--
  User: 何婷婷
  Date: 15/12/28
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>新闻资讯</title>
    <link href="<%=basePath%>resources/zhongxinkeji/news-index/news-index.css" rel="stylesheet">
<title>新闻资讯</title>
</head>
<body> 
<!-- header -->
<div class="header">
    <div class="header-nav">
        <a href="#" class="header-left">
            <img src="<%=basePath%>resources/zhongxinkeji/img/logo.png" alt="众鑫惠联,点金子,绝当淘">
        </a>
        <ul class="header-right">
            <li><a class="header-same" href="#">首页</a></li>
            <li><a class="header-same" href="#">绝当淘</a></li>
            <li><a class="header-same" href="#">收益淘</a></li>
            <li><a class="header-index" href="#">新闻资讯</a></li>
            <li><a class="header-same" href="#">关于我们</a></li>
        </ul>
    </div>
</div>
<!-- content -->
<div class="content">
    <a href="#" class="banner"><img src="<%=basePath%>resources/zhongxinkeji/img/banner2.jpg"></a>
    <div class="substance">
        <div class="title1"><h2>最新动态</h2> <a href="#" class="title1-right">更多>></a></div>
         <c:forEach items="${newslist}" var="newslist">
        <ul>
        <li class="substance2">
        <a href="#" class="title">${newslist.title}</a>
         <span class="time"> <fmt:formatDate value="${newslist.date}"/></span>
            <p class="substance-font"> 
            		${newslist.article}	
            </p>
        </li>
        </ul>
        </c:forEach>
       
        <div class="box-all">
            <div class="box">
                <div class="box-top">
                    <h2>新闻资讯</h2>
                    <a href="#">更多<< </a>
                </div>
                 <c:forEach items="${newslist}" var="newslist">
                <ul>
                    <li><a href="#">${newslist.title}</a> <span class="time"><fmt:formatDate value="${newslist.date}"/></span></li>
                </ul>
                </c:forEach>
            </div>
            <div class="box1">
                <div class="box-top">
                    <h2>媒体动态</h2>
                    <a href="#">更多<< </a>
                </div>
               <c:forEach items="${newslist}" var="newslist">
                <ul>
                    <li><a href="#">${newslist.title}</a> <span class="time"><fmt:formatDate value="${newslist.date}"/></span></li>
                </ul>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!--footer-->
<div class="footer">
    <div class="footer-content">
        <div class="footer-left">
            <ul class="footer-content-left">
                <li class="footer-index"><a href="#">首页</a></li>
                <li><a href="#">绝当淘</a></li>
                <li><a href="#">收益淘</a></li>
                <li><a href="#">新闻资讯</a></li>
                <li class="footer-about"><a href="#">关于我们</a></li>
            </ul>
            <div class="footer-content-left">
                联系电话：028-85033350
                <div class="footer-add">公司地址：成都市武侯区武阳大道5号下一站都市A座302</div>
            </div>
        </div>
        <div class="footer-right-all">
            <div class="footer-right">
                版权所有：众鑫惠联网络科技有限公司（成都）
                <span class="qr-code">扫码下载官方APP </span>

                <div class="footer-right-c">蜀ICP备15022028号 2015 dianjinzi,Inc.Allrights reserved.</div>
            </div>
            <img class="footer-img" src="<%=basePath%>resources/zhongxinkeji/img/QR%20Code.jpg">
        </div>

    </div>
</div>
</body>
</html>