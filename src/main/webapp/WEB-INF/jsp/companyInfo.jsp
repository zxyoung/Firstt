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
			<div class="panel-heading text-header">
				<h2 align="center">${company.cname}公司的详细信息</h2>
			</div>
		</div>


		<form action="/firstt/company/${company.id}/update" method="post"
			class="form-horizontal">
			<!-- Registration form starts -->
			<!-- Name -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="name">公司名称：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="cname"
						value="${company.cname}">
				</div>
			</div>
			<!-- Email -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="email">地址：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="location"
						value="${company.location}">
				</div>
			</div>
			<!-- Select box -->

			<div class="form-group">
				<label class="control-label col-lg-3" for="username">企业性质：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="password"
						value="${company.property}">
				</div>
			</div>

			<!-- Password -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="username">密码：</label>
				<div class="col-lg-9">
					<input type="password" class="form-control" name="password"
						value="${company.password}">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-lg-3" for="email">Email：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="email"
						value="${company.email}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">企业代码：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="code"
						value="${company.code}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">创建时间：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="cltime"
						value="${company.cltime}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">公司电话：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="phone"
						value="${company.phone}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">公司简介：</label>
				<div class="col-lg-9">
					<textarea class="form-control" rows="5" cols="25" name="detail">${company.detail}</textarea>
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