<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhongxinkeji/about-us/Expert-team.css">
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
        <c:forEach items="${team_list }" var="team_list">
            <p class="sub-top">
                ${team_list.skill}
            </p>
            <div class="box">
                <img class="expet-img" src="${pageContext.request.contextPath }/${team_list.photo_url}"/>
                <div class="expet-team">
                  ${team_list.user_intro}
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<!--footer-->
    <%@include file="../../common/footer.jsp" %>
</body>
</html>