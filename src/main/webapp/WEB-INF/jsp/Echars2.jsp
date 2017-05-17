<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>EChars Demo</title>
<script type="text/javascript" src='./js/echarts.min.js'></script>
</head>
<body>
	<div id="chart" style="width: 400px; height: 400px;"></div>
</body>
<script type="text/javascript" src="./js/echarts.min.js">
	// 初始化图表标签
	var myChart = echarts.init(document.getElementById('chart'));
	var options = {
		title : {
			text : '年薪统计'
		},
		tooltip : {
			trigger : 'axis'
		},
		legend : {
			data : [ '计科', '网络', '软件' ]
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
					type : [ 'line', 'bar', 'stack', 'tiled' ]
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
			boundaryGap : false,
			data : [ '2014', '2015', '2016' ]
		} ],
		yAxis : [ {
			type : 'value'
		} ],
		series : [ {
			name : '计科平均年薪',
			type : 'line',
			
			data : [ 15, 12, 16 ]
		}, {
			name : '网络平均年薪',
			type : 'line',
			
			data : [ 11, 10, 15 ]
		}, {
			name : '软件平均年薪',
			type : 'line',
			
			data : [ 15, 14, 17 ]
		} ]
	};

	myChart.setOption(options);
</script>
</html>