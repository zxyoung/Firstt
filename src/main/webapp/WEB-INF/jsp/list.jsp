<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="common/tag.jsp"%>
<html>
<head>
<title>用户列表页</title>
<%@include file="common/head.jsp"%>

<script type="text/javascript">
	function show() {
		window.open('addUser.jsp');
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
				<h2 align="center">User列表</h2>
				<input style="text-align:right" type="button" value="添加用户" onclick="window.location.href='addUser';" />
			</div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>用户 ID</th>
							<th>用户名</th>
							<th>年龄</th>
							<th>密码</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="u" items="${list}">
							<td>${u.id}</td>
							<td>${u.userName}</td>
							<td>${u.age}</td>
							<td>${u.password}</td>
							<td><a class="btn btn-info"
								href="/firstt/user/${u.id}/detail" target="_blank">Show</a></td>
							<td><a class="btn btn-info"
								href="/firstt/user/${u.id}/delete">Delete</a></td>
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