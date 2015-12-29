//$(function(){
//    var options={
//        url:"fileUpload",
//        type:"post",
//        success:function(mes){
//            $("#show").empty();
//            $("#show").append("<img src=' <%=basePath%>" + mes + " '/>");
//        }
//    };
//    $("#uploadForm").submit(function() {
//        $(this).ajaxSubmit(options);
//        return false;
//    });
//
//    $("#image_submit").click(function(){
//        $("#uploadForm").submit();
//    });
//
//    $("#submit").click(function(){
//        var title = $("#title").val();
//        var content = $("#content").val();
//        var type = $("#type").val();
//
//        $.post("newsPostAdd",
//            {
//                "title":title,
//                "content":content,
//                "type":type
//            },
//            function(data){
//                layer.msg(data);
//                window.location.reload();
//            });
//    })
//});