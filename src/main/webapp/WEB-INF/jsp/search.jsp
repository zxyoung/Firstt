<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>增加学生页</title>
<%@include file="common/head.jsp"%>

<script type="text/javascript">
	function checkfun(){
	    var folder = document.getElementById("sno").value;
	    if(folder==""){
	        alert('输入不能为空！');
	        return false;
	        }
	         
	}
</script>

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
</head>
<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading">
				<h2 align="center">查找学生</h2>
			</div>
		</div>
		
		<img class="pic" alt="西安邮电大学" src="../pic/logo.png">

		<form action="/firstt/admin/selectAccountSno" method="post"
			class="form-horizontal">
			<!-- Registration form starts -->
			<!-- Name -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="sno">学号</label>
				<div class="col-lg-9">
					<input type="text" style="position" placeholder="请输入学号" class="form-control"
						name="sno" id="sno">
				</div>
			</div>
			<button type="submit" onclick="checkfun();" class="btn btn-danger">查找</button>
		</form>
	</div>
</body>