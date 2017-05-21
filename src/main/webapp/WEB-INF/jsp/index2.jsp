<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/tag.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>薪酬统计</title>
<script src="http://cdn.bootcss.com/echarts/3.5.4/echarts.min.js"></script>
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
	<div id="chart" style="width: 400px; height: 400px;"></div>
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
	var options = {
		title : {
			text : '年薪(w)对比',
			subtext : '最近三年'
		},
		tooltip : {
			trigger : 'axis'
		},
		legend : {
			data : [ '计科', '软件', '网络' ]
		},
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
		xAxis : [ {
			type : 'category',
			data : [ '2015年', '2016年', '2017年' ]
		} ],
		yAxis : [ {
			type : 'value'
		} ],
		series : [ {
			name : '计科',
			type : 'bar',
			data : [ 12, 18, 15 ],
			markPoint : {
				data : [ {
					type : 'max',
					name : '最大值'
				}, {
					type : 'min',
					name : '最小值'
				} ]
			},
			markLine : {
				data : [ {
					type : 'average',
					name : '平均值'
				} ]
			}
		}, {
			name : '网络',
			type : 'bar',
			data : [ 15, 18, 12 ],
			markPoint : {
				data : [ {
					type : 'max',
					name : '最大值'
				}, {
					type : 'min',
					name : '最小值'
				} ]
			},
			markLine : {
				data : [ {
					type : 'average',
					name : '平均值'
				} ]
			}
		}, {
			name : '软件',
			type : 'bar',
			data : [ 12, 18, 15 ],
			markPoint : {
				data : [ {
					type : 'max',
					name : '最大值'
				}, {
					type : 'min',
					name : '最小值'
				} ]
			},
			markLine : {
				data : [ {
					type : 'average',
					name : '平均值'
				} ]
			}
		}, ]
	};
	myChart.setOption(options);
</script>
</html>