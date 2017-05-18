<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
				<a class="navbar-brand" href="#">按专业查询近三年薪酬</a>
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
					<button type="submit" class="btn btn-default">近三年薪酬查询</button>
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
	<div id="chart" style="float: left; width: 300px; height: 300px;"></div>
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
    // 初始化图表标签
    var myChart = echarts.init(document.getElementById('chart'));

    var options={
            //定义一个标题
            title:{
                text:'网络工程',
               	subtext:'单位（w）'
            },
            legend:{
                data:['数量']
            },
            //X轴设置
            xAxis:{
                data:['2015','2016','2017']
            },
            yAxis:{
            },
            //name=legend.data的时候才能显示图例
            series:[{
                name:'年薪',
                type:'bar',
                data:['15','18','12']
            }]
        };
    myChart.setOption(options);
    
</script>
</html>