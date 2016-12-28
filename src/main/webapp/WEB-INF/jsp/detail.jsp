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
			<div class="panel-heading"> ${user.userName} 的详细信息</div>
		</div>
		<form action="/firstt/user/${user.id}/update" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					用户名：<input name="userName" type="text" value="${user.userName}">
				</div>
				<div class="panel panel-default text-center">
					密码：<input name="password" type="password" value="${user.password}">
				</div>
				<div class="panel panel-default text-center">
					年龄：<input name="age" type="text" value="${user.age}">
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