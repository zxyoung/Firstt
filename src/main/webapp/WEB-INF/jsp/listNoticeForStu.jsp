<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="common/tag.jsp"%>
<html>
<head>
<title>招聘信息列表页</title>
<%@include file="common/head.jsp"%>

<script type="text/javascript">
	//	function show() {
	//		window.open('addUser.jsp');
	//	}
	function hide() {
		document.getElementById("pic").style.visibility = "hidden";
	}
	function firm() {
		if (confirm("是否要刪除该条信息?")) {
			location.href = "/firstt/admin/${company.id}/deleteCompany";
		} else {
		}
	}
</script>
</head>

<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">筛选条件</a>
			</div>
			<div>
				<form action="/firstt/student/searchNotice"
					class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input name="jobtitle" type="text" class="form-control"
							placeholder="请输入职位...">
					</div>
					<div class="form-group">
						<input name="location" type="text" class="form-control"
							placeholder="请输入工作地点...">
					</div>
					<button type="submit" class="btn btn-default">查找</button>
				</form>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-header">
				<h2 align="center">公司招聘信息</h2>
			</div>
			<div class="panel-body">

				<div class="matter">
					<div class="container">
						<!-- Table -->
						<div class="row">
							<div class="col-md-12">
								<div class="widget">
									<div class="widget-head">
										<div class="pull-left">Tables</div>
										<div class="widget-icons pull-right">
											<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
											<a href="#" class="wclose"><i class="icon-remove"></i></a>
										</div>
										<div class="clearfix"></div>
									</div>

									<div class="widget-content">

										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th>标题</th>
													<th>职位</th>
													<th>工作地点</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="notice" items="${list}">
													<td>${notice.title}</td>
													<td>${notice.jobtitle}</td>
													<td>${notice.location}</td>
													<td><a href="/firstt/admin/${notice.id}/noticeDetail"
														target="display">详细信息</a></td>
													<tr />
												</c:forEach>
											</tbody>
										</table>

										<div class="widget-foot">
											<ul class="pagination pull-right">
												<li><a href="#">Prev</a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">Next</a></li>
											</ul>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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