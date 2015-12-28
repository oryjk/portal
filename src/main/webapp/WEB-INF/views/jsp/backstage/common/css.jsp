<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- basic styles -->
<link href="<%=basePath%>resources/core/plugins/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>resources/core/plugins/ace/assets/css/font-awesome.min.css" />
<!--[if IE 7]>
<link rel="stylesheet" href="<%=basePath%>resources/core/plugins/ace/assets/css/font-awesome-ie7.min.css" />
<![endif]-->
<!-- page specific plugin styles -->
<!-- fonts -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
<!-- ace styles -->
<link rel="stylesheet" href="<%=basePath%>resources/core/plugins/ace/assets/css/ace.min.css" />
<link rel="stylesheet" href="<%=basePath%>resources/core/plugins/ace/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=basePath%>resources/core/plugins/ace/assets/css/ace-skins.min.css" />
<!--[if lte IE 8]>
<link rel="stylesheet" href="<%=basePath%>resources/core/plugins/ace/assets/css/ace-ie.min.css" />
<![endif]-->
<!-- inline styles related to this page -->
<!-- ace settings handler -->
