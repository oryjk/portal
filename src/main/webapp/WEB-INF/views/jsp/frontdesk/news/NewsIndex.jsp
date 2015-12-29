<%--
  User: 何婷婷
  Date: 15/12/28
--%>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
</head>
<body> 
<!-- header -->
<jsp:include page="../../common/header.jsp"></jsp:include>

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
                 <c:forEach items="${newslist2}" var="newslist2">
                <ul>
                    <li><a href="#">${newslist2.title}</a> <span class="time"><fmt:formatDate value="${newslist2.date}"/></span></li>
                </ul>
                </c:forEach>
            </div>
            <div class="box1">
                <div class="box-top">
                    <h2>媒体动态</h2>
                    <a href="#">更多<< </a>
                </div>
               <c:forEach items="${newslist2}" var="newslist2">
                <ul>
                    <li><a href="#">${newslist2.title}</a> <span class="time"><fmt:formatDate value="${newslist2.date}"/></span></li>
                </ul>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!--footer-->
 <jsp:include page="../../common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
    myFocus.set({
        id:'expo2010-box',//焦点图盒子ID
        pattern:'mF_expo2010',//风格应用的名称
        time:3,//切换时间间隔(秒)
        height:425,
        trigger:'mouseover',//触发切换模式:'click'(点击)/'mouseover'(悬停)
        txtHeight:'default'//文字层高度设置(像素),'default'为默认高度，0为隐藏
    });
</script>
</html>