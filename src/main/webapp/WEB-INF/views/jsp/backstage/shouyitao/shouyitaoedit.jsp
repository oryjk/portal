<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Insert title here</title>

 
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/core/plugins/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/core/plugins/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/core/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
 	<style type="text/css">
        div{
            width:100%;
        }
    </style>
    
   
  
</head>
<body>
	<form action="${pageContext.request.contextPath }/admin/shouYiTaoEditSubmit" method="post">
		<script id="container" name="content" type="text/plain">
        ${baotao.content}
    	</script>
		<button onclick="getContent()">提交</button>
	</form>
	
	<h2>历史记录：</h2>
	<table width="100%" border="1">
		
			<c:forEach items="${baotaoList }" var="baotaoList">
				<tr>
				
					<td width=100px align=center><fmt:formatDate value="${baotaoList.date }" type="date" dateStyle="short"/>
				<%-- 	<br/><br/><input name="updateId" type="hidden" value="${baotaoList.id}"  /> --%>
					<br/><br/><a href="${pageContext.request.contextPath }/admin/chooseShouYiTaoListEdit?updateId=${baotaoList.id}">选用</a>
					<br/><br/><a href="${pageContext.request.contextPath }/admin/deleteShouYiTaoListEdit?updateId=${baotaoList.id}">删除</a></td>
					<td>${baotaoList.content}</td>	
				</tr>
			</c:forEach>	
			
			总数：${count }
			<c:if test="${nowpage>1 }">
				<a href="${pageContext.request.contextPath }/admin/toJueDangTaoEdit?mark=${nowpage-1 }">上一页</a>
			</c:if>
			当前页：${nowpage }
			<c:if test="${nowpage<(count/3) }">
				<a href="${pageContext.request.contextPath }/admin/toJueDangTaoEdit?mark=${nowpage+1 }">下一页</a>
			</c:if>		
	
	

<script type="text/javascript">
       var ue = UE.getEditor('container');
        
       function getContent() {
        	document.getElementById("content").value=ue;
        	document.form[0].submit();
       }    
</script>

</body>
</html>