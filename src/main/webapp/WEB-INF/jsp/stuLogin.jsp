<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生入口</title>

<script type="text/javascript">
	function check(obj) {
		var username = obj;
		var checkUserNameResult = document
				.getElementById("checkPasswordResult");
		if (username.trim().length == 0) {
			checkUserNameResult.innerHTML = "密码不能为空";
			obj.focus();
		} else {
			checkUserNameResult.innerHTML = "";
		}
	}
</script>

<style>
.form-bg {
	background: #00b4ef;
}

.form-horizontal {
	background: #fff;
	padding-bottom: 40px;
	border-radius: 15px;
	text-align: center;
}

.form-horizontal .heading {
	display: block;
	font-size: 35px;
	font-weight: 700;
	padding: 35px 0;
	border-bottom: 1px solid #f0f0f0;
	margin-bottom: 30px;
}

.form-horizontal .form-group {
	padding: 0 40px;
	margin: 0 0 25px 0;
	position: relative;
}

.form-horizontal .form-control {
	background: #f0f0f0;
	border: none;
	border-radius: 20px;
	box-shadow: none;
	padding: 0 20px 0 45px;
	height: 40px;
	transition: all 0.3s ease 0s;
}

.form-horizontal .form-control:focus {
	background: #e0e0e0;
	box-shadow: none;
	outline: 0 none;
}

.form-horizontal .form-group i {
	position: absolute;
	top: 12px;
	left: 60px;
	font-size: 17px;
	color: #c8c8c8;
	transition: all 0.5s ease 0s;
}

.form-horizontal .form-control:focus+i {
	color: #00b4ef;
}

.form-horizontal .fa-question-circle {
	display: inline-block;
	position: absolute;
	top: 12px;
	right: 60px;
	font-size: 20px;
	color: #808080;
	transition: all 0.5s ease 0s;
}

.form-horizontal .fa-question-circle:hover {
	color: #000;
}

.form-horizontal .main-checkbox {
	float: left;
	width: 20px;
	height: 20px;
	background: #11a3fc;
	border-radius: 50%;
	position: relative;
	margin: 5px 0 0 5px;
	border: 1px solid #11a3fc;
}

.form-horizontal .main-checkbox label {
	width: 20px;
	height: 20px;
	position: absolute;
	top: 0;
	left: 0;
	cursor: pointer;
}

.form-horizontal .main-checkbox label:after {
	content: "";
	width: 10px;
	height: 5px;
	position: absolute;
	top: 5px;
	left: 4px;
	border: 3px solid #fff;
	border-top: none;
	border-right: none;
	background: transparent;
	opacity: 0;
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.form-horizontal .main-checkbox input[type=checkbox] {
	visibility: hidden;
}

.form-horizontal .main-checkbox input[type=checkbox]:checked+label:after
	{
	opacity: 1;
}

.form-horizontal .text {
	float: left;
	margin-left: 7px;
	line-height: 20px;
	padding-top: 5px;
	text-transform: capitalize;
}

.form-horizontal .btn {
	float: right;
	font-size: 14px;
	color: #fff;
	background: #00b4ef;
	border-radius: 30px;
	padding: 10px 25px;
	border: none;
	text-transform: capitalize;
	transition: all 0.5s ease 0s;
}

@media only screen and (max-width: 479px) {
	.form-horizontal .form-group {
		padding: 0 25px;
	}
	.form-horizontal .form-group i {
		left: 45px;
	}
	.form-horizontal .btn {
		padding: 10px 20px;
	}
}
/* * {
	padding: 0px;
	margin: 0px;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	background: url(../pic/grass.jpg);
	font-size: 13px;
}

img {
	border: 0;
}

.lg {
	width: 468px;
	height: 468px;
	margin: 100px auto;
	background: url(../pic/login_bg.png) no-repeat;
}

.lg_top {
	height: 200px;
	width: 468px;
}

.lg_main {
	width: 400px;
	height: 180px;
	margin: 0 25px;
}

.lg_m_1 {
	width: 290px;
	height: 100px;
	padding: 60px 55px 20px 55px;
}

.ur {
	height: 37px;
	border: 0;
	color: #666;
	width: 236px;
	margin: 4px 28px;
	background: url(../pic/user.png) no-repeat;
	padding-left: 10px;
	font-size: 16pt;
	font-family: Arial, Helvetica, sans-serif;
}

.pw {
	height: 37px;
	border: 0;
	color: #666;
	width: 236px;
	margin: 4px 28px;
	background: url(../pic/password.png) no-repeat;
	padding-left: 10px;
	font-size: 16pt;
	font-family: Arial, Helvetica, sans-serif;
}

.bn {
	width: 330px;
	height: 72px;
	background: url(../pic/enter.png) no-repeat;
	border: 0;
	display: block;
	font-size: 18px;
	color: #FFF;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bolder;
}

.lg_foot {
	height: 80px;
	width: 330px;
	padding: 6px 68px 0 68px;
} */
</style>

</head>
<!-- style="background-image:url(../pic/river.jpg)" -->
<body class="b">
	<h1 style="text-align: center">毕业生就业信息系统</h1>
	<div class="container" style="background-image: url(../pic/river.jpg)">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
				<form class="form-horizontal" action="/firstt/login/student"
					method="post">
					<span class="heading">学生登录</span>
					<div class="form-group">
						<input type="text" name="sno" class="form-control"
							id="inputEmail3" placeholder="用户名"> <i class="fa fa-user"></i>
					</div>
					<div class="form-group help">
						<input type="password" name="password" class="form-control"
							id="inputPassword3" placeholder="密　码"> <i
							class="fa fa-lock"></i> <a href="#" class="fa fa-question-circle"></a>
					</div>
					<div class="form-group">
						<div class="main-checkbox">
							<input type="checkbox" value="None" id="checkbox1" name="check" />
							<label for="checkbox1"></label>
						</div>
						<span class="text">记住我</span>
						<button type="submit" class="btn btn-default">登录</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!-- 	<div class="lg">
		<form action="/firstt/login/student" method="post">
			<div class="lg_top"></div>
			<div class="lg_main">
				<div class="lg_m_1">
					<input name="sno" value="" class="ur" /> 
					<input name="password" type="password" value="" class="pw" />
				</div>
			</div>
			<div class="lg_foot">
				<input type="submit" value="登录" class="bn" />
			</div>
		</form>
	</div> -->

</body>
</html>