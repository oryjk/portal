$(function() {
    $('#tc').datagrid({
        loadMsg : "数据加载中，请稍后...",
        width : "80%",
        height : "80%",
        pageNumber : 1,
        singleSelect : true,
        pageSize : 20,
        collapsible : true,
        pageList : [ 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ],
        pagination : true,
        rownumbers : true,
        idField : "id",
        url : "info",// 这个是返回序列成的json的格式
        frozenColumns:[[
            {field:'article',title:'title',width:"30%"},
            {field:'date',title:'date',width:"20%"},
            {
                field : "1",
                title : "详细内容",
                align : "center",
                width : '80px',
                formatter : function(value, rec) {
                    return "<button class='role_control'>详细内容</button>";
                }
            }, {
                field : "2",
                title : "banner图片",
                align : "center",
                width : '120px',
                formatter : function(value, rec) {
                    return "<button class='banners'>图片</button>";
                }
            }, {
                field : "3",
                title : "del",
                align : "center",
                width : '90px',
                formatter : function(value, rec) {
                    return "<button class='del'>删除</button>";
                }
            }, {
                field : "4",
                title : "状态",
                align : "center",
                width : '90px',
                formatter : function(value, rec) {
                    return "<button class='del'>删除</button>";
                }
            }
        ]],
        columns : [ [ {
            field : "content",
            title : "访问限制角色",
            align : "center",
            width : '600px'
        },  ] ],
    });

    $(function() {
        // title css
        $(".panel-header").css({
            background : '#f5f5f6'
        });
        $("panel,.layout-expand,.layout-expand-east").find(".panel-body").attr(
            "style", "background:white");
        // title click css
        $(".layout-button-left").click(
            function() {
                $("panel,.layout-expand,.layout-expand-west").find(
                    ".panel-body").attr("style", "background:white");
            });
    });

});