$(function() {
	// 关于
	$('.detail').on('click', function() {
		layer.open({
			type : 2,
			title : '详细内容',
			shadeClose : true,
			shade : false,
			maxmin : true, // 开启最大化最小化按钮
			area : [ '1150px', '500px' ],
			content : 'main' // action
		});
	});
	

	$('.del').live("click", function(){
		layer.confirm('您确定要删除该条记录    - url控制？', {
			title:"提示",
		    btn: ['确定','取消'] //按钮
		}, function(){
		    layer.msg('操作成功！', {icon: 1});
		});
	}); 
	
	$('.role_control').live("click", function(){
		layer.open({
			type : 2,
			title : '访问拦截对象',
			shadeClose : true,
			shade : false,
			maxmin : true, // 开启最大化最小化按钮
			area : [ '300px', '350px' ],
			content : 'role_control' // action
		});
	}); 
	
	$('.photos').live("click", function(){
		layer.open({
			type : 2,
			title : '新闻图片',
			shadeClose : true,
			shade : false,
			maxmin : true, // 开启最大化最小化按钮
			area : [ '600px', '350px'  ],
			content : 'main' // action
		});
	}); 

});