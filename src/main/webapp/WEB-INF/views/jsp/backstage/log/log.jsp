<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="main-content">
    <div class="breadcrumbs" id="breadcrumbs">
        <ul class="breadcrumb">
            <li>
                <i class="icon-home home-icon"></i>
                <a href="#">首页</a>
            </li>
            <li class="active">访问日志</li>
        </ul><!-- .breadcrumb -->
        <div class="nav-search" id="nav-search">
            <form class="form-search">
                <span class="input-icon">
                    <input type="text" placeholder="Search ..."  style="margin-right:200px;" class="nav-search-input" id="nav-search-input" autocomplete="off" />
                    <i class="icon-search nav-search-icon"></i>
                </span>
            </form>
        </div><!-- #nav-search -->
    </div>

    <div class="page-content">
        <div class="row">
            <div class="col-xs-12">
                <div class="row">
                    <div class="space-6"></div>

                    <div class="col-sm-7 infobox-container">

                        <div class="itemdiv memberdiv">
                            <div class="user">
                                <img alt="Jim Doe's avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Jim Doe</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="green">2 hour</span>
                                </div>

                                <div>
                                    <span class="label label-warning label-sm">pending</span>

                                    <div class="inline position-relative">
                                        <button class="btn btn-minier bigger btn-yellow btn-no-border dropdown-toggle" data-toggle="dropdown">
                                            <i class="icon-angle-down icon-only bigger-120"></i>
                                        </button>

                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                            <li>
                                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Approve">
																							<span class="green">
																								<i class="icon-ok bigger-110"></i>
																							</span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-warning" data-rel="tooltip" title="Reject">
																							<span class="orange">
																								<i class="icon-remove bigger-110"></i>
																							</span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																							<span class="red">
																								<i class="icon-trash bigger-110"></i>
																							</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv memberdiv">
                            <div class="user">
                                <img alt="Alex Doe's avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar5.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Alex Doe</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="green">3 hour</span>
                                </div>

                                <div>
                                    <span class="label label-danger label-sm">blocked</span>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv memberdiv">
                            <div class="user">
                                <img alt="Bob Doe's avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar2.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Bob Doe</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="green">6 hour</span>
                                </div>

                                <div>
                                    <span class="label label-success label-sm arrowed-in">approved</span>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv memberdiv">
                            <div class="user">
                                <img alt="Susan's avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar3.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Susan</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="green">yesterday</span>
                                </div>

                                <div>
                                    <span class="label label-success label-sm arrowed-in">approved</span>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv memberdiv">
                            <div class="user">
                                <img alt="Phil Doe's avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar4.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Phil Doe</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="green">2 days ago</span>
                                </div>

                                <div>
                                    <span class="label label-info label-sm arrowed-in arrowed-in-right">online</span>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv memberdiv">
                            <div class="user">
                                <img alt="Alexa Doe's avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar1.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Alexa Doe</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="green">3天以前</span>
                                </div>

                                <div>
                                    <span class="label label-success label-sm arrowed-in">approved</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- member-tab -->

                <div id="comment-tab" class="tab-pane">
                    <div class="comments">
                        <div class="itemdiv commentdiv">
                            <div class="user">
                                <img alt="Bob Doe's Avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Bob Doe</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="green">6 min</span>
                                </div>

                                <div class="text">
                                    <i class="icon-quote-left"></i>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis &hellip;
                                </div>
                            </div>

                            <div class="tools">
                                <div class="inline position-relative">
                                    <button class="btn btn-minier bigger btn-yellow dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-angle-down icon-only bigger-120"></i>
                                    </button>

                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                        <li>
                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Approve">
																						<span class="green">
																							<i class="icon-ok bigger-110"></i>
																						</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" class="tooltip-warning" data-rel="tooltip" title="Reject">
																						<span class="orange">
																							<i class="icon-remove bigger-110"></i>
																						</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																						<span class="red">
																							<i class="icon-trash bigger-110"></i>
																						</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv commentdiv">
                            <div class="user">
                                <img alt="Jennifer's Avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar1.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Jennifer</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="blue">15 min</span>
                                </div>

                                <div class="text">
                                    <i class="icon-quote-left"></i>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis &hellip;
                                </div>
                            </div>

                            <div class="tools">
                                <div class="action-buttons bigger-125">
                                    <a href="#">
                                        <i class="icon-pencil blue"></i>
                                    </a>

                                    <a href="#">
                                        <i class="icon-trash red"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv commentdiv">
                            <div class="user">
                                <img alt="Joe's Avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar2.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Joe</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="orange">22 min</span>
                                </div>

                                <div class="text">
                                    <i class="icon-quote-left"></i>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis &hellip;
                                </div>
                            </div>

                            <div class="tools">
                                <div class="action-buttons bigger-125">
                                    <a href="#">
                                        <i class="icon-pencil blue"></i>
                                    </a>

                                    <a href="#">
                                        <i class="icon-trash red"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="itemdiv commentdiv">
                            <div class="user">
                                <img alt="Rita's Avatar" src="<%=basePath%>resources/core/plugins/ace/assets/avatars/avatar3.png" />
                            </div>

                            <div class="body">
                                <div class="name">
                                    <a href="#">Rita</a>
                                </div>

                                <div class="time">
                                    <i class="icon-time"></i>
                                    <span class="red">50 min</span>
                                </div>

                                <div class="text">
                                    <i class="icon-quote-left"></i>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis &hellip;
                                </div>
                            </div>

                            <div class="tools">
                                <div class="action-buttons bigger-125">
                                    <a href="#">
                                        <i class="icon-pencil blue"></i>
                                    </a>

                                    <a href="#">
                                        <i class="icon-trash red"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="hr hr8"></div>

                    <div class="center">
                        <i class="icon-comments-alt icon-2x green"></i>

                        &nbsp;
                        <a href="#">
                            See all comments &nbsp;
                            <i class="icon-arrow-right"></i>
                        </a>
                    </div>

                    <div class="hr hr-double hr8"></div>
                </div>
            </div>
        </div><!-- /widget-main -->
    </div><!-- /widget-body -->
</div><!-- /widget-box -->