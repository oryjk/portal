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
    <title>新闻列表</title>
    <link rel="stylesheet" href="<%=basePath%>resources/zhongxinkeji/news-list/news-list.css">
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
    <div class="news">
        <a href="#"> 新闻资讯</a>&nbsp;&nbsp; >&nbsp;&nbsp;<a class="news-in" href="#">最新动态</a>
    </div>
    <c:forEach items="${newslist}" var="newslist">
        <ul>
        <li class="substance">
        <a href="#" class="title">${newslist.title}</a>
         <span class="time"><fmt:formatDate value="${newslist.date}"/></span>
            <p class="substance-font"> 
            		${newslist.article}	
            </p>
        </li>
        </ul>
        </c:forEach>
    <div class="substance-foot">
        页数：1/4 总记录数：20
        <a href="#">首页</a>
        <a href="#">上一页</a>
        <a href="#">[1]</a>
        <a href="#">[2]</a>
        <a href="#">[3]</a>
        <a href="#">[4]</a>
        <a href="#">下一页</a>
        <a href="#">末页</a>
        <label>
        <select>
            <option value="">1</option>
            <option value="">2</option>
            <option value="">3</option>
            <option value="">4</option>
        </select>
        </label>
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