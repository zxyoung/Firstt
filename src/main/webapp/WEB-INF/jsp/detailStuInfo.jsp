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
			<div class="panel-heading">${stuInfo.stuName}的详细信息</div>
		</div>
		<form action="/firstt/admin/${stuInfo.id}/update" method="post">
			<!-- Server Status -->
			<div class="col-md-4">
				<div class="widget">
					<!-- Widget title -->
					<div class="widget-head">
						<div class="pull-left">Server Status</div>
						<div class="widget-icons pull-right">
							<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="wclose"><i class="icon-remove"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="widget-content">
						<!-- Widget content -->

						<table class="table table-striped table-bordered table-hover">
							<tr>
								<td>姓名</td>
								<td><input name="stuName" type="text"
									value="${stuInfo.stuName}"></td>
							</tr>
							<tr>
								<td>性别</td>
								<td><input name="sex" type="text" value="${stuInfo.sex}"></td>
							</tr>
							<tr>
								<td>学号</td>
								<td><input name="sno" readonly="readonly" type="text"
									value="${stuInfo.sno}"></td>
							</tr>
							<tr>
								<td>密码</td>
								<td><input name="password" type="password"
									value="${stuInfo.password}"></td>
							</tr>
							<tr>
								<td>专业</td>
								<td><input name="major" type="text"
									value="${stuInfo.major}"></td>
							</tr>
							<tr>
								<td>生源地</td>
								<td><input name="origin" readonly="readonly" type="text"
									value="${stuInfo.origin}"></td>
							</tr>
							<tr>
								<td>入学时间</td>
								<td><input name="entry_year" readonly="readonly"
									type="text" value="${stuInfo.entryYear}"></td>
							</tr>
							<tr>
								<td>毕业时间</td>
								<td><input name="gra_year" readonly="readonly" type="text"
									value="${stuInfo.graYear}"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<input type="submit" value="修改" /> <a style=""
				href="javascript:window.opener=null;window.close();">关闭</a>
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