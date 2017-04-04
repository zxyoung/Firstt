<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>创建新的简历</title>
<%@include file="common/head.jsp"%>

<script type="text/javascript">
	function checkfun() {
		var name = document.getElementById("name").value;
		var phone = document.getElementById("phone").value;
		var email = document.getElementById("email").value;

		if (name == "") {
			alert('姓名不能为空！');
			return false;
		}
		if (phone == "") {
			alert('电话不能为空！');
			return false;
		}
		if (email == "") {
			alert('邮箱不能为空！');
			return false;
		}
		document.getElementById("formid").submit();
	}
</script>
</head>

<body>

	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading text-header">
				<h2 align="center">您还未创建简历，请先创建</h2>
			</div>
		</div>


		<form action="/firstt/student/addResume" method="post" id="formid"
			class="form-horizontal">
			<!-- Registration form starts -->

			<div class="form-group">
				<label class="control-label col-lg-3" for="name">姓名：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="name" name="name" value="">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-lg-3" for="phone">电话：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="phone" name="phone" value="">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">Email：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="email" name="email" value="">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-lg-3" for="age">年龄：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="age" value="">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="major">专业：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="major" value="">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="sno">学号：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="sno" value="">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="school">毕业院校：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="school" value="">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="experience">实习经历：</label>
				<div class="col-lg-9">
					<textarea class="form-control" rows="5" cols="25" name="experience"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="selfintro">自我介绍：</label>
				<div class="col-lg-9">
					<textarea class="form-control" rows="5" cols="25" name="selfintro"></textarea>
				</div>
			</div>

			<!-- Accept box and button s-->
			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<br />
					<button type="button" onclick="checkfun();" class="btn btn-danger">创建</button>
					<button type="reset" class="btn btn-success">关闭</button>
				</div>
			</div>
			<br />
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