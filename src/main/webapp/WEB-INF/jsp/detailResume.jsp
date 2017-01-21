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
		<form action="/firstt/admin/${resume.id}/update" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					姓名：<input name="cname" type="text" readonly="readonly"
						value="${resume.name}">
				</div>
				<div class="panel panel-default text-center">
					年龄：<input name="location" type="text" readonly="readonly" value="${resume.age}">
				</div>
				<div class="panel panel-default text-center">
					毕业院校：<input name="property" type="text" readonly="readonly" value="${resume.school}">
				</div>
				<div class="panel panel-default text-center">
					email：<input name="email" type="text" readonly="readonly" value="${resume.email}">
				</div>
				<div class="panel panel-default text-center">
					电话：<input name="code" type="text" readonly="readonly" value="${resume.phone}">
				</div>
				<div class="panel panel-default text-center">
					专业：<input name="cltime" type="text" readonly="readonly" value="${resume.major}">
				</div>
				<div class="panel panel-default text-center">
					实习经历：<input name="phone" type="text" readonly="readonly" value="${resume.experience}">
				</div>
				<div class="panel panel-default text-center">
					自我介绍：
					<textarea rows="5" cols="25" readonly="readonly">${resume.selfintro}</textarea>
				</div>
				<a class="btn btn-info" style="center" href="javascript:window.opener=null;window.close();">关闭</a>
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