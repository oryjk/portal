<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<link rel="stylesheet" href="<%=basePath%>resources/core/plugins/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script src="<%=basePath%>resources/core/plugins/zTree_v3-master/js/jquery.ztree.core-3.5.min.js"></script>
	<SCRIPT type="text/javascript">
		<!--
		var curMenu = null, zTree_Menu = null;
		var setting = {
			view: {
				showLine: true,
				selectedMulti: false,
				dblClickExpand: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onNodeCreated: this.onNodeCreated,
				beforeClick: this.beforeClick,
				onClick: this.onClick
			}
		};

		zNodes = [
				{ "id":1, "pId":0, "name":"首页模块"},
				{ "id":11, "pId":1, "name":"首页"},
				{ "id":111, "pId":11, "name":"首页简介", "url_path":"index"},
				{ "id":112, "pId":11, "name":"简介修改", "url_path":"company/companyAdd"},
				{ "id":113, "pId":11, "name":"简介添加"},
				{ "id":2, "pId":0, "name":"绝当淘"},
				{ "id":21, "pId":2, "name":"添加", "url_path":"http://www.baidu.com"},
				{ "id":22, "pId":2, "name":"修改"},
				{ "id":3, "pId":0, "name":"收益淘"},
				{ "id":32, "pId":3, "name":"添加"},
				{ "id":33, "pId":3, "name":"修改"},
				{ "id":4, "pId":0, "name":"新闻咨询"},
			    { "id":413, "pId":4, "name":"查看", "url_path":"news"},
			    { "id":411, "pId":4, "name":"添加", "url_path":"newsAdd"},
		]

		function beforeClick(treeId, node) {
			if (node.isParent) {
				if (node.level === 0) {
					var pNode = curMenu;
					while (pNode && pNode.level !==0) {
						pNode = pNode.getParentNode();
					}
					if (pNode !== node) {
						var a = $("#" + pNode.tId + "_a");
						a.removeClass("cur");
						zTree_Menu.expandNode(pNode, false);
					}
					a = $("#" + node.tId + "_a");
					a.addClass("cur");

					var isOpen = false;
					for (var i=0,l=node.children.length; i<l; i++) {
						if(node.children[i].open) {
							isOpen = true;
							break;
						}
					}
					if (isOpen) {
						zTree_Menu.expandNode(node, true);
						curMenu = node;
					} else {
						zTree_Menu.expandNode(node.children[0].isParent?node.children[0]:node, true);
						curMenu = node.children[0];
					}
				} else {
					zTree_Menu.expandNode(node);
				}
			}
			return !node.isParent;
		}

		function onClick(e, treeId, node) {
			$("#data").empty();
			$("#data").load(node.url_path);
		}

		$(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			zTree_Menu = $.fn.zTree.getZTreeObj("treeDemo");
			curMenu = zTree_Menu.getNodes()[0].children[0].children[0];
			zTree_Menu.selectNode(curMenu);
			var a = $("#" + zTree_Menu.getNodes()[0].tId + "_a");
			a.addClass("cur");
		});

		//-->
	</SCRIPT>
	<style type="text/css">
		.ztree li a.level0 {width:200px;height: 25px; text-align: center; display:block; background-color: #0B61A4; border:1px silver solid;text-decoration: none}
		.ztree li a.level0.cur {background-color: #66A3D2; }
		.ztree li a.level0 span {display: block; color: white; padding-top:3px; font-size:12px; font-weight: bold;word-spacing: 2px;}
		.ztree li a.level0 span.button {	float:right; margin-left: 10px; visibility: visible;display:none;}
		.ztree li span.button.switch.level0 {display:none;}
	</style>
</HEAD>

<BODY>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
</div>
</BODY>

</html>
