<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="3;url=/firstt/login/stuLogin">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function delayURL(url) {
		var delay = document.getElementById("time").innerHTML;
		if (delay > 0) {
			delay--;
			document.getElementById("time").innerHTML = delay
		} else {
			window.top.location.href = url
		}
		setTimeout("delayURL('" + url + "')", 1000)
	}
</script>
<body>
	用户名或密码错误！
	<br />
	<span id="time" style="background: yellow; font-size: 18px;">3</span>

	秒钟之后自动跳转，如果不跳转，请点击下面链接

	<a href="/firstt/login/stuLogin">学生登录</a>

</body>
</html>