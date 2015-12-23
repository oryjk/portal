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
	<style>
		*{
			padding:0;
			margin: 0;
		}
		.ul{
			list-style-type: none;
			cursor: pointer;
			display: block;
			width: 100%;
			height: 30px;
			background-color: #d8d8d8;
			text-align: center;
			line-height: 30px;
			margin:auto auto;
		}
		.ul li{
			width: 100%;
			float: left;
		}
		.ul a{
			text-decoration: none;
			color: black;
		}
		.ul a:hover{
			color: red;
		}
		.none{
			display: none;
		}
	</style>
	<script>
		$(function(){

			$(".ul").find("li").hide();
			$(".ul").find("a").click(function(){
				$(this).parent().children("li").children("ul").children("li").hide();
				$(this).parent().children("li").slideToggle(1);
			});

			var arr = new Array();
			$.post("tree_info", function(data) {
				for(var i = 0; i< data.length ; i++){
					var parent = new Object();
					parent.parentNode = data[i]["parent_node"];
					parent.url = data[i]["url"];
					parent.id = data[i]["id"];
					arr.push(parent);
				}
				add_li(arr);
			},'json');

			function add_li(arr){
				for(var j = 0; j<arr.length; j++){
					$(".ul").each(function(i){
						if(arr[j]["parentNode"] == $(".ul").eq(i).attr("parentNode")){
							$(".ul").eq(i).append("<li class='none' href=" + arr[j]["url"] + ">" + arr[j]["url"] + "</li>");
						}
					});
				};
			}

			$(".open").children().show();
		});
	</script>
</head>

<SCRIPT type="text/javascript">
	<!--
	var curMenu = null, zTree_Menu = null;
	var setting = {
		view: {
			showLine: false,
			showIcon: false,
			selectedMulti: false,
			dblClickExpand: true,
			addDiyDom: addDiyDom
		},
		data: {
			simpleData: {
				enable: true
			}
		},
		callback: {
			onClick: onClick
		}
	};

	var zNodes =[
		{ id:1, pId:0, name:"1", open:true},
		{ id:11, pId:1, name:"2"},
		{ id:111, pId:11, name:"3"},
		{ id:112, pId:111, name:"4"},
		{ id:113, pId:112, name:"5"},
		{ id:114, pId:113, name:"6"},
		{ id:12, pId:1, name:"7"},
		{ id:13, pId:1, name:"8"},
		{ id:14, pId:1, name:"9"},
		{ id:15, pId:1, name:"1"},
		{ id:3, pId:0, name:"2"},
		{ id:31, pId:3, name:"3"},
		{ id:32, pId:3, name:"5"}
	];

	function addDiyDom(treeId, treeNode) {
		var spaceWidth = 5;
		var switchObj = $("#" + treeNode.tId + "_switch"),
				icoObj = $("#" + treeNode.tId + "_ico");
		switchObj.remove();
		icoObj.before(switchObj);

		if (treeNode.level > 1) {
			var spaceStr = "<span style='display: inline-block;width:" + (spaceWidth * treeNode.level)+ "px'></span>";
			switchObj.before(spaceStr);
		}
	}

	function onClick(e,treeId, treeNode) {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo");
		zTree.expandNode(treeNode);
	}

	$(document).ready(function(){
		var treeObj = $("#treeDemo");
		$.fn.zTree.init(treeObj, setting, zNodes);
		zTree_Menu = $.fn.zTree.getZTreeObj("treeDemo");
		curMenu = zTree_Menu.getNodes()[0].children[0].children[0];
		zTree_Menu.selectNode(curMenu);

		treeObj.addClass("showIcon");
	});
	//-->
</SCRIPT>
<style type="text/css">
	.ztree * {font-size: 10pt;font-family:"Microsoft Yahei",Verdana,Simsun,"Segoe UI Web Light","Segoe UI Light","Segoe UI Web Regular","Segoe UI","Segoe UI Symbol","Helvetica Neue",Arial}
	.ztree li ul{ margin:0; padding:0}
	.ztree li {line-height:30px;}
	.ztree li a {width:200px;height:30px;padding-top: 0px;}
	.ztree li a:hover {text-decoration:none; background-color: #E7E7E7;}
	.ztree li a span.button.switch {visibility:hidden}
	.ztree.showIcon li a span.button.switch {visibility:visible}
	.ztree li a.curSelectedNode {background-color:#D4D4D4;border:0;height:30px;}
	.ztree li span {line-height:30px;}
	.ztree li span.button {margin-top: -7px;}
	.ztree li span.button.switch {width: 16px;height: 16px;}

	.ztree li a.level0 span {font-size: 150%;font-weight: bold;}
	.ztree li span.button {float:right;margin-top:5px;background-image:url("./left_menuForOutLook.png"); *background-image:url("./left_menuForOutLook.gif")}
	.ztree li span.button.switch.level0 {width: 20px; height:20px}
	.ztree li span.button.switch.level1 {width: 20px; height:20px}
	.ztree li span.button.noline_open {background-position: 0 0;}
	.ztree li span.button.noline_close {background-position: -18px 0;}
	.ztree li span.button.noline_open.level0 {background-position: 0 -18px;}
	.ztree li span.button.noline_close.level0 {background-position: -18px -18px;}
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
