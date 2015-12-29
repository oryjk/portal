<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<jsp:include page="../common/css.jsp"></jsp:include>

<html>

<body>
<div class="col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <input type="hidden" id="news_id" value="${news_id}">
            <div class="space-4"></div>
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
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-6 col-md-offset-3">
                            <span class="input-icon">
                                <input type="file" id="file" class="btn">
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
        </div>
    </div>
</div>
</body>
</html>
<script src="<%=basePath%>resources/core/js/news/newsOperator.js"></script>
<jsp:include page="../common/script.jsp"></jsp:include>

