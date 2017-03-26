<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 引入jstl库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员，欢迎您使用</title>

<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.dropdown {
	display: inline;
	left: 400px;
	top: 68px;
	margin-right:35px;
}
</style>
</head>
<body>
	<!-- 用这些session去处理对应id的操作 -->



	<div
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100px; background-color: orange">
		<h2 align="center">
			<a href="index.jsp">西安邮电大学</a> <a class="btn btn-info"
				id="dropdownMenu1" href="index.jsp"> 西安邮电大学 <span class=""></span>
			</a>
		</h2>

	</div>

	<div class="dropdown">
		<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
			data-toggle="dropdown">
			学生账号管理 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="/firstt/admin/listStuAccount">添加学生</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">按学号查找</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">列出所有学生</a></li>

		</ul>
	</div>

	<div class="dropdown">
		<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
			data-toggle="dropdown">
			信息通知管理 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="/firstt/admin/listNoticeInfo">查看招聘信息</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">学校通知</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">数据通信/网络</a></li>
			<li role="presentation" class="divider"></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">分离的链接</a></li>
		</ul>
	</div>

	<div class="dropdown">
		<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
			data-toggle="dropdown">
			公司信息管理 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="/firstt/admin/listCompanyInfo">查看公司信息</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">数据挖掘</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">数据通信/网络</a></li>
			<li role="presentation" class="divider"></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				target="display" href="#">分离的链接</a></li>
		</ul>
	</div>

	<div class="dropdown">
		<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
			data-toggle="dropdown">
			发送邮件 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="/firstt/admin/sendEmail">发送通知邮件</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">数据挖掘</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">数据通信/网络</a></li>
			<li role="presentation" class="divider"></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">分离的链接</a></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
			data-toggle="dropdown">
			${sessionScope.adminSession.username} <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="/firstt/login/adminlogout">退出</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">退出.</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">退出...</a></li>
			<li role="presentation" class="divider"></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">退出...</a></li>
		</ul>
	</div>

	<div
		style="position: absolute; top: 100px; left: 5px; width: 20%; height: 600px; background-color: pink">
		<div align="center">这是下方左部</div>
		<h3 align="center">${sessionScope.adminSession.username}登录成功!!!</h3>
		<h3 align="center">欢迎您,${sessionScope.adminSession.username }</h3>
		<div align="center">
			<h2>
				<a target="_blank" href="/firstt/admin/listStuAccount">学生账号管理</a>
			</h2>
		</div>
		<div align="center">
			<h2>
				<a target="display" href="/firstt/admin/listNoticeInfo">招聘信息管理</a>
			</h2>
		</div>
		<div align="center">
			<h2>
				<a target="display" href="/firstt/admin/listCompanyInfo">注册公司信息</a>
			</h2>
		</div>
		<div align="center">
			<h2>
				<a target="display" href="/firstt/admin/listEmploymentInfo">学生就业信息</a>
			</h2>
		</div>
		<div align="center">
			<h2>
				<a target="display" href="/firstt/admin/sendEmail">发送邮件</a>
			</h2>
		</div>

		<div align="center">
			<h2>
				<a href="/firstt/login/adminlogout">退出</a>
			</h2>
		</div>


	</div>

	<div
		style="position: absolute; top: 100px; left: 21%; height: 600px; width: 78%">
		<div align="center"></div>

		<!-- <iframe name="display" width="100%" height="600px"> </iframe> -->
		
		<img alt="asfdds" src="./pic/logo.png">

	</div>

</body>
</html>