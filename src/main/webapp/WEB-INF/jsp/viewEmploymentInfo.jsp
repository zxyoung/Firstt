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
			<div class="panel-heading">详细就业信息</div>
		</div>
		<form action="##########" method="post">
			<!-- Server Status -->
			<div class="col-md-4">
				<div class="widget">
					<!-- Widget title -->
					<div class="widget-head">
						<div class="pull-left">Server Status</div>
						<div class="widget-icons pull-right">
							<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="wclose"><i class="icon-remove"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="widget-content">
						<!-- Widget content -->

						<table class="table table-striped table-bordered table-hover">
							<tr>
								<td>学号</td>
								<td><input name="cname" type="text" value="${employ.sno}"></td>
							</tr>
							<tr>
								<td>身份证</td>
								<td><input name="location" type="text"
									value="${employ.passport}"></td>
							</tr>
							<tr>
								<td>Email</td>
								<td><input name="property" readonly="readonly" type="text"
									value="${employ.email}"></td>
							</tr>
							<tr>
								<td>毕业去向</td>
								<td><input name="code" readonly="readonly" type="text"
									value="${employ.gowhere}"></td>
							</tr>
							<tr>
								<td>单位名称</td>
								<td><input name="cltime" readonly="readonly" type="text"
									value="${employ.companyname}"></td>
							</tr>
							<tr>
								<td>单位组织代码</td>
								<td><input name="phone" type="text" value="${employ.ccode}"></td>
							</tr>
							<tr>
								<td>单位性质</td>
								<td><input name="phone" type="text"
									value="${employ.cproperties}"></td>
							</tr>
							<tr>
								<td>所在行业</td>
								<td><input name="phone" type="text"
									value="${employ.ctrade}"></td>
							</tr>
							<tr>
								<td>单位地址</td>
								<td><input name="phone" type="text"
									value="${employ.location}"></td>
							</tr>
							<tr>
								<td>工作职位类别</td>
								<td><input name="phone" type="text"
									value="${employ.jobtitle}"></td>
							</tr>
							<tr>
								<td>公司联系人</td>
								<td><input name="phone" type="text"
									value="${employ.contacts}"></td>
							</tr>
							<tr>
								<td>联系人电话</td>
								<td><input name="phone" type="text"
									value="${employ.contactsphone}"></td>
							</tr>
							<tr>
								<td>联系人邮箱</td>
								<td><input name="phone" type="text"
									value="${employ.cemail}"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<a class="btn btn-info" style=""
				href="javascript:window.opener=null;window.close();">关闭</a>

			<%-- 		<div class="panel-body">
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

				<!-- <input type="submit" class="btn btn-info" value="修改" /> -->
				<a class="btn btn-info" style="center" href="javascript:window.opener=null;window.close();">关闭</a>
			</div> --%>
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