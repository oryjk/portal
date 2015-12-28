<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
 <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
 <!--easy ui-->
 <script type="text/javascript" src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/jquery.min.js"></script>
 <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/themes/metro/easyui.css">
 <script type="text/javascript" src="<%=basePath%>resources/core/plugins/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
 <script src="<%=basePath%>resources/core/plugins/layer-v2.1/layer/layer.js"></script>

 <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/core/css/main.css">
 <table  class="easyui-datagrid" id="tc" style="width:100%;height:450px"></table>

<script>
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
        url: "findAllByLike",// 这个是返回序列成的json的格式
        columns: [[{
            field: "title",
            title: "新闻标题",
            align: "center",
            width: '20%'
        }, {
            field: "article",
            title: "新闻内容",
            align: "center",
            width: '20%'
        }, {
            field: "1",
            title: "",
            align: "center",
            width: '120px',
            formatter: function (value, rec) {
                return "<button class='detail'>详细内容</button>";
            }
        }, {
            field: "2",
            title: "",
            align: "center",
            width: '120px',
            formatter: function (value, rec) {
                return "<button class='pohtos'>新闻图片</button>";
            }
        }, {
            field: "3",
            title: "",
            align: "center",
            width: '80px',
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
</script>


<script>
    $(function() {
        $('.alter').live('click', function() {
            layer.open({
                type : 2,
                title : '修改',
                shadeClose : true,
                shade : false,
                maxmin : true, // 开启最大化最小化按钮
                area : [ '500px', '50%' ],
                content : 'about' // action
            });
        });

        $('.detail').live('click', function() {
            layer.open({
                type : 2,
                title : '详细信息',
                shadeClose : true,
                shade : false,
                maxmin : true, // 开启最大化最小化按钮
                area : [ '500px', '50%' ],
                content : 'about' // action
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

        $('.pohtos').live("click", function(){
            layer.open({
                type : 2,
                title : '新闻图片',
                shadeClose : true,
                shade : false,
                maxmin : true, // 开启最大化最小化按钮
                area : [ '300px', '350px' ],
                content : 'role_control' // action
            });
        });

    });
</script>