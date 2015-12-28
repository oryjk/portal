<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/ace-extra.min.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/html5shiv.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
    window.jQuery || document.write("<script src='<%=basePath%>resources/core/plugins/ace/assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='<%=basePath%>resources/core/plugins/ace/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
</script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/bootstrap.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/typeahead-bs2.min.js"></script>
<!-- page specific plugin scripts -->
<!--[if lte IE 8]>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/excanvas.min.js"></script>
<![endif]-->
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/jquery.slimscroll.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/jquery.sparkline.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/flot/jquery.flot.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/flot/jquery.flot.pie.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/flot/jquery.flot.resize.min.js"></script>
<!-- ace scripts -->
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/ace-elements.min.js"></script>
<script src="<%=basePath%>resources/core/plugins/ace/assets/js/ace.min.js"></script>
