<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>公司信息注册页</title>
<%@include file="common/head.jsp"%>
</head>

<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading">请输入注册信息</div>
		</div>
		<form action="/firstt/company/register" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					公司名称：<input name="cname" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					地址：<input name="location" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					企业性质：<input name="property" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					密码：<input name="password" type="password" value="">
				</div>
				<div class="panel panel-default text-center">
					email：<input name="email" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					企业代码：<input name="code" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					创建时间：<input name="cltime" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					公司电话：<input name="phone" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					公司简介：
					<textarea rows="5" cols="25" name="detail"></textarea>
				</div>

				<input style="align:center" type="submit" class="btn btn-info" value="注册"> 
				<input type="reset" class="btn btn-info" value="重置">
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