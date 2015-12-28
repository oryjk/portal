<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%
	String path = request.getContextPath();
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

<body>
<!-- header -->
    <%@include file="../../common/top.jsp" %>

<!-- content -->
<div class="content">
    <div class="banner">
        <div class="ad" id="expo2010-box">
            <div class="pic">
                <ul>
                    <c:forEach items="${banners}" var="banners">
                        <li><img src="<%=basePath%>resources/${banners.url}" text=""></li>
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
                    <a href="#">更多<<</a>
                </div>
                <ul>
                 <c:forEach items="${news}" var="onenews">
                     <li><a href="#">${onenews.title}</a> <span class="time">${onenews.date}</span></li>
                 </c:forEach>

                </ul>
            </div>
        </div>
        <div class="right-box">
            <div class="box">
                <div class="box-top">
                    <h2>绝当淘</h2>
                    <a href="#">更多<<</a>
                </div>
                <div class="box-content">
                    <p>，由多家知名金融企业与专业投资机构共同创办，</p>
                    <p>
                        定位，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势。
                    </p>
                </div>

            </div>
            <div class="box">
                <div class="box-top">
                    <h2>收益淘</h2>
                    <a href="#">更多<<</a>
                </div>
                <p class="box-content">
                    成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，
                    定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势。
                </p>
            </div>
        </div>
    </div>
</div>

<!--footer-->
    <%@include file="../../common/footer.jsp" %>
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