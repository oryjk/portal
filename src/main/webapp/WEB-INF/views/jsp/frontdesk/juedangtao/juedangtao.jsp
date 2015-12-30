<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhongxinkeji/juedangtao/juedangtao.css">
</head>
<body>
<!-- header -->
	<%@include file="../../common/header.jsp" %>
<!-- content -->
<div class="content">
	<c:forEach items="${banners}" var="banners">
         <a href="#" class="banner"><img src="${pageContext.request.contextPath }/${banners.url}"></a>
	</c:forEach>
    <div class="substance">
        <div class="title">
            <div class="title-left"><img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/title-logo.png"></div>
            <img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/jiantou.png">
            <a href="#" class="title-right">进入绝当淘商城</a>
        </div>
        <div class="substance-content">
             ${baotao.content }
        </div>

       <!--  <p>
            应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。
        </p> -->
    </div>
</div>
<!--footer-->
	<%@include file="../../common/footer.jsp" %>
</body>
</html>