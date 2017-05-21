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
				<h2 align="center">${employ.name}的详细就业信息</h2>
			</div>
		</div>
		<form action="/firstt/student/${employ.id}/updateEmployInfo"
			method="post" class="form-horizontal">
			<div class="jumbotron">
				<div class="form-group">
					<label class="control-label col-lg-3" for="sno">姓名：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="name"
							value="${employ.name}">
					</div>
					<label class="control-label col-lg-2" for="sno">学号：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="sno"
							value="${employ.sno}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-3" for="passport">专业：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="major"
							value="${employ.major}">
					</div>
					<label class="control-label col-lg-2" for="graYear">毕业年份：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="graYear"
							value="${employ.graYear}">
					</div>
				</div>
				<!-- Email -->
				<div class="form-group">
					<label class="control-label col-lg-3" for="passport">身份证：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="passport"
							value="${employ.passport}">
					</div>
					<label class="control-label col-lg-2" for="email">Email：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="email"
							value="${employ.email}">
					</div>
				</div>

				<!-- Password -->
				<div class="form-group">
					<label class="control-label col-lg-3" for="gowhere">毕业去向：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="gowhere"
							value="${employ.gowhere}">
					</div>
					<label class="control-label col-lg-2" for="companyname">单位名称：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="companyname"
							value="${employ.companyname}">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-3" for="salary">年薪(w)：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="salary"
							value="${employ.salary}">
					</div>
					<label class="control-label col-lg-2" for="ccode">单位组织代码：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="ccode"
							value="${employ.ccode}">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-3" for="cproperties">单位性质：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="cproperties"
							value="${employ.cproperties}">
					</div>
					<label class="control-label col-lg-2" for="ctrade">所在行业：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="ctrade"
							value="${employ.ctrade}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-3" for="location">单位地址：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="location"
							value="${employ.location}">
					</div>
					<label class="control-label col-lg-2" for="jobtitle">工作职位类别：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="jobtitle"
							value="${employ.jobtitle}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-3" for="contacts">公司联系人：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="contacts"
							value="${employ.contacts}">
					</div>
					<label class="control-label col-lg-2" for="contactsphone">联系人电话：</label>
					<div class="col-lg-2">
						<input type="text" class="form-control" name="contactsphone"
							value="${employ.contactsphone}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-3" for="cemail">联系人邮箱：</label>
					<div class="col-lg-2">
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