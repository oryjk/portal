<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>新闻列表</title>
    <link rel="stylesheet" href="<%=basePath%>resources/zhongxinkeji/news-list/news-list.css">
</head>
<body>
<!-- header -->
<jsp:include page="../../common/header.jsp"></jsp:include>

<!-- content -->
<div class="content">
    <div class="news">
        <a href="#"> 新闻资讯</a>&nbsp;&nbsp; >&nbsp;&nbsp;<a class="news-in" href="#">所有</a>
    </div>
    <c:forEach items="${newslist}" var="newslist">
        <ul>
            <li class="substance">
                <a href="detail?id=${newslist.news_id}" class="title">${newslist.title}</a>
                <span class="time"><fmt:formatDate value="${newslist.date}"/></span>
                <p class="substance-font">
                        ${newslist.article}
                </p>
            </li>
        </ul>
    </c:forEach>
    <div class="substance-foot">
        页数：${page.pageNo eq 0 ? 1 : page.pageNo}/${pageCount} 总记录数：${page.rowCount}
        <a href="#">首页</a>
        <c:if test="${page.pageNo != 0}">
            <c:if test="${page.pageNo != 1}">
                 <a href="findall?pageNo=${page.pageNo-1 > 0 ? page.pageNo-1:1}">上一页</a>
            </c:if>
        </c:if>
        <c:if test="${page.pageNo+1 <= pageCount}">
            <a href="findall?pageNo=${page.pageNo+1 eq 1 ? 2 : page.pageNo+1}">下一页</a>
        </c:if>
        <a href="findall?pageNo=${pageCount}">末页</a>
        <label>
            <select>
                <c:forEach var="i" begin="1" end="${pageCount}">
                    <option>${i}</option>
                </c:forEach>
            </select>
        </label>
    </div>
</div>
<!--footer-->
<%@include file="../../common/footer.jsp" %>
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