<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>西安邮电大学</title>

</head>
<body>
	<div class="container">

		<div class="row clearfix">
			<div class="col-md-12 column">

				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="index.jsp">西安邮电大学</a>
						</div>
						<ul class="nav navbar-nav navbar-right">

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><span
									class="glyphicon glyphicon-log-in"></span> 登录<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									<li><a href="/firstt/login/stuLogin" target="_blank">学生登录</a></li>
									<li><a href="/firstt/login/companyLogin" target="display">企业登录</a></li>
									<li class="divider"></li>
									<li><a href="/firstt/login/adminLogin" target="_blank">管理员登录</a></li>
								</ul></li>
							<li><a href="/firstt/company/toRegister" target="_blank"><span
									class="glyphicon glyphicon-user"></span> 注册</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>

		<!-- 巨幕和轮播 -->
		<div class="row clearfix">
			<!-- 巨幕 -->
			<div class="col-md-8 column">
				<div class="jumbotron">
					<h1>Hello, world!</h1>
					<p>This is a template for a simple marketing or informational
						website. It includes a large callout called the hero unit and
						three supporting pieces of content. Use it as a starting point to
						create something more unique.</p>
					<p>
						<a class="btn btn-primary btn-large" href="#">Learn more</a>
					</p>
				</div>
			</div>
			<!-- /巨幕 -->

			<!-- 轮播 -->
			<div class="col-md-4 column">
				<div class="carousel slide" id="carousel-849693">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-849693"></li>
						<li data-slide-to="1" data-target="#carousel-849693"></li>
						<li data-slide-to="2" data-target="#carousel-849693"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="" src="./pic/grass.jpg" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="./pic/grass.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="./pic/grass.jpg" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-849693"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-849693"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
			<!-- /轮播 -->
		</div>

		<!-- ########################################################################### -->
		<div class="row clearfix">
			<div class="col-md-4 column">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details »</a>
				</p>
			</div>
			<div class="col-md-4 column">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details »</a>
				</p>
			</div>
			<div class="col-md-4 column">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details »</a>
				</p>
			</div>
		</div>
		<!-- ########################################################################### -->
	</div>
</body>
</html>