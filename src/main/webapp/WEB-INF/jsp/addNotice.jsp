<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>请输入招聘信息</title>
<%@include file="common/head.jsp"%>
</head>

<body>
	<div class="container">
		<div class="panel panel-default text-center">
		<!-- <label class="control-label col-lg-3">请输入招聘信息</label> -->
			<div class="panel-heading text-header">
				<h2 align="center">请输入招聘信息</h2>
			</div>
		</div>

		<form action="/firstt/company/${code}/createNotice" method="post"
			class="form-horizontal">

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">标题：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" placeholder="请输入标题" name="title" value="">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">招聘详情：</label>
				<div class="col-lg-9">
					<textarea class="form-control" placeholder="请输入详细信息" rows="5" cols="25" name="content"></textarea>
				</div>
			</div>

			<!-- Accept box and button s-->
			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<br />
					<button type="submit" class="btn btn-danger">添加</button>
					<button type="reset" class="btn btn-success">重置</button>
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