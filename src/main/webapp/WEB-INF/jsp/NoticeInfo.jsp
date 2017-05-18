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
				<h2 align="center">${notice.title}</h2>
			</div>
		</div>
		职位：${notice.jobtitle}<br><br>
		工作地点：${notice.location}<br><br>
		<div style="width: 100%; text-align: center">
			<form action="######" class="form-horizontal">
				<%-- <div class="form-group" style="text-align: center;">
					<label class="control-label col-lg-3" for="email"></label>
					<div class="col-lg-9">
						<textarea class="form-control" rows="5" cols="15"
							readonly="readonly" name="content">${notice.content}</textarea>
					</div>
				</div> --%>
				<p class="form-control-static" style="text-align: left;">职位描述：<br>${notice.content}</p>
				<br><br><br>
				<p class="form-control-static" style="text-align: right;">
					发布时间：
					<fmt:formatDate value="${notice.fbtime}" type="date" />
				</p>

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