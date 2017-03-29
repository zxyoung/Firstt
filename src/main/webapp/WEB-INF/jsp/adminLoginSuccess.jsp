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
<title>管理员，欢迎您使用</title>

<script type="text/javascript">
	function checkfun(){
	    var folder = document.getElementById("sno").value;
	    if(folder==""){
	        alert('输入不能为空！');
	        return false;
	        }
	    document.getElementById("formid").submit();
	         
	}
</script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">西安邮电大学</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a target="_blank"
								href="/firstt/admin/listStuAccount">学生信息</a></li>
							<li><a target="_blank" href="/firstt/admin/listCompanyInfo">公司信息</a></li>
							<li class="active"><a target="_blank"
								href="/firstt/admin/listEmploymentInfo">就业信息</a></li>
							<li><a target="_blank" href="/firstt/admin/listNoticeInfo">招聘信息</a></li>
							<li class="active"><a target="_blank"
								href="/firstt/admin/sendEmail">发送邮件</a></li>
						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href="/firstt/login/adminlogout">${sessionScope.adminSession.username}
									退出</a></li>
						</ul>

						<!-- 搜索功能 -->
						<form action="/firstt/admin/selectAccountSno" id="formid" method="post"
							target="_blank" class="navbar-form navbar-left" role="search">
							<!-- 	<div class="form-group"> -->

							<div class="col-lg-6">
								<div class="input-group">
									<input name="sno" id="sno" size="40" type="text" placeholder="请输入学号..."
										class="form-control"> <span class="input-group-btn">
										<button class="btn btn-default" onclick="checkfun();" type="button">搜索</button>
									</span>
								</div>
								<!-- /input-group -->
							</div>
						</form>

					</div>
				</nav>
			</div>
		</div>

		<div class="row clearfix">
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
							<img alt="" src="../pic/grass.jpg" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="../pic/grass.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="../pic/grass.jpg" />
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