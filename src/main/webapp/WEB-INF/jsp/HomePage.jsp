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
<title>首页</title>



<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <!--[endif]-->
<script type="text/javascript">
	function show() {
		window.open('login.jsp');
	}
</script>
<style type="text/css">
.dropdown {
	display: inline;
	float: right;
	position: relative;
	right: 40px;
	margin-left: 5px
}

body {
	height: 100%;
	width: 100%;
	background-image: url(./logo.png);
	background-size: 100px 100px;
}
</style>


</head>
<body>
	<img alt="图片" src="./pic/logo.png">
	<!-- <img alt="图片" src="./pic/logo.png"> -->
	<div
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100px;">
		<h2 style="text-align: center">
			<a href="index.jsp">西安邮电大学</a>
		</h2>



		<div class="dropdown" style="text-align: left">
			<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
				data-toggle="dropdown">
				注册 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="/firstt/company/toRegister" target="_blank">企业注册</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="########" target="_blank">企业...</a></li>

				<li role="presentation" class="divider"></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="########" target="_blank">企业...</a></li>
			</ul>
		</div>
		&nbsp;&nbsp;
		<div class="dropdown">
			<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
				data-toggle="dropdown">
				登录 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="/firstt/login/stuLogin" target="_blank">学生登录</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="/firstt/login/companyLogin" target="_blank">企业登录</a></li>

				<li role="presentation" class="divider"></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="/firstt/login/adminLogin" target="_blank">管理员登录</a></li>
			</ul>
		</div>


	</div>
	<div
		style="position: absolute; top: 100px; left: 0px; width: 20%; height: 600px; background-color: blue">
		这是下方左部</div>

	<div
		style="position: absolute; top: 100px; left: 20%; width: 80%; height: 600px; background-color: white;">
		这是下方右部<!--  <img alt="图片" src="./pic/logo.png"> -->

		<div class="matter">
			<div class="container">

				<!-- Table -->

				<div class="row">

					<div class="col-md-12">

						<div class="widget">

							<div class="widget-head">
								<div class="pull-left">Tables</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">

								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>#</th>
											<th>公司名称</th>
											<th>所在地</th>
											<th>Age</th>
											<th>Education</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Ashok</td>
											<td>India</td>
											<td>23</td>
											<td>B.Tech</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Kumarasamy</td>
											<td>USA</td>
											<td>22</td>
											<td>BE</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Babura</td>
											<td>UK</td>
											<td>43</td>
											<td>PhD</td>
										</tr>
										<tr>
											<td>4</td>
											<td>Ravi Kumar</td>
											<td>China</td>
											<td>73</td>
											<td>PUC</td>
										</tr>
										<tr>
											<td>5</td>
											<td>Santhosh</td>
											<td>Japan</td>
											<td>43</td>
											<td>M.Tech</td>
										</tr>
									</tbody>
								</table>

								<div class="widget-foot">


									<ul class="pagination pull-right">
										<li><a href="#">Prev</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">Next</a></li>
									</ul>

									<div class="clearfix"></div>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

	</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
