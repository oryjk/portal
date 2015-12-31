<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<jsp:include page="../common/css.jsp"></jsp:include>
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery.form.js"></script>

<html>

<body>
<form action="NewcategroyAdd">
    <div class="col-xs-12">
        <div class="row">
            <div class="col-xs-12">
                <input type="text" name="name">
                    <div class="clearfix form-actions">
                        <div class="col-md-offset-3 col-md-9">
                            <button id="submit" class="btn btn-info" type="submit">
                                <i class="icon-ok bigger-110"></i>
                                提交
                            </button>
                            <button class="btn" type="reset">
                                <i class="icon-undo bigger-110"></i>
                                重置
                            </button>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
<script src="<%=basePath%>resources/core/js/news/categroy.js"></script>
<jsp:include page="../common/script.jsp"></jsp:include>

