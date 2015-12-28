<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
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

<div class="main-content">
    <div class="col-xs-8">
        <iframe src="<%=basePath%>news " style="border:none;width:100%;height:500px"></iframe>
    </div>
    <div class="col-xs-4">
        <div class="row">
            <div class="col-xs-12">
                <div class="space-4"></div>
                <div class="space-4"></div>
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right">新闻标题</label>

                        <div class="col-sm-9">
                            <span class="input-icon">
                                <input type="text" id="form-field-icon-1">
                                <i class="icon-leaf blue"></i>
                            </span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right">上传图片</label>

                        <div class="col-sm-9">
                            <span class="input-icon">
                                <input type="file" id="form-field-icon-1">
                            </span>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-offset-3">
                            <div class="row-fluid">
                                <ul class="ace-thumbnails">
                                    <li>
                                        <a href="<%=basePath%>resources/core/plugins/ace/assets/images/gallery/image-1.jpg" title="aphotos" data-rel="colorbox" class="cboxElement">
                                            <img alt="150x150" src="<%=basePath%>resources/core/plugins/ace/assets/images/gallery/thumb-1.jpg">
                                            <div class="tags">
                                                 <span class="label-holder">
                                                     <span class="label label-info">新闻图片</span>
                                                 </span>
                                             </div>
                                        </a>

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
                                <textarea class="form-control" id="form-field-8" placeholder="Default Text"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="clearfix form-actions">
                        <div class="col-md-offset-3 col-md-9">
                            <button class="btn btn-info" type="button">
                                <i class="icon-ok bigger-110"></i>
                                Submit
                            </button>
                            <button class="btn" type="reset">
                                <i class="icon-undo bigger-110"></i>
                                Reset
                            </button>
                        </div>
                    </div>


            </div>
        </div>
    </div><!-- PAGE CONTENT ENDS -->
</div>
<!-- /.col -->
</div>
</div>
</div>

<div class="page-content">

</div>


<script>
;!function(){
       $("a").click(function(){
           alert(1);
       })
    }();
</script>








