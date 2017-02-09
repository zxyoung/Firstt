<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 引入jstl库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>成功</title>
</head>
<body>
	<!-- 用这些session去处理对应id的操作 -->

	<div
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100px; background-color: orange">
		<h2 align="center">
			<a href="index.jsp">西安邮电大学</a>
		</h2>

	</div>


	<div
		style="position: absolute; top: 100px; left: 5px; width: 20%; height: 600px; background-color: pink">
		<div align="center">这是下方左部</div>
		<h2 align="center">${sessionScope.uname.getStuName()}登录成功!!!</h2>
		<h2 align="center">欢迎您,${sessionScope.uname.stuName }</h2>

		<div align="center">
			<a target="display" href="http://www.baidu.com"><h2>个人信息</h2></a>
		</div>
		<div align="center">
			<a target="display" href="http://www.qq.com"><h2>简历</h2></a>
		</div>
		<div align="center">
			<a target="display" href="#########"><h2>就业信息</h2></a>
		</div>
		<div align="center">
			<a href="#########"><h2>退出</h2></a>
		</div>


	</div>

	<div style="position: absolute; top:100px; left:21%; height:600px; width:78%">
		<div align="center">这是下方右部</div>

		<iframe name="display" width="100%" height="600px">

		</iframe>

	</div>




</body>
</html>