<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../common/css.jsp"></jsp:include>
</head>

<body>
<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->

        <div class="row-fluid">
            <ul class="ace-thumbnails">
                <c:forEach var="media" items="${media}">
                    <li>
                        <a href="<%=basePath%>${media.url}" data-rel="colorbox">
                            <img alt="150x150" src="<%=basePath%>${media.url}" />
                        </a>

                        <div class="tools tools-top">
                            <a href="#">
                                <i class="icon-link"></i>
                            </a>

                            <a href="#">
                                <i class="icon-paper-clip"></i>
                            </a>

                            <a href="#">
                                <i class="icon-pencil"></i>
                            </a>

                            <a href="#">
                                <i class="icon-remove red"></i>
                            </a>
                        </div>
                    </li>
                </c:forEach><p>
            </ul>
        </div><!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div><!-- /.row -->
</body>
    <jsp:include page="../common/script.jsp"></jsp:include>
</html>

