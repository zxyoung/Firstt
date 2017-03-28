<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>就业信息</title>
<%@include file="common/head.jsp"%>
</head>

<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading text-header">
				<h2 align="center">${sessionScope.stu.stuName}的就业信息</h2>
			</div>
		</div>


		<form action="/firstt/student/${employ.id}/updateEmployInfo"
			method="post" class="form-horizontal">
			<!-- Registration form starts -->
			<!-- Name -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="sno">学号：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="sno"
						value="${employ.sno}">
				</div>
			</div>
			<!-- Email -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="passport">身份证：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="passport"
						value="${employ.passport}">
				</div>
			</div>
			<!-- Select box -->

			<div class="form-group">
				<label class="control-label col-lg-3" for="email">Email：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="email"
						value="${employ.email}">
				</div>
			</div>

			<!-- Password -->
			<div class="form-group">
				<label class="control-label col-lg-3" for="gowhere">毕业去向：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="gowhere"
						value="${employ.gowhere}">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-lg-3" for="companyname">单位名称：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="companyname"
						value="${employ.companyname}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="ccode">单位组织代码：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="ccode"
						value="${employ.ccode}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="cproperties">单位性质：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="cproperties"
						value="${employ.cproperties}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="ctrade">所在行业：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="ctrade"
						value="${employ.ctrade}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="location">单位地址：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="location"
						value="${employ.location}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="jobtitle">工作职位类别：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="jobtitle"
						value="${employ.jobtitle}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="contacts">公司联系人：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="contacts"
						value="${employ.contacts}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="contactsphone">联系人电话：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="contactsphone"
						value="${employ.contactsphone}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-3" for="cemail">联系人邮箱：</label>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="cemail"
						value="${employ.cemail}">
				</div>
			</div>


			<!-- Accept box and button s-->
			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<br />
					<button type="submit" class="btn btn-danger">修改</button>
					<button type="reset"
						onclick="javascript:window.opener=null;window.close();"
						class="btn btn-success">关闭</button>
				</div>
			</div>
			<br />
		</form>
	</div>


	<%-- <div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading">${sessionScope.stu.stuName} 的就业信息</div>
		</div>
		<form action="/firstt/student/${employ.id}/updateEmployInfo" method="post">
			<div class="panel-body">
				<div class="panel panel-default text-center">
					学号：<input name="sno" type="text" value="${employ.sno}">
				</div>
				<div class="panel panel-default text-center">
					身份证号：<input name="passport" type="text" value="${employ.passport}">
				</div>
				<div class="panel panel-default text-center">
					个人邮箱：<input name="email" type="text" value="${employ.email}">
				</div>
				<div class="panel panel-default text-center">
					毕业去向：<input name="gowhere" type="text" value="${employ.gowhere}">
				</div>
				<div class="panel panel-default text-center">
					单位名称：<input name="companyname" type="text" value="${employ.companyname}">
				</div>
				<div class="panel panel-default text-center">
					单位组织代码：<input name="ccode" type="text" value="${employ.ccode}">
				</div>
				<div class="panel panel-default text-center">
					单位性质：<input name="cproperties" type="text" value="${employ.cproperties}">
				</div>
				<div class="panel panel-default text-center">
					所在行业：<input name="ctrade" type="text" value="${employ.ctrade}">
				</div>
				<div class="panel panel-default text-center">
					单位地址：<input name="location" type="text" value="${employ.location}">
				</div>
				<div class="panel panel-default text-center">
					工作职位类别：<input name="jobtitle" type="text" value="${employ.jobtitle}">
				</div>
				<div class="panel panel-default text-center">
					公司联系人：<input name="contacts" type="text" value="${employ.contacts}">
				</div>
				<div class="panel panel-default text-center">
					联系人电话：<input name="contactsphone" type="tel" value="${employ.contactsphone}">
				</div>
				<div class="panel panel-default text-center">
					联系人邮箱：<input name="cemail" type="text" value="${employ.cemail}">
				</div>

				<input type="submit" class="btn btn-info" value="修改" />
				<a class="btn btn-info" style="center" href="javascript:window.opener=null;window.close();">关闭</a>
			</div>
		</form>

	</div>
 --%>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>