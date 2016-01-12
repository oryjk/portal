<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery.form.js"></script>
<jsp:include page="../common/css.jsp"></jsp:include>
<div class="breadcrumbs" id="breadcrumbs">
    <script type="text/javascript">
        try {
            ace.settings.check('breadcrumbs', 'fixed')
        } catch (e) {
        }
    </script>

    <ul class="breadcrumb">
        <li>
            <i class="icon-home home-icon"></i>
            <a href="#">主页</a>
        </li>
        <li class="active">专家团队</li>
    </ul><!-- .breadcrumb -->
</div>

<div class="col-xs-12">
    <iframe src="<%=basePath%>admin/team_table" style="border:none;width:100%;height:600px"></iframe>
</div>
<div class="col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <div class="space-4"></div>
            <div class="col-xs-12">
                <div class="form-group">
                    <form id="uploadForm" method="post" enctype="multipart/form-data">
                        <input type="file" name="file" id="file"/>
                        <input id="image_submit" value="上传" type="button"/>
                    </form>
                    <div id="show"></div>
                </div>
            </div>
            <div class="space-4"></div>
            <form class="form-horizontal" role="form" action="team_add">
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right">专家</label>

                    <div class="col-sm-9">
                            <span class="input-icon">
                                <input type="text" name="username"">
                                <i class="icon-leaf blue"></i>
                            </span>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-6 col-md-offset-3">
                        <input type="text" id="imgs" name="photo_url">
                    </div>
                </div>


                <div class="widget-body">
                    <div class="widget-main">
                        <div>
                            <label for="form-field-8">特长领域</label>
                            <textarea class="form-control" name="skill" id="skill" placeholder="">${team.skill}</textarea>
                        </div>
                    </div>
                </div>

                <div class="widget-body">
                    <div class="widget-main">
                        <div>
                            <label for="form-field-8">专家简介</label>
                            <textarea class="form-control" name="user_intro" id="user_intro" placeholder="">${team.user_intro}</textarea>
                        </div>
                    </div>
                </div>

                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <button class="btn btn-info" type="submit">
                            <i class="icon-ok bigger-110"></i>
                            提交
                        </button>
                        <button class="btn" type="reset">
                            <i class="icon-undo bigger-110"></i>
                            重置
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div><!-- PAGE CONTENT ENDS -->
<!-- /.col -->
</div>
</div>
</div>


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







