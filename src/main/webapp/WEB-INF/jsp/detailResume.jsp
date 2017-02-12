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
			<div class="panel-heading">${resume.name}的简历</div>
		</div>
		<form action="/firstt/student/${resume.id}/updateResume" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					姓名：<input name="name" type="text"
						value="${resume.name}">
				</div>
				<div class="panel panel-default text-center">
					学号：<input name="sno" type="text" readonly="readonly"
						value="${resume.sno}">
				</div>
				<div class="panel panel-default text-center">
					年龄：<input name="age" type="text" value="${resume.age}">
				</div>
				<div class="panel panel-default text-center">
					毕业院校：<input name="school" type="text" value="${resume.school}">
				</div>
				<div class="panel panel-default text-center">
					email：<input name="email" type="text" value="${resume.email}">
				</div>
				<div class="panel panel-default text-center">
					电话：<input name="phone" type="text" value="${resume.phone}">
				</div>
				<div class="panel panel-default text-center">
					专业：<input name="major" type="text" value="${resume.major}">
				</div>
				<div class="panel panel-default text-center">
					实习经历：<input name="experience" type="text" value="${resume.experience}">
				</div>
				<div class="panel panel-default text-center">
					自我介绍：
					<textarea name="selfintro" rows="5" cols="25">${resume.selfintro}</textarea>
				</div>
				<a class="btn btn-info" style="center" href="javascript:window.opener=null;window.close();">关闭</a>
				<input type="submit" class="btn btn-info" value="修改" />
			</div>
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