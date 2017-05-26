<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>EChars Demo</title>
<script src="http://cdn.bootcss.com/echarts/3.5.4/echarts.min.js"></script>

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
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">薪酬统计</a>
			</div>
			<div>
				<form action="/firstt/user/hehe" id="form1"
					class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<select id="major" name="major" class="form-control">
							<option value="null">选择专业...</option>
							<option>计科</option>
							<option>网络</option>
							<option>软工</option>
						</select>
					</div>
					<div class="form-group">
						<input name="start" id="start" type="text" class="form-control"
							placeholder="起始年份...">
					</div>
					<div class="form-group">
						<input name="end" id="end" type="text" class="form-control"
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
	<div id="chart" style="width: 600px; height: 400px;">你好啊</div>

	<script type="text/javascript">
		//初始化图表标签
		var myChart = echarts.init(document.getElementById('chart'));
		myChart.setOption({
			tooltip : {},
			toolbox : {
				show : true,
				feature : {
					mark : {
						show : true
					},
					dataView : {
						show : true,
						readOnly : false
					},
					magicType : {
						show : true,
						type : [ 'line', 'bar' ]
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			legend : {
				data : [ '销量' ]
			},
			xAxis : {
				data : []
			},
			yAxis : {},
			series : [ {
				name : '年薪',
				type : 'bar',
				data : []
			} ]
		});

		//数据加载完之前先显示一段简单的loading动画
		myChart.showLoading();

		var year = [];
		var salary = [];

		var major = $("#major").val();
		var start = $("#start").val();
		var end = $("#end").val();
		console.log(major + start + end);
		$.ajax({
			type : "get",
			async : true,
			url : "/firstt/user/hehe",
			data : {},
			dataType : "json",
			success : function(result) {
				console.log('slkfjds');
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
						title : {
							text :result[0].major+ '年薪统计'
						},
						xAxis : {
							data : year,
							name : '年份'
						},
						yAxis : {
							name : '年薪(w)'
						},
						series : [ {
							name : "专业："+result[0].major,
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
	</script>
</body>


</html>