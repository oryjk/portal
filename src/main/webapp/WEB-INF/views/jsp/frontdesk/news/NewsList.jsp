<%--
  User: 何婷婷
  Date: 15/12/28
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <a href="#">下一页</a>desk/ 
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