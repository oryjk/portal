$(function () {
    $('#tc').datagrid({
        loadMsg: "数据加载中，请稍后...",
        pageNumber: 1,
        singleSelect: true,
        pageSize: 20,
        collapsible: true,
        pageList: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100],
        pagination: true,
        rownumbers: true,
        idField: "id",
        url: "NewCategroyTable",// 这个是返回序列成的json的格式
        columns: [[{
            field: "newsCategroy_id",
            title: "categroy_id",
            align: "center",
            width: '20%'
        }, {
            field: "name",
            title: "分类名",
            align: "center",
            width: '20%'
        }, {
            field: "1",
            title: "",
            align: "center",
            width: '120px',
            formatter: function (value, rec) {
                return "<button class='add'>添加</button>";
            }
        }, {
            field: "2",
            title: "",
            align: "center",
            width: '120px',
            formatter: function (value, rec) {
                return "<button class='alter'>修改</button>";
            }
        }, {
            field: "4",
            title: "",
            align: "center",
            width: '80px',
            formatter: function (value, rec) {
                return "<button class='del'>删除</button>";
            }
        }
        ]]
    });

});



$(function() {
    $('.add').live('click', function() {
        var row = $('#tc').datagrid('getSelected');
        if (row) {
            layer.open({
                type: 2,
                title: '修改',
                shadeClose: true,
                shade: false,
                maxmin: true, // 开启最大化最小化按钮
                area: ['500px', '50%'],
                content: 'NewcategroyAddView'
            });
        }
    });

    $('.alter').live('click', function() {
        var row = $('#tc').datagrid('getSelected');
        if (row){
            layer.open({
                type : 2,
                title : '详细信息',
                shadeClose : true,
                shade : false,
                maxmin : true, // 开启最大化最小化按钮
                area : [ '1000', '350px' ],
                content : 'NewcategroyEditView?id=' + row.newsCategroy_id // action
            });
        }
    });


    $('.del').live("click", function(){
        layer.confirm('您确定要删除该条记录', {
            title:"提示",
            btn: ['确定','取消'] //按钮
        }, function(){
            var row = $('#tc').datagrid('getSelected');
            if (row){
                $.post("NewcategroyView/del",
                    {
                        "id":row.newsCategroy_id
                    },
                    function(data){
                        layer.msg('操作成功！', {icon: 1});
                        window.location.reload();
                    });
            }
        });
    });

});