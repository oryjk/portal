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
	<script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery-1.8.3.min.js"></script>
	<script src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/layer.js"></script>
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

		var zNodes;
		$.getJSON("<%=basePath%>resources/core/json/menu.json",function(data){
			zNodes = (data);
		})

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
		.ztree li a.level0 {width:200px;height: 20px; text-align: center; display:block; background-color: #0B61A4; border:1px silver solid;}
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
