<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>主菜单编辑</title>
<script type="text/javascript">
	function addMenu() {
	
		document.itemsForm.action="${pageContext.request.contextPath }/admin/addCategroyEdit"

			document.itemsForm.submit();
	}
	
</script>

</head>
<body>
<h2>主菜单编辑：</h2>

 			

	<form action="${pageContext.request.contextPath }/admin/categroyEditListSubmit" method="post">
		<table >
			<tr>				
				<td>菜单名</td>
				<td>连接地址</td>
				<td>位置</td>
				<td>删除</td>				
			</tr>
			<c:forEach items="${categroyEditList }" var="categroyEdit" varStatus="m">				
				<tr >
					<td ><input type="hidden" name="categroyEditList[${m.index }].id"  value="${categroyEdit.id }"   />
					<input type="text" name="categroyEditList[${m.index }].name" value="${categroyEdit.name }"   /></td>
					<td ><input type="text" name="categroyEditList[${m.index }].url" value="${categroyEdit.url }"   /></td>
					<td ><input type="text" name="categroyEditList[${m.index }].type" value="${categroyEdit.type }"   /></td>
					<td ><a href="${pageContext.request.contextPath }/admin/deleteCategroyEdit?did=${categroyEdit.id}">删除</a></td>					
				</tr>			
			</c:forEach>
		</table>
		<a href="${pageContext.request.contextPath }/admin/addCategroyEdit">添加</a>
		<input type="submit"  value="提交"  />
	</form>
	<
</body>
</html>