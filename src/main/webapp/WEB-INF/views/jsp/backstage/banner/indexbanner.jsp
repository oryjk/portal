<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%  String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>控制台 - （点金子）后台管理系统</title>
    <style type="text/css">
    div { margin:15px 15px;}
    table {border-left:1px solid #000;border-top:1px solid #000; text-align:center;}
    table tr td { border-right:1px solid #000; border-bottom:1px solid #000;}
    </style>

</head>

    <body>

        <div>
        <table width="900" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>ID</td>
            <td>banner</td>
            <td>添加</td>
            <td>删除</td>
          </tr>
          <c:forEach items="${banners}" var="banners">
            <tr>
                <td>${banners.banner_id}</td>
                <td><a href="<%=basePath%>${banners.url}">${banners.url}</a></td>
                <td>
                     <button  onClick="location.href='<%=basePath%>admin/banner'">添加</button>
                </td>
                <td>
                     <button value="${banners}" onClick="location.href='<%=basePath%>admin/deletebanner?banner_id=${banners.banner_id}'">删除</button>
                </td>
            </tr>
          </c:forEach>

        </table>
        </div>
    </body>

</html>
