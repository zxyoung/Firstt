<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>简历详情页</title>
<%@include file="common/head.jsp"%>
</head>

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

<body>

	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading text-header">
				<h2 align="center">${resume.name}的简历</h2>
			</div>
		</div>


		<form action="/firstt/student/${resume.id}/updateResume" method="post"
			id="formid" class="form-horizontal">
			<!-- Registration form starts -->

			<div class="form-group">
				<label class="control-label col-lg-3" for="name">姓名：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="name" name="name"
						value="${resume.name}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="phone">电话：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="phone" name="phone"
						value="${resume.phone}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">Email：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="email" name="email"
						value="${resume.email}">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-lg-3" for="age">年龄：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="age" name="age"
						value="${resume.age}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="major">专业：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="major" name="major"
						value="${resume.major}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="sno">学号：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="sno" name="sno"
						value="${resume.sno}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="school">毕业院校：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" id="school" name="school"
						value="${resume.school}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="experience">实习经历：</label>
				<div class="col-lg-9">
					<textarea class="form-control" rows="5" cols="25" id="experience"
						name="experience">${resume.experience}</textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="selfintro">自我介绍：</label>
				<div class="col-lg-9">
					<textarea class="form-control" rows="5" cols="25" id="selfintro"
						name="selfintro">${resume.selfintro}</textarea>
				</div>
			</div>

			<!-- Accept box and button s-->
			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<br />
					<button type="button" onclick="checkfun();" class="btn btn-danger">修改</button>
					<button type="reset"
						onclick="javascript:window.opener=null;window.close();"
						class="btn btn-success">关闭</button>
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