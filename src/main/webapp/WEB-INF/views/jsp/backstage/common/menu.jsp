<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {
                }
            </script>

            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                    <button class="btn btn-success">
                        <i class="icon-signal"></i>
                    </button>

                    <button class="btn btn-info">
                        <i class="icon-pencil"></i>
                    </button>

                    <button class="btn btn-warning">
                        <i class="icon-group"></i>
                    </button>

                    <button class="btn btn-danger">
                        <i class="icon-cogs"></i>
                    </button>
                </div>

                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
                </div>
            </div><!-- #sidebar-shortcuts -->

            <ul class="nav nav-list">
                <%--<li class="active">--%>
                    <%--<a href="#" path="<%=basePath%>newsAdd">--%>
                        <%--<i class="icon-dashboard"></i>--%>
                        <%--<span class="menu-text"> 用户 </span>--%>
                    <%--</a>--%>
                <%--</li>--%>

                <li>
                    <a path="toJueDangTaoEdit">
                        <i class="icon-text-width"></i>
                        <span class="menu-text"> 绝当淘 </span>
                    </a>
                </li>

                <li>
                    <a path="toShouYiTaoEdit" class="dropdown-toggle">
                        <i class="icon-desktop"></i>
                        <span class="menu-text"> 收益淘 </span>
                    </a>
                </li>

                <li>
                    <a class="dropdown-toggle">
                        <i class="icon-desktop"></i>
                        <span class="menu-text"> banner </span>
                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a path="querybanner" >
                                <i class="icon-double-angle-right"></i>
                                查询banner
                            </a>
                        </li>
                        <li>
                            <a path="banner">
                                <i class="icon-double-angle-right"></i>
                                添加banner
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a class="dropdown-toggle">
                        <i class="icon-list"></i>
                        <span class="menu-text"> 新闻 </span>
                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a path="view">
                                <i class="icon-double-angle-right"></i>
                                新闻咨询
                            </a>
                        </li>
                       <li>
                            <a path="NewcategroyView">
                                <i class="icon-double-angle-right"></i>
                                新闻分类
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-edit"></i>
                        <span class="menu-text"> 关于我们 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a path="companyIntroductionEdit">
                                <i class="icon-double-angle-right"></i>
                                公司介绍
                            </a>
                        </li>

                        <li>
                            <a path="contactUsEdit">
                                <i class="icon-double-angle-right"></i>
                                联系我们
                            </a>
                        </li>

                        <li>
                            <a path="recruitmentEdit">
                                <i class="icon-double-angle-right"></i>
                                招贤纳士
                            </a>
                        </li>

                        <li>
                            <a path="sphereOfBusinessEdit">
                                <i class="icon-double-angle-right"></i>
                                业务范围
                            </a>
                        </li>

                        <li>
                            <a path="toCategroyEdit">
                                <i class="icon-double-angle-right"></i>
                                关于我们菜单
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a path="toMenuEdit" class="dropdown-toggle">
                        <i class="icon-edit"></i>
                        <span class="menu-text"> 菜单编辑 </span>
                    </a>
                </li>

                <%--<li>--%>
                    <%--<a href="calendar.html">--%>
                        <%--<i class="icon-calendar"></i>--%>
						<%--<span class="menu-text">--%>
							<%--日志--%>
						    <%--<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">--%>
							    <%--<i class="icon-warning-sign red bigger-130"></i>--%>
                            <%--</span>--%>
                       <%--</span>--%>
                    <%--</a>--%>
                <%--</li>--%>
            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>
    </div><!-- /span -->
</div>