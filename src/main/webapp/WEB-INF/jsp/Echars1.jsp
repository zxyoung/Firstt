<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>EChars Demo</title>
<script type="text/javascript" src='./js/echarts.min.js'></script>
</head>
<body>

	<div class="btn-group">
		<button type="button" class="btn btn-primary dropdown-toggle"
			data-toggle="dropdown">
			选项 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="http://localhost:8080/EchartsDemo/index.jsp">按专业</a></li>
			<li><a href="http://localhost:8080/EchartsDemo/index2.jsp">按年份</a></li>
			<!-- <li><a href="#">其他</a></li> -->
			<li class="divider"></li>
			<li><a href="#">分离的链接</a></li>
		</ul>
	</div>


</body>

<!-- <link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
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