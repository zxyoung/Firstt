<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<body>
<h2>Hello World!</h2>
<input type="button" value="see" onclick="window.location.href='/firstt/user/list';">

<form action="/firstt/user/ad" method="post">
	用户名：<input type="text" name="username">
	密码：<input type="password" name="password">
	年龄：<input type="text" name="age" value="">
	<input type="submit" value="提交">
</form>
</body>
</html>
