$(function() {
    $('#tc').datagrid({
        loadMsg : "数据加载中，请稍后...",
        pageNumber : 1,
        singleSelect : true,
        pageSize : 20,
        collapsible : true,
        pageList : [ 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ],
        pagination : true,
        rownumbers : true,
        idField : "id",
        url :"findAllByLike",// 这个是返回序列成的json的格式
        columns : [ [ {
            field : "title",
            title : "新闻标题",
            align : "center",
            width : '20%'
        },{
        field : "article",
            title : "新闻内容",
            align : "center",
            width : '20%'
        },{
            field : "1",
            title : "",
            align : "center",
            width : '120px',
            formatter : function(value, rec) {
                return "<button class='detail'>详细内容</button>";
            }
        },{
            field : "2",
            title : "",
            align : "center",
            width : '120px',
            formatter : function(value, rec) {
                return "<button class='pohtos'>新闻图片</button>";
            }
        },{
            field : "3",
            title : "",
            align : "center",
            width : '120px',
            formatter : function(value, rec) {
                return "<button class='del'>删除</button>";
            }
        }
        ] ]
    });

});