<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>房屋销售</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- basic styles -->
<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
<!-- page specific plugin styles -->
<!-- ace styles -->
<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="custom/jquery.min.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<style type="text/css">
.table-striped {
	width: 100%;
}

.table-striped td {
	height: 36px;
}

.table-striped th {
	height: 36px;
}

tfoot a {
	margin: 0px 5px;
}

.table-header {
	background-color: #1DA028;
}

.space {
	margin: 3px 0px;
}

.bt-hei {
	height: 30px;
	line-height: 12px;
	margin-bottom: 1px;
	margin-right: 20px;
	border-radius: 4px;
	padding: 0px 15px;
}

tfoot font {
	margin: 0px 20px;
	padding: 5px 20px;
}

.table-responsive font {
	padding: 5px 20px;
	cursor: pointer;
}

.bl {
	background-color: #55A02A;
}

.bc {
	background-color: #FF7F00;
}

.b0 {
	border: 1px solid #ccc;
}

.bb {
	background-color: #8C8C8C;
}

.bz {
	background-color: #D393D8;
}

.br {
	background-color: #FF0000;
}

.by {
	background-color: #FFD700;
}

.bu {
	background-color: #1E90FF;
}

.table-responsive {
	border: 1px solid #ccc;
	height: 360px;
	overflow-y: auto;
}

.table-responsive div {
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
	text-align: center;
	height: 30px;
	line-height: 30px;
	width: 12.5%;
	float: left;
}
/*定义滚动条宽高及背景，宽高分别对应横竖滚动条的尺寸*/
.table-responsive::-webkit-scrollbar {
	width: 5px;
	height: 16px;
	background-color: #1DA028;
}
/*定义滚动条的轨道，内阴影及圆角*/
.table-responsive::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
	border-radius: 20px;
	background-color: #f5f5f5;
}
/*定义滑块，内阴影及圆角*/
.table-responsive::-webkit-scrollbar-thumb {
	/*width: 10px;*/
	height: 20px;
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
	background-color: #1DA028;
}
</style>
</head>
<body>
	<div class="main-container">
		<div class="main-container-inner">
			项目名称: <select id="selProject" name="selProject" onchange="getBuildingName()" class="f-control"
				style="max-width:30%;margin-right: 20px;">
			</select> 楼号: <select id="selBuinding" name="selBuinding" onchange="getDanyYuanName()" class="f-control"
				style="min-width:10%;margin-right: 20px;">
			</select> 单元: <select id="selDanYuan" name="selDanYuan" class="f-control"
				style="min-width:10%;margin-right: 20px;">
			</select> <input class="btn btn-primary btn-white bt-hei" id="" type="button"
				value="查找" />
		</div>
		<div class="space"></div>
		<!-- 表格 -->
		<div class="table-header">销售房屋列表</div>
		<div class="table-responsive">
			<div>
				<font class="bl">11-1101</font>
			</div>
			<div>
				<font class="bl">11-1101</font>
			</div>
			<div>
				<font class="bl">11-1101</font>
			</div>
			<div>
				<font class="bu">11-1101</font>
			</div>
			<div>
				<font class="bu">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="by">11-1101</font>
			</div>
			<div>
				<font class="by">11-1101</font>
			</div>
			<div>
				<font class="by">11-1101</font>
			</div>
			<div>
				<font class="by">11-1101</font>
			</div>
			<div>
				<font class="bz">11-1101</font>
			</div>
			<div>
				<font class="bz">11-1101</font>
			</div>
			<div>
				<font class="bz">11-1101</font>
			</div>
			<div>
				<font class="br">11-1101</font>
			</div>
			<div>
				<font class="br">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
			<div>
				<font class="b0">11-1101</font>
			</div>
		</div>
		<table id="table-1" class="table-striped table-bordered table-hover">
			<tfoot>
				<tr>
					<td><font class="bl">可销售</font> <font class="bc">不可销售(自持)</font>
						<font class="b0">不可销售(自持)</font> <font class="bb">自留</font> <font
						class="bz">已备案</font> <font class="br">查封</font> <font class="by">抵押</font>
						<font class="bu">锁定</font></td>
				</tr>
			</tfoot>
		</table>
	</div>
	<!-- /.main-container -->
	<script type="text/javascript">
	$(function () {
        getSaleList();
    });
		/**
     * 加载销售项目列表
     */
    function getSaleList(){
    alert(1);
        $.ajax({
            type: "post",
            url: "ToSaleAction/getSaleItemName.action",
            dataType: "json",
            success: function (result) {
            alert(2);
                var data = eval(result);
                for (var i = 0; null != data && i < data.length; i++) {
                    $("#selProject").append("<option value = '" + data[i].saleItemId + "'>" + data[i].preItemName + "</option>");
                }
            }         
        });
    }
    
    	/**
     * 加载销售项目列表
     */
    function getBuildingName(){
    	var SaleItemID = $("#selProject").val();
    	alert(3);
        $.ajax({
            type: "post",
            url: "ToSaleAction/getBuildingName.action",
            dataType: "json",
            data: {SaleItemID: SaleItemID},
            success: function (result) {
            alert(4);
                var data = eval(result);
                for (var i = 0; null != data && i < data.length; i++) {
                    $("#selBuinding").append("<option value = '" + data[i].buildingInfo_ID + "'>" + data[i].buildingName + "</option>");
                }
            }         
        });
    }
    
    	/**
     * 加载销售项目列表
     */
    function getDanyYuanName(){
    	var BuildingID = $("#selBuinding").val();
    	alert(5);
        $.ajax({
            type: "post",
            url: "ToSaleAction/getDanYuanName.action",
            dataType: "json",
            data: {BuildingID: BuildingID},
            success: function (result) {
            alert(6);
                var data = eval(result);
                for (var i = 0; null != data && i < data.length; i++) {
                    $("#selDanYuan").append("<option value = '" + data[i].houseID + "'>" + data[i].unitNo + "</option>");
                }
            }         
        });
    }
	</script>
</body>
</html>

