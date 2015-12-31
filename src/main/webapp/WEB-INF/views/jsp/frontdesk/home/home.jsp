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
    <meta charset="UTF-8">
    <title></title>
    <script src="<%=basePath%>resources/zhongxinkeji/index/js/myfocus-2.0.4.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>resources/zhongxinkeji/index/js/mf-pattern/mF_expo2010.js" type="text/javascript"></script>
    <link href="<%=basePath%>resources/zhongxinkeji/index/js/mf-pattern/mF_expo2010.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<%=basePath%>resources/zhongxinkeji/index/index.css">
</head>



<body id="body">
<!-- header -->
<jsp:include page="../../common/header.jsp"></jsp:include>

<!-- content -->
<div class="content">
    <div class="banner">
        <div class="ad" id="expo2010-box">
            <div class="pic">
                <ul>
                    <c:forEach items="${banners}" var="banners" >
                        <li style="background:url(<%=basePath%>${banners.url}) no-repeat center center;" class="banner1"></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div class="substance">
        <div class="left-box">
            <div class="box">
                <h2>公司简介</h2>

                <p class="box-content">
                    ${companyIntro.article}
                </p>
            </div>
            <div class="box">
                <div class="box-top">
                    <h2>新闻资讯</h2>
                    <a href="<%=basePath%>news/all">更多<<</a>
                </div>
                <ul>
                    <c:forEach items="${news}" var="onenews">
                        <li>
                            <a href="news/detail?id=${onenews.news_id}">${onenews.title}</a>
                              <span class="time">
                                  <fmt:formatDate value="${onenews.date}" type="date" dateStyle="short"/>
                              </span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="right-box">
            <div class="box">
                <div class="box-top">
                    <h2>绝当淘</h2>
                    <a href="<%=basePath%>baotao/showJueDangTao">更多<<</a>
                </div>
                <div class="box-content">
                    <p> ${juedangtao} </p>
                </div>

            </div>
            <div class="box">
                <div class="box-top">
                    <h2>收益淘</h2>
                    <a href="<%=basePath%>baotao/showShouYiTao">更多<<</a>
                </div>
                <p class="box-content">
                    ${shouyitao}
                </p>
            </div>
        </div>
    </div>
</div>

<!--footer-->
<jsp:include page="../../common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
    myFocus.set({
        id: 'expo2010-box',//焦点图盒子ID
        pattern: 'mF_expo2010',//风格应用的名称
        time: 3,//切换时间间隔(秒)
        height: 425,
        trigger: 'mouseover',//触发切换模式:'click'(点击)/'mouseover'(悬停)
        txtHeight: 'default'//文字层高度设置(像素),'default'为默认高度，0为隐藏
    });
</script>
</html>