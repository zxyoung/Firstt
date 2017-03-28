<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>简历详情页</title>
<%@include file="common/head.jsp"%>
</head>

<body>

	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading text-header">
				<h2 align="center">${resume.name}的简历</h2>
			</div>
		</div>


		<form action="/firstt/student/${resume.id}/updateResume" method="post"
			class="form-horizontal">
			<!-- Registration form starts -->

			<div class="form-group">
				<label class="control-label col-lg-3" for="name">姓名：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="name"
						value="${resume.name}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="phone">电话：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="phone"
						value="${resume.phone}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">Email：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="email"
						value="${resume.email}">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-lg-3" for="age">年龄：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="age"
						value="${resume.age}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="major">专业：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="major"
						value="${resume.major}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="sno">学号：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="sno"
						value="${resume.sno}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="school">毕业院校：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="school"
						value="${resume.school}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="experience">实习经历：</label>
				<div class="col-lg-9">
					<textarea class="form-control" rows="5" cols="25" name="experience">${resume.experience}</textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="selfintro">自我介绍：</label>
				<div class="col-lg-9">
					<textarea class="form-control" rows="5" cols="25" name="selfintro">${resume.selfintro}</textarea>
				</div>
			</div>

			<!-- Accept box and button s-->
			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<br />
					<button type="submit" class="btn btn-danger">修改</button>
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