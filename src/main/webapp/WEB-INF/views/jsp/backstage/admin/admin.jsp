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
</head>

<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try{ace.settings.check('navbar' , 'fixed')}catch(e){}
    </script>
    <!--head个人资料，登录退出-->
    <jsp:include page="../common/info.jsp"></jsp:include>
    <!--menu-->
    <jsp:include page="../common/menu.jsp"></jsp:include>
    <!--set-->
    <jsp:include page="../common/set.jsp"></jsp:include>

    <div id="data">

    </div>

</div><!-- /.main-container-inner -->
<!-- basic scripts -->
</body>
<jsp:include page="../common/script.jsp"></jsp:include>
</html>

<script>
    $(function(){
        $("a[path]").click(function(){
            $("#data").empty();
            $("#data").append("<iframe src=" + $(this).attr('path') + " style='width:1000px;height:800px;border:none'></iframe>")
        });
    })
</script>

