<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/tag.jsp"%>
<%@ include file="common/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="3;url=/firstt/admin/listStuAccount">
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
	找不到该学生的相关信息！<br/>
	<span id="time" style="background: yellow; font-size: 18px;">3</span>

	秒钟之后自动跳转，如果不跳转，请点击下面链接

	<a href="/firstt/admin/listStuAccount">学生账号列表</a>

</body>
</html>