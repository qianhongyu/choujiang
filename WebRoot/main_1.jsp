<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<title>智能排课管理系统</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">

<!-- 新 Bootstrap 核心 CSS 文件 -->

<!-- 可选的Bootstrap主题文件（一般不用引入） -->

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="http://paike.shikongxian.com:80/paike/resources/bootstrap/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://paike.shikongxian.com:80/paike/resources/bootstrap/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="http://paike.shikongxian.com:80/paike/resources/layui-v1.0.2/layui/css/modules/layer/layer.css">

<!--[if lt IE 9]>
    <script src="http://paike.shikongxian.com:80/paike/resources/bootstrap/js/html5shiv.min.js"></script>
    <script src="http://paike.shikongxian.com:80/paike/resources/bootstrap/js/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet"
	href="http://paike.shikongxian.com:80/paike/resources/bootstrap/css/site.min.css">
<link rel="stylesheet"
	href="http://paike.shikongxian.com:80/paike/resources/font-awesome-4.7.0/css/font-awesome.min.css">
<script
	src="http://paike.shikongxian.com:80/paike/resources/layui-v1.0.2/layui/layui.js"
	charset="utf-8"></script>
<script
	src="http://paike.shikongxian.com:80/paike/resources/layui-v1.0.2/layui/lay/modules/layer.js"
	charset="utf-8"></script>
<link
	href="http://paike.shikongxian.com:80/paike/resources/tips/css/tooltips.css"
	rel="stylesheet" id="skin">
<script
	src="http://paike.shikongxian.com:80/paike/resources/tips/js/jquery.pure.tooltips.js"></script>

<link
	href="http://paike.shikongxian.com:80/paike/resources/Semantic-UI/semantic.min.css"
	rel="stylesheet" type="text/css">
<script
	src="http://paike.shikongxian.com:80/paike/resources/Semantic-UI/semantic.min.js"
	type="text/javascript"></script>


<style>
.ui.form {
	margin: 2rem 3rem;
}
</style>

</head>
<body>

	<style>
.ui.container {
	width: 1200px;
}

