<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<meta name="viewport" content="width=device-width, initial-scale=1">
<title>毕业生就业追踪系统</title>

</head>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
	<div class="container">

		<div class="row clearfix">
			<div class="col-md-12 column">

				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="index.jsp">西安邮电大学就业追踪系统</a>
						</div>
						<ul class="nav navbar-nav navbar-right">

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><span
									class="glyphicon glyphicon-log-in"></span> 登录<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									<li><a href="/firstt/login/stuLogin" target="_blank">学生登录</a></li>
									<li><a href="/firstt/login/companyLogin" target="_blank">企业登录</a></li>
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
					<h2>西安邮电大学就业追踪系统</h2>
					<p>毕业生就业率和就业质量是衡量高校人才培养质量的一个重要因素，
						加强毕业生就业后的跟踪与调查分析是高校就业部门的一项重要工作，但是由于学生毕业后岗位的频繁变动，
						学校就业部门逐渐与毕业生失去联系，对毕业生的跟踪与调查分析显得尤其困难。毕业生离校初期实践技能比较欠缺，通过2至3年的企业实践锻炼逐渐能够独挡一面，成为企业的骨干，能力的提升导致岗位的变迁，部分毕业生可能转到本企业其它部门，也有部分毕业生可能跳槽到其它地区就业。</p>
					<p>
						<a class="btn btn-primary btn-large" target="_blank"
							href="http://baike.baidu.com/link?url=dKnqHX5iYHs4msvil6b8uU9vLuEAgB_0xdih9diwJBDBI3v9ND2PrSmwecpQc_UtGGYG-OafIshsZ4MuBkE92UJVfWhUeQyZGIqGEfx3X5DsovE-j3lRNc74GCx470tfFF_Q66iSxn8xXLmmCMWIr_">了解更多</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>