<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="common/tag.jsp"%>
<html>
<head>
<title>学生账号列表</title>
<%@include file="common/head.jsp"%>

<script type="text/javascript">
	function show() {
		window.open('addStuAccount.jsp');
	}
	function hide() {
		document.getElementById("pic").style.visibility = "hidden";
	}
</script>
</head>

<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-header">
				<h2 align="center">学生账号列表</h2>
				<input style="text-align:right" type="button" value="添加学生" onclick="window.location.href='addStuAccount';" />
			</div>

			<form action="/firstt/admin/selectAccountSno" method="post">
				<input type="text" name="sno" /> 
				<input type="submit" value="搜索" />
			</form>
			
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>学生学号</th>
							<th>密码</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="stu" items="${list}">
							<td>${stu.sno}</td>
							<td>${stu.password}</td>
							<td><a class="btn btn-info"
								href="/firstt/admin/${stu.sno}/detailStuInfo" target="_blank">Show Detail</a></td>
							<td><a class="btn btn-info"
								href="/firstt/admin/${stu.sno}/deleteStuAccount">Delete</a></td>
							<tr />
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>