.ui.form>.actions {
	margin-top: 2em;
}
</style>

	<div class="ui menu borderless">
		<div class="ui container">

			<h1 class="ui item blue header">智能排课管理系统</h1>


			<div class="right menu">

				<div class="item">欢迎您：周阳</div>

				<a class="item" href="../task/index">
					<div class="ui green basic button">我的任务</div>
				</a> <a class="item">
					<div class="ui green basic button" href="javascript:void(0)"
						id="btnModifyPwd">修改密码</div>
				</a> <a class="item">
					<div class="ui grey basic button" id="btnLogout">退出</div>
				</a>

			</div>


			</ul>
		</div>

	</div>


	<div id="div_modifypwd" style="display: none;">
		<div class="ui content" style="margin: 2rem 3rem;">
			<form class="ui form">
				<div class="field">
					<label>当前密码</label> <input type="password" id="txtPwd"
						placeholder="当前密码 ">
				</div>
				<div class="field">
					<label>新密码</label> <input type="password" id="txtNewPwd"
						placeholder="新密码">
				</div>
				<div class="field">
					<label>确认密码</label> <input type="password" id="txtNewPwd1"
						placeholder="确认密码">
				</div>
			</form>

			<div class="actions" style="text-align: right">
				<div class="ui ok blue icon button medium labeled" id="btnsave">
					<i class="checkmark icon"></i> 保 存
				</div>
				<div class="ui cancel icon button medium labeled" id="btnclose">
					<i class="remove icon"></i> 关 闭
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		var layermodifypwd;

		$("#btnLogout").click(function() {
			layer.confirm('您确定要退出系统吗？', {
				icon : 3,
				//offset:[100],
				btn : [ '确定', '取消' ]
			//按钮
			}, function(index) {
				location.href = "../logout";
			})
		});

		$("#btnModifyPwd").click(function() {
			showModifyPwd("修改密码");
		});

		$("#btnclose").click(function() {
			$('#div_modifypwd').hide();
			layer.close(layermodifypwd);
		});

		$("#btnsave").click(function() {
			var pwd = $.trim($("#txtPwd").val());
			var newpwd1 = $.trim($("#txtNewPwd").val());
			var newpwd2 = $.trim($("#txtNewPwd1").val());

			var errmsg = "";
			if (pwd == "" || pwd == null) {
				errmsg += "当前密码不能为空<br>";
			}

			if (newpwd1 == "" || newpwd1 == null) {
				errmsg += "新密码不能为空<br>";
			}

			if (newpwd1 != newpwd2) {
				errmsg += "新密码与确认密码不相同<br>";
			}
			if (errmsg != "") {
				layer.msg(errmsg, {
					icon : 0,
					offset : [ 100 ],
					time : 2000
				});
				return false;
			}

			$.post("../modifyPwd", {
				"pwd" : pwd,
				"newpwd1" : newpwd1,
				"newpwd2" : newpwd2
			}, function(result) {
				if (result.err == false) {
					layer.msg(result.msg, {
						icon : 0,
						time : 2000
					}, function() {
					});
				} else {
					layer.msg(result.msg, {
						icon : 1,
						time : 2000
					}, function() {
						layer.close(layermodifypwd);
					});
				}
			});

		});

		/**
		 * 加载排课任务列表
		 */
		function loadMyTask() {
			$
					.ajax({
						type : "post",
						url : "TaskAction/getTaskList.action",
						data : {},
						dataType : "json",
						success : function(data) {
							var result = data.list;
							for (var i = 0; null != result && i < result.length; i++) {
								var isNotStr = result[i].isnot == 0 ? "<div class='ui label orange'>未排课</div>"
										: "<div class='ui label teal'>已排课</div>";
								var tr = "<tr> " + "<td>"
										+ result[i].name
										+ "</td> "
										+ "<td>"
										+ result[i].term
										+ "</td> "
										+ "<td>每周:"
										+ result[i].days
										+ "天,上午:"
										+ result[i].morning
										+ "节,下午:"
										+ result[i].afternoon
										+ "节,晚上:"
										+ result[i].night
										+ "节"
										+ "     <span class='ui teal button icon mini' onclick='setDays(\""
										+ result[i].guid
										+ "\",0)'><i class='list icon'></i> 节次</span>"
										+ "</td> "
										+ "<td><span class='ui center aligned teal button icon mini' onclick='setTimes(\""
										+ result[i].guid
										+ "\")'><i class='calendar icon'></i> 上课时间</span></td>"
										+ "<td class='center aligned'>"
										+ isNotStr
										+ "</td>"
										+ "<td class='center aligned'> "
										+ "     <span class='ui blue button icon mini' onclick='next(\""
										+ result[i].guid
										+ "\")'><i class='browser icon'></i> 排课</span> "
										+ "     <span class='ui green button icon mini' onclick='editTask(\""
										+ result[i].guid
										+ "\")'><i class='write icon'></i> 编辑</span> "
										+ "     <span class='ui red button icon mini' onclick='delTask(\""
										+ result[i].guid
										+ "\")'><i class='trash outline icon'></i> 删除</span> "
										+ "</td> " + "</tr>";
								$("#tabList").append(tr);

							}
						},
						error : function(data) {

						}
					});

		}

		var showModifyPwd = function(title) {
			$("#txtPwd").val("");
			$("#txtNewPwd").val("");
			$("#txtNewPwd1").val("");
			layermodifypwd = layer.open({
				type : 1,
				title : title,
				//offset:[100],
				//skin: 'layui-layer-rim', //加上边框
				area : [ '420px', '360px' ], //宽高
				content : $('#div_modifypwd')
			});
		}

		var layerTask;
		var layerDays;

		$(function() {

			$("#btnCreateTask").click(function() {
				$("#btnCreateTaskSubmit").prop("disabled", false);
				showTask("创建排课任务");
			});

			loadMyTask();

			$("#btnCreateTaskSubmit").click(function() {
				saveTask();
			});

			$("#btnCreateTaskClose").click(function() {
				layer.close(layerTask);
			});

			$("#btnCreateDaysClose").click(function() {
				layer.close(layerDays);
			});

			$("#btnCreateDaysSubmit").click(function() {
				saveDays();
			});
		});

		//修改排课
		var editTask = function(guid) {
			$("#btnCreateTaskSubmit").prop("disabled", false);
			$.getJSON("../task/gettask", {
				"guid" : guid
			}, function(result) {
				if (result.err == true) {
					showTask("修改排课任务");
					var data = result.data;

					$("#txtId").val(data.guid);
					$("#txtName").val(data.name);
					$("#txtTerm").val(data.term);

					$("#selDaysAdd").val(data.days);
					$("#selMorningAdd").val(data.morning);
					$("#selAfternoonAdd").val(data.afternoon);
					$("#selNightAdd").val(data.night);
				} else {
					layer.msg(result.msg, {
						icon : 0,
						offset : [ 100 ],
						time : 2000
					});
				}
			});

		};

		var next = function(guid) {
			location.href = "../task/main?guid=" + guid;
		};

		var delTask = function(guid) {
			layer.confirm('您确定删除该排课任务吗？', {
				icon : 3,
				btn : [ '确定', '取消' ]
			//按钮
			}, function(index) {

				layer.load(1);

				$.post("../task/deltask", {
					"guid" : guid
				}, function(result) {
					layer.closeAll('loading');
					if (result.err == true) {
						layer.msg("删除成功", {
							icon : 1,
							offset : [ 100 ],
							time : 2000
						}, function() {
							loadMyTask();
						});
					} else {
						layer.msg(result.msg, {
							icon : 0,
							offset : [ 100 ],
							time : 2000
						});
					}
				});
			})
		};

		//显示排课
		var showTask = function(title) {
			$("#txtName").val("");
			$("#txtTerm").val("");
			$("#txtId").val("");
			layerTask = layer.open({
				type : 1,
				title : title,
				//offset:[100],
				//skin: 'layui-layer-rim', //加上边框
				area : [ '410px' ], //宽高
				content : $('#div_create_task')
			});
		}

		var setDays = function(guid, sign) {
			$("#txtsign_days").val(sign);

			if (sign == 1) {
				$("#lblDes").hide();
			} else {
				$("#lblDes").show();
			}

			$("#btnCreateDaysSubmit").prop("disabled", false);
			$.getJSON("../getTaskList", {
				"guid" : guid
			}, function(result) {
				if (result.err == true) {
					var data = result.data;

					$("#txtId_days").val(data.guid);

					$("#lblTask").text(data.name);
					$("#lblTerm").text(data.term);

					$("#selDays").val(data.days);
					$("#selMorning").val(data.morning);
					$("#selAfternoon").val(data.afternoon);
					$("#selNight").val(data.night);

					layerDays = layer.open({
						type : 1,
						title : "设置节次",
						//offset:[100],
						//skin: 'layui-layer-rim', //加上边框
						area : [ '500px' ], //宽高
						content : $('#div_create_days')
					});
				} else {
					layer.msg(result.msg, {
						icon : 0,
						offset : [ 100 ],
						time : 2000
					});
				}
			});
		}

		//保存排课
		var saveTask = function() {
			var guid = $.trim($("#txtId").val());
			var name = $.trim($("#txtName").val());
			var term = $.trim($("#txtTerm").val());

			var errmsg = "";
			if (name == "") {
				errmsg += "请填写排课名称<br>";
			}
			if (term == "") {
				errmsg += "请填写学期名称<br>";
			}

			if (errmsg != "") {
				layer.msg(errmsg, {
					icon : 0,
					offset : [ 100 ],
					time : 2000
				});
				return false;
			}

			$("#btnCreateTaskSubmit").prop("disabled", true);

			var data = {
				"guid" : guid,
				"name" : name,
				"term" : term
			};
			$.ajax({
				type : "post",
				url : "TaskAction/toAddTask.action",
				data : {
					"guid" : guid,
					"name" : name,
					"term" : term
				},
				dataType : "json",
				success : function(data) {
					if (data.err == true) {
						layer.msg("设置成功", {
							icon : 1,
							offset : [ 100 ],
							time : 2000
						}, function() {
							$("#btnCreateTaskSubmit").prop("disabled", false);
							layer.close(layerTask);
							loadMyTask();
						});

					} else {
						$("#btnCreateTaskSubmit").prop("disabled", false);
						layer.msg(data.msg, {
							icon : 0,
							offset : [ 100 ],
							time : 2000
						});
					}

				}
			});

		}

		var saveDays = function() {
			var guid = $.trim($("#txtId_days").val());
			var sign = $.trim($("#txtsign_days").val());

			var days = $("#selDays").val();
			var morning = $("#selMorning").val();
			var afternoon = $("#selAfternoon").val();
			var night = $("#selNight").val();

			var data = {
				"guid" : guid,
				"days" : days,
				"morning" : morning,
				"afternoon" : afternoon,
				"night" : night
			};

			if (sign == 1) {
				saveDaysfun(data);
			} else {
				layer.confirm(
						'如果已经排课或设定规则<br>重新设置节次后相关的排课结果与规则将被清空!<br>是否重新设置节次信息？',
						{
							btn : [ '是', '否' ]
						}, function() {
							saveDaysfun(data);
						}, function() {
						});
			}

		}

		var saveDaysfun = function(data) {
			$("#btnCreateDaysSubmit").prop("disabled", true);
			$.post("../task/setdays", data, function(result) {
				if (result.err == true) {
					layer.msg("设置成功", {
						icon : 1,
						offset : [ 100 ],
						time : 2000
					}, function() {
						$("#btnCreateDaysSubmit").prop("disabled", false);
						layer.close(layerDays);
						loadMyTask();
					});
				} else {
					$("#btnCreateDaysSubmit").prop("disabled", false);
					layer.msg(result.msg, {
						icon : 0,
						offset : [ 100 ],
						time : 2000
					});
				}
			});
		}

		var settimelayer;
		var coursenum;

		$(function() {
			$("#btnTimeClose").click(function() {
				layer.close(settimelayer);
			});

			$("#btnTimeSubmit").click(function() {
				var errmsg = "";
				var taskguid = $("#btnTimeSubmit").data("guid");

				for (var i = 1; i < coursenum + 1; i++) {
					var begintime = $("#begintime_" + i).val();
					var endtime = $("#endtime_" + i).val();
					if (begintime == "" || endtime == "") {
						errmsg += "请填写第" + i + "节" + "课程时间<br>";
					} else {

					}
				}

				if (errmsg != "") {
					layer.msg(errmsg, {
						icon : 0,
						offset : [ 100 ],
						time : 2000
					});
					return false;
				}

				var arr = new Array();
				for (var i = 1; i < coursenum + 1; i++) {
					var begintime = $("#begintime_" + i).val();
					var endtime = $("#endtime_" + i).val();
					var d = {
						"course" : i,
						"begintime" : begintime,
						"endtime" : endtime
					};
					arr.push(d);
				}

				var data = {
					"taskGuid" : taskguid,
					"times" : arr
				};
				$.ajax({
					type : 'POST',
					url : "../clazztime/set",
					data : JSON.stringify(data),
					contentType : 'application/json',
					success : function(result) {
						if (result.err == true) {
							layer.msg(result.msg, {
								icon : 1,
								offset : [ 100 ],
								time : 2000
							}, function() {
								layer.close(settimelayer);
							});
						} else {
							layer.msg(result.msg, {
								icon : 0,
								offset : [ 100 ],
								time : 2000
							});
						}

					}
				});
			});
		});
	</script>


	<div class="main ui container">
		<div class="page content">
			<h3 class="ui green header" style="display: inline;">开始排课！请先创建排课任务</h3>


			<img src="../resources/images/help.png" id="tooltips"
				style="width:25px;height: 25px;float:right;margin-right:30px;" />

			<div>
				<div class="ui button right floated blue" id="btnCreateTask"
					style="margin:0.5em;">创建排课任务</div>
			</div>



			<table class="ui celled striped table yellow" style="margin-top:20px">
				<thead>
					<tr>
						<th>排课任务名称</th>
						<th>学期</th>
						<th>节次</th>
						<th>上课时间</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tabList">

				</tbody>
			</table>

		</div>
	</div>
