<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>招聘信息详情</title>
<%@include file="common/head.jsp"%>
</head>

<body>

	

	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading text-header">
				<h2 align="center">详细招聘信息</h2>
			</div>
		</div>

		<div style="width: 100%; text-align: center">
			<form action="######" class="form-horizontal">

				<div class="form-group">
					<label class="control-label col-lg-3" for="title">标题：</label>
					<div class="col-lg-9">
						<input type="text" class="form-control" readonly="readonly"
							name="title" value="${notice.title}">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-3" for="email">内容：</label>
					<div class="col-lg-9">
						<textarea class="form-control" rows="5" cols="15"
							readonly="readonly" name="content">${notice.content}</textarea>
					</div>
				</div>

				<label class="control-label col-lg-3" style="float: left;"
					for="title">发布时间： <fmt:formatDate value="${notice.fbtime}"
						type="date" /></label>
				
				<p class="form-control-static">发布时间： <fmt:formatDate value="${notice.fbtime}"
						type="date" /></p>
				
				<%-- 发布时间：
			<fmt:formatDate value="${notice.fbtime}" type="date" /> --%>

				<!-- Accept box and button s-->
				<div class="form-group">
					<div class="col-lg-9 col-lg-offset-3">
						<br />
						<button type="submit" class="btn btn-danger"
							onclick="javascript:window.opener=null;window.close();">关闭</button>
					</div>
				</div>
				<br />
			</form>
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