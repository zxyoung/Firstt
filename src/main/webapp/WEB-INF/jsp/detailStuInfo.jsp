<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>用户详情信息</title>
<%@include file="common/head.jsp" %>
</head>

<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading"> ${stuInfo.stuName} 的详细信息</div>
		</div>
		<form action="/firstt/admin/${stuInfo.id}/update" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					姓名：<input name="stuName" type="text" value="${stuInfo.stuName}">
				</div>
				<div class="panel panel-default text-center">
					性别：<input name="sex" type="text" value="${stuInfo.sex}">
				</div>
				<div class="panel panel-default text-center">
					学号：<input name="sno" type="text" value="${stuInfo.sno}">
				</div>
				<div class="panel panel-default text-center">
					密码：<input name="password" type="password" value="${stuInfo.password}">
				</div>
				<div class="panel panel-default text-center">
					专业：<input name="major" type="text" value="${stuInfo.major}">
				</div>
				<div class="panel panel-default text-center">
					生源地：<input name="origin" type="text" value="${stuInfo.origin}">
				</div>
				<div class="panel panel-default text-center">
					入学时间：<input name="entry_year" type="text" value="${stuInfo.entryYear}">
				</div>
				<div class="panel panel-default text-center">
					毕业时间：<input name="gra_year" type="text" value="${stuInfo.graYear}">
				</div>
				
				<input type="submit" value="修改"/>
			</div>
		</form>
	
	</div>

</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>