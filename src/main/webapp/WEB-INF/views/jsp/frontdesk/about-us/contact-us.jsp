<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhongxinkeji/about-us/contact-us.css">
</head>
<body>
<!-- header -->
	<%@include file="../../common/header.jsp" %>
<!--content-->
<div class="content">
    <div class="list">
      <c:forEach items="${categroyList }" var="categroy">
 			<c:if test="${categroy.type==categroyType }">
 				 <a href="${pageContext.request.contextPath }/${categroy.url }" class="about1"><span class="about-left"><span class="about-right">${categroy.name }</span></span></a>
    		</c:if>
    		<c:if test="${categroy.type!=categroyType }">
           		 <a href="${pageContext.request.contextPath }/${categroy.url }" class="about2">${categroy.name }</a>
    		</c:if>			
 		</c:forEach>

    </div>
    <div class="substance">
        <img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/map.jpg">
        ${aboutus.content }
    </div>
</div>
<!--footer-->
	<%@include file="../../common/footer.jsp" %>
</body>
</html>