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
    <meta charset="utf-8" />
    <title>控制台 - （点金子）后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <jsp:include page="../common/css.jsp"></jsp:include>
    <script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/layer.js"></script>
    <script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery.form.js"></script>
</head>

    <body>

        <div style="border:1px #ccc solid;width:450px;height:200px;margin:100px auto" >
        <form action="filebanner" method="post" enctype="multipart/form-data">
            <h1 style="margin: auto">banner上传</h1>
           <p style="margin:20px"> <input type="file" name="file" id="file"/> </p>
           <p style="margin:20px">
                <select name="type" >
                  <option value="1">首页banner</option>
                  <option value="2">绝当淘banner</option>
                  <option value="3">收益淘banner</option>
                  <option value="4">新闻页banner</option>
                  <option value="5">关于我们banner</option>
                </select>
           </p>
           <p style="margin:20px"> <input value="上传" type="submit"/>         </p>
        </form>
        <p id="show" style="display:none"><c:if test="${!empty upload}">${upload}"</c:if></p>
        <script>
            $(function(){
                var info = $("#show").text();
                if(info.length > 0){
                    layer.msg(info);
                }
            })
        </script>
        </div>

    </body>
</html>





