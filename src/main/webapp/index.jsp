<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>



<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <!--[endif]-->
<script type="text/javascript">
function show() {
	window.open('login.jsp');
}
</script>


</head>
<body>
	<h1>你好，世界！</h1>
	<div
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100px; background-color: orange">
		<h2 style="text-align: center">
			<a href="index.jsp">西安邮电大学</a>
		</h2>

		<div style="text-align: right">
			<a href="/firstt/login/stu" target="_blank" class="btn btn-info">登录</a>
			<a href="######" id="register" onclick="window.open('register.jsp')">企业注册</a>
		</div>

	</div>
	<div
		style="position: absolute; top: 100px; left: 0px; width: 20%; height: 600px; background-color: blue">
		这是下方左部</div>

	<div style="position: absolute; top: 100px; left: 20%; height: 600px;">
		这是下方右部

		

	</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
