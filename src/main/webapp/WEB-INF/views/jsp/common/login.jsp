<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>resources/core/css/login.css">
</head>

<!-- Fixed navbar -->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">ZHONGXINKEJI</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Sign up</a></li>
				<li><a href="#">Sign in</a></li>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</div>

<div id="header">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<h1>landing page</h1>
				<h2 class="subtitle">Welcom to ZHONGXINKEJI </h2>
				<form action="${pageContext.request.contextPath }/user/login" method="post" class="form-inline signup" role="form">
					<div class="form-group">
						<input type="text" name="username"    class="form-control" id="exampleInputEmail1" placeholder="Enter your UserName"><br/><br/>
						<input type="password"  name="password"   class="form-control" id="exampleInputEmail1" placeholder="Enter your Password"><br/><br/>
						<input type="submit" value="Get it now" class="btn btn-theme"    />
					</div>
					
				</form>
			</div>
			<div class="col-lg-4 col-lg-offset-2">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<!-- slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="assets/img/slide1.png" alt="">
						</div>
						<div class="item">
							<img src="assets/img/slide2.png" alt="">
						</div>
						<div class="item">
							<img src="assets/img/slide3.png" alt="">
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<div id="footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-lg-offset-3">
				<p class="copyright">Copyright &copy; 2014 - Bootstraptaste.com</p>
			</div>
		</div>
	</div>
</div>

</body>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>