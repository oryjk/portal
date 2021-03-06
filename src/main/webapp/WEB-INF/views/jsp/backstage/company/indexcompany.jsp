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
            <td>内容</td>
            <td>当前状态</td>
            <td>修改</td>
            <td>删除</td>
          </tr>
          <c:forEach items="${companyIntros}" var="companyIntros">
            <tr>
                <td>${companyIntros.companyintro_id}</td>
                <td>${companyIntros.article}</td>
                <td >
                    <c:if test="${companyIntros.state=='1'}">显示</c:if>
                    <c:if test="${companyIntros.state=='0'}">不显示</c:if>
                </td>
                <td>
                <button value="${companyIntros}" onClick="location.href='<%=basePath%>admin/querymodifycompany?companyintro_id=${companyIntros.companyintro_id}'">修改</button>
                </td>
                <td>
                     <button value="${companyIntros}" onClick="location.href='<%=basePath%>admin/deletecompany?companyintro_id=${companyIntros.companyintro_id}'">删除</button>
                </td>
            </tr>
          </c:forEach>

        </table>
                <button  onClick="location.href='<%=basePath%>admin/company'">添加</button>
        </div>
    </body>

</html>
