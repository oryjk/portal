<%@ page language="java" pageEncoding="UTF-8"%>
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
	<form action="${pageContext.request.contextPath }/admin/sphereOfBusinessEditSubmit" method="post">
		<script id="container" name="content" type="text/plain">
        ${aboutus.content}
    	</script>
		<button onclick="getContent()">提交</button>
	</form>

<script type="text/javascript">
       var ue = UE.getEditor('container');
        
       function getContent() {
        	document.getElementById("content").value=ue;
        	document.form[0].submit();
       }    
</script>

</body>
</html>