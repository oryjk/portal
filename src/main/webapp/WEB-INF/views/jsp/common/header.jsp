<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="header">
    <div class="header-nav">
        <a href="#" class="header-left">
            <img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/logo.png" alt="众鑫惠联,点金子,绝当淘">
        </a>
        <ul class="header-right">
            <c:forEach items="${menuList }" var="menu">
				<c:if test="${menu.type==menuType }">
					<li><a class="header-index" href="${pageContext.request.contextPath }/${menu.url }">${menu.name }</a></li>
				</c:if>
				<c:if test="${menu.type!=menuType }">
					<li><a class="header-same" href="${pageContext.request.contextPath }/${menu.url }">${menu.name }</a></li>
				</c:if>			
			</c:forEach>
        </ul>
    </div>
</div>




