<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="common/tag.jsp"%>
<html>
<head>
<title>简历</title>
<%@include file="common/head.jsp"%>

<script type="text/javascript">
	//	function show() {
	//		window.open('addUser.jsp');
	//	}
	function hide() {
		document.getElementById("pic").style.visibility = "hidden";
	}
</script>
</head>

<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-header">
				<h2 align="center">学生简历列表</h2>

				<!-- <input style="text-align: right" type="button" value="添加用户"
					onclick="window.location.href='addUser';" /> -->

			</div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>学生姓名</th>
							<th>学号</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="resume" items="${list}">
							<td>${resume.name}</td>
							<td>${resume.sno}</td>
							<td><a class="btn btn-info"
								href="/firstt/admin/${resume.id}/resumeDetail" target="_blank">详细信息</a></td>
							<!-- <td><a class="btn btn-info"
								href="/firstt/admin/${resume.id}/deleteResume">删除</a></td> -->
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