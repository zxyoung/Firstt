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
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-header">
				<h2 align="center">招聘信息</h2>
			</div>

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
												<th>创建时间</th>
												<th>详细信息</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="notice" items="${list}">
												<td>${notice.title}</td>
												<td><fmt:formatDate value="${notice.fbtime}"
														pattern="yyyy-MM-dd" type="date" dateStyle="long" /></td>
												<td><a href="/firstt/company/${notice.id}/noticeDetail"
													target="_blank">详细信息</a></td>
												<td><a onclick="firm()"
													href="/firstt/company/${notice.id}/deleteNotice">删除</a></td>
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


			<%-- 	<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>标题</th>
							<th>创建时间</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="notice" items="${list}">
							<td>${notice.title}</td>
							<td>
									<fmt:formatDate value="${notice.fbtime}" type="both" /></td>
							<td><a class="btn btn-info"
								href="/firstt/company/${notice.id}/noticeDetail" target="_blank">详细信息</a></td>
							<td><a class="btn btn-info" onclick="firm()"
								href="/firstt/company/${notice.id}/deleteNotice">删除</a></td>
							<tr />
						</c:forEach>
					</tbody>
				</table>
			</div> --%>
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