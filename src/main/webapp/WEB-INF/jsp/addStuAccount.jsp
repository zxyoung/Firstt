<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>增加用户</title>
</head>
<body>
	<form action="/firstt/admin/addStuAccount" method="post">
		学号：<input type="text" name="sno" value=""><br />
		<!-- 密码：<input type="password" name="password" value=""><br/>   -->
		<!--年龄：<input type="text" name="age" value=""><br/>    -->
		<input type="submit" value="提交">
	</form>
</body>
</html>