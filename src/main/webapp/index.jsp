<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="zh-cn">
<head>
<title>首页</title>



<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">
	function show() {
		window.open('login.jsp');
	}
</script>


</head>
<body>
	<jsp:forward page="/WEB-INF/jsp/HomePage.jsp"></jsp:forward>
</body>
</html>
