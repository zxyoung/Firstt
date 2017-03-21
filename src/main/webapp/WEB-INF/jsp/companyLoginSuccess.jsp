<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 引入jstl库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>欢迎您使用</title>
</head>
<body>
	<!-- 用这些session去处理对应id的操作 -->

	<div
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100px; background-color: orange">
		<h2 align="center">
			<a href="index.jsp">西安邮电大学</a> <a class="btn btn-info"
				id="dropdownMenu1" href="##########"> 西安邮电大学 <span class=""></span>
			</a>
		</h2>

	</div>


	<div
		style="position: absolute; top: 100px; left: 5px; width: 20%; height: 600px; background-color: pink">
		<div align="center">这是下方左部</div>
		<h2 align="center">${sessionScope.companySession.getCname()}登录成功!!!</h2>
		<h2 align="center">欢迎您,${sessionScope.companySession.cname }</h2>
		<div align="center">
			<h2>
				<a target="display" href="/firstt/company/${company.id}/companyInfo">公司信息</a>
			</h2>
		</div>
		<div align="center">
			<h2>
				<a target="display"
					href="/firstt/company/${company.code}/addNotice">发布招聘信息</a>
			</h2>
		</div>
		<div align="center">
			<h2>
				<a target="display"
					href="/firstt/company/${company.code}/detailNotice">查看招聘信息</a>
			</h2>
		</div>
		<div align="center">
			<h2>
				<a href="/firstt/login/companylogout">退出</a>
			</h2>
		</div>


	</div>

	<div
		style="position: absolute; top: 100px; left: 21%; height: 600px; width: 78%">
		<div align="center">这是下方右部</div>

		<iframe name="display" width="100%" height="600px"> </iframe>

	</div>
</body>
</html>