<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>图表</title>
</head>
<body>
	<!-- 图表容器 DOM -->
	<div id="container" style="width: 600px;height:400px;"></div>
	<!-- 引入 highcharts.js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<script src="tubiao/js/highcharts.js"></script>
	<input type="hidden" id="txtId">
	<script>
		
		$(function() {
			loadMyTask();
		});
		function loadMyTask() {
			$.ajax({
				type : "post",
				url : "AllAction/getAllInfo.action",
				data : {},
				dataType : "json",
				success : function(data) {
					alert(data.list.length);
					var result = data.list;
					$("#txtId").val(result);
					Highcharts.chart('container', options);
				}
			});
		}

		// 图表配置
		var options = {
			chart : {
				type : 'column' //指定图表的类型，默认是折线图（line）
			},
			title : {
				text : '各医院总体评分排名情况' // 标题

			},
			xAxis : {
				categories : [ '墩头镇中心卫生院', '曲塘中心卫生院', '仁济医院', '李堡中心卫生院',
						'城东中心卫生院', '大公镇中心卫生院', '南莫中心卫生院', '雅周镇中心卫生院',
						'白甸中心卫生院', '滨海新区中心卫生院' ]
			// x 轴分类
			},
			yAxis : {
				max : 1,
				min : 0,
				tickInterval : 0.1, //值之间的差
				title : {
					text : '' // y轴标题
				}
			},
			series : [ { // 数据列
				name : '总体评分' + $.trim($("#txtId").val()).length,
				data : $.trim($("#txtId").val())
			} ]
		};

	</script>
	

</body>
</html>
