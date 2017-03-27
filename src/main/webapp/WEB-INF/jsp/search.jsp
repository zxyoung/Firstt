<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
#mydiv {
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -50px;
}

.position {
	font-size: 30px;
	size: 22;
}
</style>

<body>
	<!-- To-Do -->
	<img class="pic" alt="西安邮电大学" src="../pic/logo.png">
	
	<form action="/firstt/admin/selectAccountSno" method="post">
		<div class="mydiv">
			<div id="mydiv">
				请输入学号：<input type="text" class="position" name="sno"> <span
					id="checkUserNameResult" style="color: red"></span> &nbsp;&nbsp;<input
					type="submit" value="查找学生" style="font-size: 25px" size="22"
					width="50px">
			</div>
		</div>
	</form>
</body>
</html>