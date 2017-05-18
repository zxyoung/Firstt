<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>用户详情信息</title>
<%@include file="common/head.jsp"%>
</head>

<body>

	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading text-header">
				<h2 align="center">${stuInfo.stuName}的详细信息</h2>
			</div>
		</div>
		<form action="/firstt/admin/${stuInfo.id}/update" method="post"
			class="form-horizontal">
			<div class="jumbotron">
				<div class="form-group">
					<label class="control-label col-lg-3" for="stuName">姓名：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="stuName"
							value="${stuInfo.stuName}">
					</div>
					<label class="control-label col-lg-3" for="sex">性别：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="sex"
							value="${stuInfo.sex}">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-3" for="sno"> 学号：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="sno"
							value="${stuInfo.sno}">
					</div>
					<label class="control-label col-lg-3" for="password">密码：</label>
					<div class="col-lg-2">
						<input type="password" class="form-control" name="password"
							value="${stuInfo.password}">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-3" for="major">专业：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="major"
							value="${stuInfo.major}">
					</div>
					<label class="control-label col-lg-3" for="origin">生源地：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="origin"
							value="${stuInfo.origin}">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-3" for="entry_year">入学时间：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="entry_year"
							value="${stuInfo.entryYear}">
					</div>
					<label class="control-label col-lg-3" for="gra_year">毕业时间：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="gra_year"
							value="${stuInfo.graYear}">
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