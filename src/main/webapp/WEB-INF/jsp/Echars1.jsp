<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>EChars Demo</title>
<script type="text/javascript" src='./js/echarts.min.js'></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">薪酬统计</a>
			</div>
			<div>
				<form action="/firstt/admin/testEmploy"
					class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<select name="major" class="form-control">
							<option value="null">选择专业...</option>
							<option>计科</option>
							<option>网络</option>
							<option>软工</option>
						</select>
					</div>
					<div class="form-group">
						<input name="startYear" type="text" class="form-control"
							placeholder="起始年份...">
					</div>
					<div class="form-group">
						<input name="endYear" type="text" class="form-control"
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

<script type="text/javascript" src="./js/echarts.min.js">
	// 初始化图表标签
	var myChart = echarts.init(document.getElementById('chart'));
	var options = {
		//定义一个标题
		title : {
			text : '计算机科学与技术'
		},
		legend : {
			data : [ '数量' ]
		},
		//X轴设置
		xAxis : {
			data : [ '2013', '2014', '2015' ]
		},
		yAxis : {},
		//name=legend.data的时候才能显示图例
		series : [ {
			name : '年薪',
			type : 'bar',
			data : [ '12', '15', '18' ]
		} ]
	};
	myChart.setOption(options);
</script>
</html>