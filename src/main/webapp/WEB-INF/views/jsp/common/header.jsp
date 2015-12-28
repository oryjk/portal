<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<div class="header">
    <div class="header-nav">
        <a href="#" class="header-left">
            <img src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/logo.png">
        </a>
         <ul class="header-right">
 	<c:forEach items="${menuList }" var="menu">
 		<c:if test="${menu.type==menuType }">
            <li><a class="header-index" href="#">${menu.name }</a></li>
    	</c:if>
 			<li><a class="header-same" href="#">${menu.name }</a></li>
 	</c:forEach>
 	   
</ul>
    </div>
</div>




