<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>公司信息详情页</title>
<%@include file="common/head.jsp"%>
</head>

<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading">${company.cname} 公司的详细信息</div>
		</div>
		<form action="/firstt/admin/${company.id}/update" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					公司名称：<input name="cname" type="text" readonly="readonly"
						value="${company.cname}">
				</div>
				<div class="panel panel-default text-center">
					地址：<input name="location" type="text" value="${company.location}">
				</div>
				<div class="panel panel-default text-center">
					企业性质：<input name="property" type="text" value="${company.property}">
				</div>
				<div class="panel panel-default text-center">
					email：<input name="email" type="password" value="${company.email}">
				</div>
				<div class="panel panel-default text-center">
					企业代码：<input name="code" type="text" value="${company.code}">
				</div>
				<div class="panel panel-default text-center">
					创建时间：<input name="cltime" type="text" value="${company.cltime}">
				</div>
				<div class="panel panel-default text-center">
					公司电话：<input name="phone" type="text" value="${company.phone}">
				</div>
				<div class="panel panel-default text-center">
					公司简介：<input name="detail" type="text" value="${company.detail}">
				</div>

				<input type="submit" value="修改" />
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