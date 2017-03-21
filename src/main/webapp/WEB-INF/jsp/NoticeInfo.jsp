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
			<div class="panel-heading">详细招聘信息</div>
		</div>
		<div class="panel-body">
			<div class="panel panel-default text-center">
				主题：<input name="title" type="text" readonly="readonly"
					value="${notice.title}">
			</div>
			<div class="panel panel-default text-center">
				内容：<input name="content" type="text" value="${notice.content}">
			</div>
			<div class="panel panel-default text-center">
				发布时间：
				<fmt:formatDate value="${notice.fbtime}" type="both" />
			</div>

			<a class="btn btn-info" style=""
				href="javascript:window.opener=null;window.close();">关闭</a>
		</div>

	</div>
	${notice.title}
	<br /> ${notice.content }
	<br />
	<fmt:formatDate value="${notice.fbtime}" pattern="yyyy-MM-dd"
		type="date" dateStyle="long" />


</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>