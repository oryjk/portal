<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%  String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>控制台 - （点金子）后台管理系统</title>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/core/plugins/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/core/plugins/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/core/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
    <style type="text/css">
            div{
                width:100%;
            }
    </style>

</head>

    <body>

       <form action="<%=basePath%>admin/modifycompany" method="post">
               <h1>公司简介修改:</h1>
           <div class="control-group">
                <label class="control-label"><h2>设置是否显示：</h2></label>
                <input type="radio" name="state" value="1" <c:if test="${companyIntro.state=='1'}">checked="checked"</c:if>/>显示
                <input type="radio" name="state" value="0" <c:if test="${companyIntro.state=='0'}">checked="checked"</c:if>/>不显示
            </div>
            <h2> 内容修改：</h2>
                <script id="container" name="article" type="text/plain">
                    ${companyIntro.article}
                </script>
           <div class="control-group" style="margin-top:10px;">
               <div class="controls">
                   <input type = "hidden" name="title" value="${companyIntro.title}"/>
                   <input type = "hidden" name="date" value="${companyIntro.date}"/>
                   <input type = "hidden" name="companyintro_id" value="${companyIntro.companyintro_id}"/>
                   <input value="提交" type="submit"/></p>
               </div>
           </div>
       </form>
       <p>
           <button  onClick="location.href='<%=basePath%>admin/querycompany'">返回</button>
       </p>

       <script type="text/javascript">
              var ue = UE.getEditor('container');
       </script>

    </body>

</html>