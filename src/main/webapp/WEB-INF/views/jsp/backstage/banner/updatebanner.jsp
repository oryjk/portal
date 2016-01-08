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

       <form action="<%=basePath%>admin/modifybanner" method="post">
               <h1>图片修改</h1>

           <div class="control-group">
               <label class="control-label">banner类型:</label>


               <select name="type" >
                  <option value="1"  <c:if test="${banners.type=='1'}">selected = "selected"</c:if>>首页banner</option>
                  <option value="2"  <c:if test="${banners.type=='2'}">selected = "selected"</c:if>>绝当淘banner</option>
                  <option value="3"  <c:if test="${banners.type=='3'}">selected = "selected"</c:if>>收益淘banner</option>
                  <option value="4"  <c:if test="${banners.type=='4'}">selected = "selected"</c:if>>新闻页banner</option>
                  <option value="5"  <c:if test="${banners.type=='5'}">selected = "selected"</c:if>>关于我们banner</option>
                </select>
           </div>
           <div class="control-group">
                <label class="control-label">设置是否显示：</label>
                <input type="radio" name="status" value="1" <c:if test="${banners.status=='1'}">checked="checked"</c:if>>显示
                <input type="radio" name="status" value="0" <c:if test="${banners.status=='0'}">checked="checked"</c:if>>不显示
            </div>
           <div class="control-group" style="margin-top:10px;">
               <div class="controls">
                   <input type = "hidden" name="banner_id" value="${banners.banner_id}">
                   <input type = "hidden" name="url" value="${banners.url}">
                   <p style="margin:20px"> <input value="提交" type="submit"/></p>
               </div>
           </div>
       </form>
       <p>
           <button  onClick="location.href='<%=basePath%>admin/querybanner'">返回</button>
       </p>

    </body>

</html>