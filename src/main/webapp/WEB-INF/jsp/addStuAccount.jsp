<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>增加学生页</title>
<%@include file="common/head.jsp"%>

<script type="text/javascript">
	function check(obj) {
		var username = obj;
		var checkUserNameResult = document
				.getElementById("checkUserNameResult");
		if (username.trim().length == 0) {
			checkUserNameResult.innerHTML = "输入不能为空";
			obj.focus();
		} else {
			checkUserNameResult.innerHTML = "";
		}
	}
</script>

<style type="text/css">
#mydiv {
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -50px;
}

.position {
	font-size: 30px;
	size: 22;
}
</style>

</head>

<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading">
				<h2 align="center">添加学生账号</h2>
			</div>
		</div>
		<img class="pic" alt="西安邮电大学" src="../pic/logo.png">

		<form action="/firstt/admin/addStuAccount" method="post"
			class="form-horizontal">
			<!-- Registration form starts -->
			<!-- Name -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="sno">学号</label>
				<div class="col-lg-9">
					<input type="text" style="position" placeholder="请输入学号" class="form-control"
						name="sno">
				</div>
			</div>
			
			<button type="submit" class="btn btn-danger">添加</button>
		</form>
	</div>

</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="common/head.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>增加用户</title>

<script type="text/javascript">
	function check(obj) {
		var username = obj;
		var checkUserNameResult = document
				.getElementById("checkUserNameResult");
		if (username.trim().length == 0) {
			checkUserNameResult.innerHTML = "输入不能为空";
			obj.focus();
		} else {
			checkUserNameResult.innerHTML = "";
		}
	}
</script>
<style type="text/css">
#mydiv {
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -50px;
}

.position {
	font-size: 30px;
	size: 22;
}
</style>

</head>
<body>
	<!-- To-Do -->
	<img class="pic" alt="西安邮电大学" src="../pic/logo.png">

	<form action="/firstt/admin/addStuAccount" method="post">

		<div class="form-group">
			<label class="control-label col-lg-3" for="sno">请输入学号：</label>
			<div class="col-lg-9">
				<input type="text" onblur="check(this.value);"
					placeholder="请输入学生的学号" class="form-control" name="sno">
			</div>
		</div>

		<!-- <div id="mydiv">
			请输入学号：<input type="text" class="position" name="sno"
				onblur="check(this.value);"> <span id="checkUserNameResult"
				style="color: red"></span> &nbsp;&nbsp;<input type="submit" value="添加学生"
				style="font-size: 25px" size="22" width="50px">
		</div> -->
	</form>
</body>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html> --%>