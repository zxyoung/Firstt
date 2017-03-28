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
			<div class="panel-heading">
				<h2 align="center">请输入注册信息</h2>
			</div>
		</div>

		<form action="/firstt/company/register" method="post"
			class="form-horizontal">
			<!-- Registration form starts -->
			<!-- Name -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="name">公司用户名：</label>
				<div class="col-lg-9">
					<input type="text" placeholder="请输入公司用户名" class="form-control"
						name="cname">
				</div>
			</div>
			<!-- Email -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="email">地址：</label>
				<div class="col-lg-9">
					<input type="text" placeholder="请输入公司地址" class="form-control"
						name="location">
				</div>
			</div>
			<!-- Select box -->
			<div class="form-group">
				<label class="control-label col-lg-3">企业性质：</label>
				<div class="col-lg-9">
					<select name="property" class="form-control">
						<option value="...">请选择</option>
						<option value="国有企业">国有企业</option>
						<option value="私营企业">私营企业</option>
						<option value="其他">其他</option>
					</select>
				</div>
			</div>

			<!-- Password -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="username">密码：</label>
				<div class="col-lg-9">
					<input type="password" placeholder="请输入密码" class="form-control"
						name="password">
				</div>
			</div>

			<!-- Password -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="email">确认密码：</label>
				<div class="col-lg-9">
					<input type="password" placeholder="请确认密码" class="form-control"
						name="tmppass">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">Email：</label>
				<div class="col-lg-9">
					<input type="text" placeholder="请输入联系邮箱" class="form-control"
						name="email">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">企业代码：</label>
				<div class="col-lg-9">
					<input type="text" placeholder="请输入企业代码" class="form-control"
						name="code">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">创建时间：</label>
				<div class="col-lg-9">
					<input type="text" placeholder="请输入公司成立时间" class="form-control"
						name="cltime">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">公司电话：</label>
				<div class="col-lg-9">
					<input type="text" placeholder="请输入公司电话" class="form-control"
						name="phone">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">公司简介：</label>
				<div class="col-lg-9">
					<textarea class="form-control" placeholder="请输入公司简介" rows="5"
						cols="25" name="detail"></textarea>
				</div>
			</div>

			<!-- Accept box and button s-->
			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<div class="checkbox">
						<label> <input type="checkbox"> Accept Terms &amp;
							Conditions
						</label>
					</div>
					<br />
					<button type="submit" class="btn btn-danger">注册</button>
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