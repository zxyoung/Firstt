<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/tag.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>EChars Demo</title>

<script src="http://cdn.bootcss.com/echarts/3.5.4/echarts.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">薪酬统计</a>
			</div>
			<div>
				<form action="/firstt/admin/hehe" class="navbar-form navbar-left"
					role="search">
					<div class="form-group">
						<select name="major" class="form-control">
							<option value="null">选择专业...</option>
							<option>计科</option>
							<option>网络</option>
							<option>软工</option>
						</select>
					</div>
					<div class="form-group">
						<input name="start" type="text" class="form-control"
							placeholder="起始年份...">
					</div>
					<div class="form-group">
						<input name="end" type="text" class="form-control"
							placeholder="截止年份...">
					</div>
					<button type="submit" class="btn btn-default">查询</button>
				</form>
			</div>
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">综合对比</a>
				</div>

				<div>
					<form action="/firstt/admin/testTongji"
						class="navbar-form navbar-left" role="search">
						<button type="submit" class="btn btn-default">薪酬对比</button>
					</form>
				</div>
			</div>
		</div>
	</nav>
	<!-- <div id="chart" style="float: left; width: 300px; height: 300px;"></div> -->
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-header">
				<h2 align="center">薪酬统计</h2>
			</div>

			<div class="matter">
				<div class="container">
					<div class="col-md-10">
						<div class="widget">
							<div class="widget-head">
								<div class="pull-left"></div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">

								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>专业</th>
											<th>年份</th>
											<th>平均年薪(w)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}">
											<td>${list.major}</td>
											<td>${list.gra_Year}</td>
											<td>${list.avg_salary}</td>
											<tr />
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	require.config({
		paths : {
			echarts : './js/echarts',
			'echarts/chart/bar' : './js/echarts-map',
			'echarts/chart/line' : './js/echarts-map',
			'echarts/chart/map' : './js/echarts-map'
		}
	});

	//初始化图表标签
	var myChart = echarts.init(document.getElementById('chart'));
	var options = {
		//定义一个标题
		title : {
			text : '计科（近三年薪酬统计）',
			subtext : '单位（w）'
		},
		tooltip : {},
		legend : {
			data : [ '数量' ]
		},
		//X轴设置
		xAxis : {
			data : []
		},
		yAxis : {},
		//name=legend.data的时候才能显示图例
		series : [ {
			name : '年薪(w)',
			type : 'bar',
			data : []
		} ]
	};

	//数据加载完之前先显示一段简单的loading动画
	myChart.showLoading();

	var year = [];
	var salary = [];

	$.ajax({
		type : "post",
		async : true,
		url : "/firstt/user/hehe",
		data : {},
		dataType : "json",
		success : function(result) {
			if (result) {
				console.log(result)
				for (var i = 0; i < result.length; i++) {
					year.push(result[i].gra_Year);
				}
				for (var i = 0; i < result.length; i++) {
					salary.push(result[i].avg_salary);
				}
				//隐藏加载动画
				myChart.hideLoading();
				myChart.setOption({
					xAxis : {
						data : year
					},
					series : [ {
						name : '年份',
						data : salary
					} ]
				});
			}
		},
		error : function(errorMsg) {
			alert("数据请求失败！");
			myChart.hideLoading();
		}
	})

	myChart.setOption(options);
</script>
</html>