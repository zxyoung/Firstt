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
	
	
	<h1>${sessionScope.uname.getStuName() }登录成功!!!</h1>
	<h2>欢迎您,${sessionScope.uname.stuName }</h2>


</body>
</html>