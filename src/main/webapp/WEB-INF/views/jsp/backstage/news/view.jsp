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
        <li class="active">新闻咨询</li>
    </ul><!-- .breadcrumb -->
</div>

<div class="col-xs-12">
    <iframe src="<%=basePath%>admin/news" style="border:none;width:100%;height:500px"></iframe>
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
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right">新闻标题</label>

                    <div class="col-sm-9">
                            <span class="input-icon">
                                <input type="text" id="title">
                                <i class="icon-leaf blue"></i>
                            </span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right">新闻类型</label>
                    <div class="col-sm-9">
                        <select id="type">
                            <option value="1">公司新闻</option>
                            <option value="2">热点新闻</option>
                            <option value="3">绝当淘</option>
                            <option value="4">收益淘</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-6 col-md-offset-3">
                        <div class="row-fluid">
                            <ul class="ace-thumbnails">
                                <li>
                                    <div id="show"></div>
                                    <div class="tools">
                                        <a href="#">
                                            <i class="icon-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="icon-paper-clip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="icon-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="icon-remove red"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->

                <div class="widget-body">
                    <div class="widget-main">
                        <div>
                            <label for="form-field-8">新闻内容</label>
                            <textarea class="form-control" id="content" placeholder="输入内容：15字以上"></textarea>
                        </div>
                    </div>
                </div>

                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <button id="submit" class="btn btn-info" type="button">
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





<script src="<%=basePath%>resources/core/js/news/newsOperator.js"></script>
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
            }
        };
        $("#uploadForm").submit(function() {
            $(this).ajaxSubmit(options);
            return false;
        });

        $("#image_submit").click(function(){
            $("#uploadForm").submit();
        });

        $("#submit").click(function(){
            var title = $("#title").val();
            var content = $("#content").val();
            var type = $("#type").val();
            alert(path)
            $.post("newsPostAdd",
                    {
                        "title":title,
                        "content":content,
                        "type":type,
                        "url":path
                    },
                    function(data){
                        layer.msg(data);
                        window.location.reload();
                    });
        })
    });
</script>






