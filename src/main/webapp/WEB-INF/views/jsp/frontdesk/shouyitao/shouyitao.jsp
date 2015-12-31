<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- <meta charset="UTF-8"> -->
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhongxinkeji/shouyitao/shouyitao.css">
</head>
<body>
<!-- header -->
	<%@include file="../../common/header.jsp" %>
<!-- content -->
<div class="content">
    <c:forEach items="${banners}" var="banners">
    
              <a href="#" class="banner" style="background:url(${pageContext.request.contextPath }/${banners.url}) no-repeat center center;"></a>
    </c:forEach>

    <div class="substance">
        <div class="title">
            <div class="title-left"><img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/title-logo1.png"></div>
            <img class="img12" src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/jiantou.png">
            <a href="#" class="title-right">进入淘在当商城</a>
        </div>
        <div class="substance-content">
             ${baotao.content }
        </div>

        <div class="substance-right">
            <img class="substance-img" src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/pig.jpg">
            <img class="substance-img" src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/shouyitao_09.jpg">

            <div class="substance-font">实物抵押，无坏账
                <span class="substance-font">短期项目，流动强</span>
            </div>
        </div>
    </div>
</div>
<!--footer-->
<%@include file="../../common/footer.jsp" %>
</body>
</html>