<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>请输入招聘信息</title>
<%@include file="common/head.jsp"%>
</head>

<body>
	<form action="/firstt/company/${code}/createNotice" method="post">
		<div class="container">
			<div class="panel panel-default text-center">
				<div class="panel-heading">请输入招聘信息</div>
			</div>
			<div class="panel-body">
				<div class="panel panel-default text-center">
					主题：<input name="title" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					内容：<textarea rows="5" cols="25"></textarea>
				</div>
			</div>
		</div>
		<input class="btn btn-info" type="submit" value="添加" />
	</form>

</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>