</body>
</html>


<div id="div_create_task" style="display:none">
	<div class="ui form">

		<div class="inline fields">
			<label class="six wide field">排课任务名称</label>
			<div class="twelve wide field">
				<input type="text" id="txtName">
			</div>
			<input type="hidden" id="txtId">
		</div>

		<div class="inline fields">
			<label class="six wide field">学期名称</label>
			<div class="twelve wide field">
				<input type="text" id="txtTerm">
			</div>
		</div>

		<div class="actions" style="text-align: right">
			<div class="ui ok blue icon button medium labeled"
				id="btnCreateTaskSubmit">
				<i class="checkmark icon"></i> 保 存
			</div>
			<div class="ui cancel icon button medium labeled"
				id="btnCreateTaskClose">
				<i class="remove icon"></i> 关 闭
			</div>
		</div>

	</div>

</div>

<div id="div_create_days" style="display:none">

	<div class="ui form">

		<div class="field">
			<div id="lblTask" class="ui label tag teal lblTask"></div>
			<div id="lblTerm" class="ui label tag blue lblTerm"></div>

			<input type="hidden" id="txtId_days"> <input type="hidden"
				id="txtsign_days">
		</div>

		<div class="inline fields">
			<label class="four wide field">每周</label>
			<div class="twelve wide field">
				<select id="selDays" class="ui fluid dropdown">
					<option value="1">1天</option>
					<option value="2">2天</option>
					<option value="3">3天</option>
					<option value="4">4天</option>
					<option value="5" selected="selected">5天</option>
					<option value="6">6天</option>
					<option value="7">7天</option>
				</select>

			</div>
		</div>

		<div class="inline fields">
			<label class="four wide field">上午</label>
			<div class="twelve wide field">
				<select id="selMorning" class="ui fluid dropdown">
					<option value="0">0节</option>
					<option value="1">1节</option>
					<option value="2">2节</option>
					<option value="3">3节</option>
					<option value="4" selected="selected">4节</option>
					<option value="5">5节</option>
					<option value="6">6节</option>
					<option value="7">7节</option>
				</select>
			</div>
		</div>

		<div class="inline fields">
			<label class="four wide field">下午</label>
			<div class="twelve wide field">
				<select id="selAfternoon" class="ui fluid dropdown">
					<option value="0">0节</option>
					<option value="1">1节</option>
					<option value="2">2节</option>
					<option value="3">3节</option>
					<option value="4" selected="selected">4节</option>
					<option value="5">5节</option>
					<option value="6">6节</option>
					<option value="7">7节</option>
				</select>
			</div>
		</div>


		<div class="inline fields">
			<label class="four wide field">晚上</label>
			<div class="twelve wide field">
				<select id="selNight" class="ui fluid dropdown">
					<option value="0">0节</option>
					<option value="1">1节</option>
					<option value="2">2节</option>
					<option value="3">3节</option>
					<option value="4" selected="selected">4节</option>
					<option value="5">5节</option>
					<option value="6">6节</option>
					<option value="7">7节</option>
				</select>
			</div>
		</div>

		<div class="field" id="lblDes">
			<label style="color:red;">说明：如果修改上课天数及节次数，系统将删除所有规则及排课结果！</label>
		</div>

		<div class="actions" style="text-align: right">
			<div class="ui ok blue icon button medium labeled"
				id="btnCreateDaysSubmit">
				<i class="checkmark icon"></i> 保 存
			</div>
			<div class="ui cancel icon button medium labeled"
				id="btnCreateDaysClose">
				<i class="remove icon"></i> 关 闭
			</div>
		</div>
	</div>
</div>


<div id="div_CourseTime" style="display:none">

	<div class="ui form" id="div_course">

		<label id="div_course_set" style="color: red">
			说明：所有时间填写为四位数字如8点10分。填写0810！！！ </label>

		<div class="actions" style="text-align: right">
			<div class="ui ok blue icon button medium labeled" id="btnTimeSubmit">
				<i class="checkmark icon"></i> 保 存
			</div>
			<div class="ui cancel icon button medium labeled" id="btnTimeClose">
				<i class="remove icon"></i> 关 闭
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	$(function() {
		$('#tooltips')
				.pt(
						{
							position : 'b', // 默认属性值
							align : 'r', // 默认属性值
							content : '说明 <br>步骤1：请选创建排课，输入排课名称与学期名称保存； <br>步骤2：排课创建完成，点击节次设置节次信息；<br>完成操作！'
						});
	})
</script>
