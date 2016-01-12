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
<form id="uploadForm" method="post" enctype="multipart/form-data">
    <input type="file" name="file" id="file"/>
    <input id="image_submit" value="上传" type="button"/>
    <div id="show"></div>
</form>
<form action="team_alter">
    <div class="col-xs-12">
        <div class="row">
            <div class="col-xs-12">
                <input type="hidden" name="id" value="${team.id}">
                <div class="space-4"></div>
                <div class="space-4"></div>
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right">专家</label>

                        <div class="col-sm-9">
                            <span class="input-icon">
                                <input type="text" name="username" value="${team.username}">
                                <i class="icon-leaf blue"></i>
                            </span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-6 col-md-offset-3">
                            <input type="text" id="imgs" name="photo_url" value="${team.photo_url}">
                        </div>
                    </div>

                    <div class="widget-body">
                        <div class="widget-main">
                            <div>
                                <label>特长领域</label>
                                <textarea class="form-control" name="skill" id="skill" placeholder="">${team.skill}</textarea>
                            </div>
                        </div>
                    </div>

                    <div class="widget-body">
                        <div class="widget-main">
                            <div>
                                <label>专家简介</label>
                                <textarea class="form-control" name="user_intro" id="user_intro" placeholder="">${team.user_intro}</textarea>
                            </div>
                        </div>
                    </div>

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
<jsp:include page="../common/script.jsp"></jsp:include>
<script>
    $(function(){
        var path = "";
        var options={
            url:"fileUpload",
            type:"post",
            success:function(url){
                $("#show").empty();
                $("#show").append("<img src=' <%=basePath%>" + url + " '/>");
                path = url;
                $("#imgs").val(path);
            }
        };
        $("#uploadForm").submit(function() {
            $(this).ajaxSubmit(options);
            return false;
        });

        $("#image_submit").click(function(){
            $("#uploadForm").submit();
        });

    });
</script>

