<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>就业信息页</title>
<%@include file="common/head.jsp"%>
</head>

<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading">${sessionScope.stu.stuName},请填写就业信息</div>
		</div>
		<form action="/firstt/student/addEmploymentInfo" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					姓名：<input name="name" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;学号：<input
						name="sno" type="text" value="${sessionScope.stu.sno}">
				</div>

				<div class="panel panel-default text-center">
					专业：<input name="major" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;身份证号：<input
						name="passport" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					个人邮箱：<input name="email" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;毕业去向：<input
						name="gowhere" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					单位名称：<input name="companyname" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;年薪：<input
						name="salary" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					单位组织代码：<input name="ccode" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;单位性质：<input
						name="cproperties" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					所在行业：<input name="ctrade" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;单位地址：<input
						name="location" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					工作职位类别：<input name="jobtitle" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;公司联系人：<input
						name="contacts" type="text" value="">
				</div>
				<div class="panel panel-default text-center">
					联系人电话：<input name="contactsphone" type="tel" value="">&nbsp;&nbsp;&nbsp;&nbsp;联系人邮箱：<input
						name="cemail" type="text" value="">
				</div>

				<input type="submit" class="btn btn-info" value="提交" /> <a
					class="btn btn-info" style=""
					href="javascript:window.opener=null;window.close();">关闭</a>
			</div>
		</form>

	</div>

</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>