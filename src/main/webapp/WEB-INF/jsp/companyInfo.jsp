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
			<div class="panel-heading">${company.cname}公司的详细信息</div>
		</div>
		<form action="/firstt/company/${company.id}/update" method="post">


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
								<td>公司名称</td>
								<td><input name="cname" type="text"
									value="${company.cname}"></td>
							</tr>
							<tr>
								<td>地址</td>
								<td><input name="location" type="text"
									value="${company.location}"></td>
							</tr>
							<tr>
								<td>企业性质</td>
								<td><input name="property" readonly="readonly" type="text"
									value="${company.property}"></td>
							</tr>
							<tr>
								<td>密码</td>
								<td><input name="password" type="password"
									value="${company.password}"></td>
							</tr>
							<tr>
								<td>Email</td>
								<td><input name="email" type="text"
									value="${company.email}"></td>
							</tr>
							<tr>
								<td>企业代码</td>
								<td><input name="code" readonly="readonly" type="text"
									value="${company.code}"></td>
							</tr>
							<tr>
								<td>创建时间</td>
								<td><input name="cltime" readonly="readonly" type="text"
									value="${company.cltime}"></td>
							</tr>
							<tr>
								<td>公司电话</td>
								<td><input name="phone" type="text"
									value="${company.phone}"></td>
							</tr>
							<tr>
								<td>公司简介</td>
								<td><textarea rows="5" cols="25">${company.detail}</textarea></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<input class="btn btn-info" style="" type="submit" value="修改" /> <a
				class="btn btn-info" style=""
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