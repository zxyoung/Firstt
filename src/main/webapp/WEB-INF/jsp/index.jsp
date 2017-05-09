<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<html>
<head>
    <meta charset="UTF-8">
    <title>EChars Demo</title>
    <script type="text/javascript" src='./js/echarts.min.js'></script>
</head>
<body>
    <div id="chart" style="float:left; width:300px;height:300px;"></div>
    
    <div id="chart2" style="float:left; width:300px;height:300px;"></div>
    
    <div id="chart3" style="float:left; width:300px;height:300px;"></div>
</body>
<script type="text/javascript">
    // 初始化图表标签
    var myChart = echarts.init(document.getElementById('chart'));
    var myChart2 = echarts.init(document.getElementById('chart2'));
    var myChart3 = echarts.init(document.getElementById('chart3'));
    var options={
        //定义一个标题
        title:{
            text:'计算机科学与技术'
        },
        legend:{
            data:['数量']
        },
        //X轴设置
        xAxis:{
            data:['2013','2014','2015']
        },
        yAxis:{
        },
        //name=legend.data的时候才能显示图例
        series:[{
            name:'年薪',
            type:'bar',
            data:['12','15','18']
        }]
    };
    
    var options1={
            //定义一个标题
            title:{
                text:'软件工程'
            },
            legend:{
                data:['数量']
            },
            //X轴设置
            xAxis:{
                data:['2013','2014','2015']
            },
            yAxis:{
            },
            //name=legend.data的时候才能显示图例
            series:[{
                name:'年薪',
                type:'bar',
                data:['12','15','18']
            }]
        };
    var options2={
            //定义一个标题
            title:{
                text:'网络工程'
            },
            legend:{
                data:['数量']
            },
            //X轴设置
            xAxis:{
                data:['2013','2014','2015']
            },
            yAxis:{
            },
            //name=legend.data的时候才能显示图例
            series:[{
                name:'年薪',
                type:'bar',
                data:['12','15','18']
            }]
        };
    myChart.setOption(options);
    myChart2.setOption(options1);
    myChart3.setOption(options2);
    
</script>
</html>