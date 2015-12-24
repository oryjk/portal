<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset=utf-8 />
    <title>UP image</title>
 </head>
 <body>
    <form id="form1" name="form1" action="text.do" method="post" enctype="multipart/form-data">

        <input type="file" id="userImage" name="userImage">
        <input type="submit" value="OK">

      </form>
 </body>
</html>