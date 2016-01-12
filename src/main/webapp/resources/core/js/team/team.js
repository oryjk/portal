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
        url: "team_datagrid",// 这个是返回序列成的json的格式
        columns: [[{
            field: "photo_url",
            title: "头像",
            align: "center",
            width: '20%'
        }, {
            field: "username",
            title: "专家",
            align: "center",
            width: '20%'
        },{
            field: "skill",
            title: "特长领域",
            align: "center",
            width: '20%'
        }, {
            field: "user_intro",
            title: "专家简介",
            align: "center",
            width: '20%'
        },{
            field: "1",
            title: "",
            align: "center",
            width: '80px',
            formatter: function (value, rec) {
                return "<button class='alter'>修改</button>";
            }
        }, {
            field: "2",
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
    $('.alter').live('click', function() {
        var row = $('#tc').datagrid('getSelected');
        if (row) {
            layer.open({
                type: 2,
                title: '修改',
                shadeClose: true,
                shade: false,
                maxmin: true, // 开启最大化最小化按钮
                area: ['800px', '80%'],
                content: 'team_edit_view?id=' + row.id // action
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
                $.post("team_del",
                    {
                        "id":row.id
                    },
                    function(data){
                        layer.msg('操作成功！', {icon: 1});
                        window.location.reload();
                    });
            }
        });
    });

});