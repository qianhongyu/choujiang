<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="">
<meta name="baidu-site-verification" content="Vup9CGlqbA" />
<!-- 百度检测-->
<meta name="msvalidate.01" content="6C48EF31F67FA6E09A742953ACAB5A39" />
<!-- 必应搜索-->
<meta name="description" content="年会">
<meta name="keywords" content="年会">
<title>年会</title>
<link href="css/do1.css" rel="stylesheet" media="screen" type="text/css" />
<link href="css/anlmeting.css" rel="stylesheet" media="screen"
	type="text/css" />
<link id="defaultCss"
	href="http://file.kxdpm.com/common/css/default.min.css"
	rel="stylesheet" />

<link
	href="http://file.kxdpm.com/modules/messagewall/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/starmessage/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/lottery20171212/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/shake/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/vote20171122/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/program20170921/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/guest/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/imgwall/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/turntable/default/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/slotmachine/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/popularitymatch/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/question/default/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/topic/default/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/pair2/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/messagewalldanmu/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/countmoney20171130/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/ordergoods/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/imgvote/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/scratchcard/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/tugofwar/default/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/facepk/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/carcollect/default/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/chair/default/module.min.css"
	rel="stylesheet" />
<link
	href="http://file.kxdpm.com/modules/happycatch20171204/module.min.css"
	rel="stylesheet" />
<link href="http://file.kxdpm.com/modules/amazingrace//module.min.css"
	rel="stylesheet" />
<link id="themeCss"
	href="http://file.kxdpm.com/ScreenTheme/w-81//style.css"
	rel="stylesheet" />
<script type="text/javascript" src="http://file.kxdpm.com/js/jquery.js"></script>
<script type="text/javascript"
	src="http://file.kxdpm.com/js/jquery.extensions.js"></script>
<script type="text/javascript"
	src="http://file.kxdpm.com/modules/common/sea.js"></script>
<script language="javascript" type="text/javascript"
	src="js/jquery-1.11.1.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="js/common.js"></script>
<script language="javascript" type="text/javascript"
	src="js/anlmeting.js"></script>
<script src=" js/h.js" type="text/javascript"></script>
<style type="text/css">
#footer {
	margin-top: 20;
}
</style>
</head>
<body>

	<div class="partTab">
		<div class="partContent">
			<div class="tabbox-outer">
				<div class="tabbox">
					<ul>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;微信扫码签到</li>
						<br>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;心愿抽奖</li>
						<br>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现场抽奖</li>
						<br>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;员工抽奖</li>
						<br>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;节目投票</li>
					</ul>

				</div>

			</div>

		</div>

	</div>

	<div data-moduleid="100105" data-modulename="lottery"
		class="module lottery" id="lottery">
		<ul class="moduleBtn">
			<li class="btn_lottery" data-name="lottery" data-description="滚动抽奖"><i
				class="iconfont">&#xe64a;</i></li>
		</ul>
		<div class="left">
			<div class="title">
				<i class="icon icon-title"></i>滚动抽奖
			</div>
			<div class="userList">
				<div class="lucky"></div>
				<div id="luck_user">
					<ul></ul>
				</div>
			</div>
			<div class="condition">
				奖项:
				<div class="select select-lage select-prize">
					<div class="selected" data-prizeid="0" data-amount="0">请选择</div>
					<ul class="prize">
					</ul>
				</div>
				人数:
				<div class="select select-number">
					<div class="selected" data-amount="0">请选择</div>
					<ul>
						<li data-amount="1">1</li>
						<li data-amount="2">2</li>
						<li data-amount="5">5</li>
						<li data-amount="8">8</li>
					</ul>
				</div>
			</div>
			<div class="btn-box">
				<a class="clickBtn" id="beginLuck">开始抽奖</a> 
				<a class="clickBtn stopBtn" id="stopLuck" style="display:none">停止抽奖</a>
				<a class="clickBtn" id="luckIng" style="display:none;">自动抽奖中(<span></span>)</a>
			</div>
		</div>
		<div class="right">
			<div class="title">
				<i class="icon icon-title"></i>中奖名单
				<div class="resultNum">
					获奖人数:<span id="luckNumber">0</span>
				</div>
				<i class="icon icon-more"></i><div id="luckUl" class="result"></div>
			</div>
			<div id="luckUl" class="result"></div>
			<div class="btn-box">
				<a class="btn reclick gray" id="removeLottery">重新抽奖</a> <a
					class="btn submitUser gray" id="submitLottery">确认名单</a>
			</div>
		</div>
	</div>

	<div data-moduleid="100120" data-modulename="slotmachine"
		class="module lottery" id="slotmachine">
		<ul class="moduleBtn">
			<li class="btn_slotmachine" data-name="slotmachine"
				data-description="开心摇奖机"><i class="iconfont">&#xe657;</i></li>
		</ul>
		<div class="slotmachine-left">
			<div class="title left-title">
				<i class="icon icon-title"></i>开心摇奖机
			</div>
			<div class="tiger-light">
				<ul></ul>
			</div>
			<div id="tigerBg">
				<div class="tigerMain"></div>
			</div>
			<div class="condition" id="tigerSelect">
				奖项：
				<div class="select select-middle select-prize">
					<div class="selected" data-prizeid="0" data-amount="0">请选择</div>
					<ul class="prize">
					</ul>
				</div>
				人数：
				<div class="select select-middle select-number">
					<div class="selected" data-amount="0">请选择</div>
					<ul>
						<li data-amount="1">1</li>
						<li data-amount="2">2</li>
						<li data-amount="3">3</li>
						<li data-amount="4">4</li>
						<li data-amount="5">5</li>
						<li data-amount="6">6</li>
						<li data-amount="7">7</li>
						<li data-amount="8">8</li>
						<li data-amount="9">9</li>
						<li data-amount="10">10</li>
					</ul>
				</div>
				<a href="javascript:void(0);" class="btn beginTiger">开始摇奖</a>
			</div>
		</div>
		<div class="right">
			<div class="title">
				<i class="icon icon-title"></i>中奖名单
				<div class="resultNum">
					人数:<span id="slotmachineLuckNumber">0</span>
				</div>
				<i class="icon icon-more"></i>
			</div>
			<div id="slotmachineLuckUl" class="result">
				<ul></ul>
			</div>
			<div class="btn-box">
				<a href="javascript:void(0);" class="btn tiger_submit">确认名单</a>
			</div>
		</div>
	</div>
</body>

</html>

