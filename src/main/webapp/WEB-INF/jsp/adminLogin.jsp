<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>管理员入口</title>

<script type="text/javascript">
	function check(obj) {
		var username = obj;
		var checkUserNameResult = document
				.getElementById("checkPasswordResult");
		if (username.trim().length == 0) {
			checkUserNameResult.innerHTML = "密码不能为空";
			obj.focus();
		} else {
			checkUserNameResult.innerHTML = "";
		}
	}
</script>

</head>
<body>

	<h2>管理员登录</h2>
	<img alt="af" src="/firstt/pic/logo.png">
	<form action="/firstt/login/admin" method="post">
		账号：<input type="text" name="username" value="" /> <br /> 密码：<input
			type="password" name="password" value="" onblur="check(this.value);" />
		<span id="checkPasswordResult" style="color: red"></span><br />
		<br> <input type="submit" value="登录">&nbsp;&nbsp;<input
			type="reset" value="重置">
	</form>
</body>
</html>