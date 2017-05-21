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
<!-- <link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
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
					<p>西安邮电大学（Xi`an University of Posts &
						Telecommunications）简称“西邮”，位于古都西安，创建于1950年，是国家工业和信息化部与陕西省政府共建高校，国家布点设立并重点建设的几所邮电高校之一。1959年3月经国务院批准开始本科教育并定名为西安邮电学院，成为邮电部、信息产业部（现工业和信息化部）直属重点高校；2000
						年划归陕西省...</p>
					<p>
						<a class="btn btn-primary btn-large" target="_blank"
							href="http://baike.baidu.com/link?url=dKnqHX5iYHs4msvil6b8uU9vLuEAgB_0xdih9diwJBDBI3v9ND2PrSmwecpQc_UtGGYG-OafIshsZ4MuBkE92UJVfWhUeQyZGIqGEfx3X5DsovE-j3lRNc74GCx470tfFF_Q66iSxn8xXLmmCMWIr_">了解更多</a>
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
							<img alt="" src="./pic/11.jpg" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p></p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="./pic/22.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p></p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="./pic/33.jpg" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p></p>
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
		~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~最新招聘信息~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		<div class="jumbotron">
			<div class="row clearfix">
				<div class="">
					<div class="col-md-4 column">
						<h3>中信建投证券股份有限公司</h3>
						招聘岗位：理财规划师 （若干） 岗位职责： ...
						<p>
							<a class="btn" href="/firstt/admin/26/noticeDetail"
								target="_blank">查看详情 »</a>
						</p>
					</div>
				</div>
				<div class="col-md-4 column">
					<h3>深圳广播电影电视集团</h3>
					招聘信息： 股票分析员 任职要求： 1、本科及以上学历...<
					<p>
						<a class="btn" href="/firstt/admin/25/noticeDetail"
							target="_blank">查看详情 »</a>
					</p>
				</div>
				<div class="col-md-4 column">
					<h3>中国太平洋财产保险股份有限公司陕西分公司</h3>
					中国太平洋财产保险股份有限公司陕西分公司成立于1993年，先后承保了青藏铁路、亚太二号C卫星、工商银行、西合铁路、绕城高速、铜黄高速、咸阳机场等重大项目，为繁荣陕西省保险市场，促进地方经济发展起到了重要的作用。
					岗位要求： 1.全日制大学本科及以上学历...
					<p>
						<a class="btn" href="/firstt/admin/24/noticeDetail"
							target="_blank">查看详情 »</a>
					</p>
				</div>
			</div>
		</div>
		<!-- ########################################################################### -->
	</div>
</body>
</html>