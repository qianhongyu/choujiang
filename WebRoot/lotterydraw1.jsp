<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width" />
<meta name="keywords" content="" />
<meta name="description" content="lotterydraw" />
<title>抽奖</title>
<link id="defaultCss"
	href="http://file.kxdpm.com/common/css/default.min.css"
	rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
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

<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?3164d4b36cd5a0ca1743a0c8ff865ff1";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
<script type="text/javascript">
	var module = [ 'http://file.kxdpm.com/modules/common/main',
			'http://file.kxdpm.com/modules/common/notice',
			'http://file.kxdpm.com/modules/common/count',
			'http://file.kxdpm.com/modules/common/logo',
			'http://file.kxdpm.com/modules//messagewall/default/module',
			'http://file.kxdpm.com/modules//starmessage/default/module',
			'http://file.kxdpm.com/modules//lottery20171212/module',
			'http://file.kxdpm.com/modules//shake/module',
			'http://file.kxdpm.com/modules//vote20171122/module',
			'http://file.kxdpm.com/modules//program20170921/module',
			'http://file.kxdpm.com/modules//guest/default/module',
			'http://file.kxdpm.com/modules//imgwall/default/module',
			'http://file.kxdpm.com/modules//turntable/default/module',
			'http://file.kxdpm.com/modules//slotmachine/module',
			'http://file.kxdpm.com/modules//popularitymatch/default/module',
			'http://file.kxdpm.com/modules//question/default/module',
			'http://file.kxdpm.com/modules//topic/default/module',
			'http://file.kxdpm.com/modules//pair2/default/module',
			'http://file.kxdpm.com/modules//messagewalldanmu/default/module',
			'http://file.kxdpm.com/modules//countmoney20171130/module',
			'http://file.kxdpm.com/modules//ordergoods/default/module',
			'http://file.kxdpm.com/modules//imgvote/default/module',
			'http://file.kxdpm.com/modules//scratchcard/default/module',
			'http://file.kxdpm.com/modules//tugofwar/default/module',
			'http://file.kxdpm.com/modules//facepk/default/module',
			'http://file.kxdpm.com/modules//carcollect/default/module',
			'http://file.kxdpm.com/modules//chair/default/module',
			'http://file.kxdpm.com/modules//happycatch20171204/module',
			'http://file.kxdpm.com/modules//amazingrace//module' ];

	seajs.use(module, function(main, notice, count, logo, picmsgwall,
			starmessage, lottery, shake, vote, program, guest, imgwall,
			turntable, slotmachine, popularitymatch, question, topic, pair2,
			messagewalldanmu, countmoney, ordergoods, imgvote, scratchcard,
			TugOfWar, FacePK, carcollect, musicalchairs, catchscore, running) {
		main.init();
		notice.init();
		count.init();
		logo.init();
		picmsgwall.init();
		starmessage.init();
		lottery.init();
		shake.init();
		vote.init();
		program.init();
		guest.init();
		imgwall.init();
		turntable.init();
		slotmachine.init();
		popularitymatch.init();
		question.init();
		topic.init();
		pair2.init();
		messagewalldanmu.init();
		countmoney.init();
		ordergoods.init();
		imgvote.init();
		scratchcard.init();
		TugOfWar.init();
		FacePK.init();
		carcollect.init();
		musicalchairs.init();
		catchscore.init();
		running.init();
	});

	/*$(function() {
		$(".dd li").click(function(e) {
			alert(1);
			var s = $(this).html();
			alert(s);
			$("#upd").html(s);
		});
	});*/

	$(function() {
		loadPrize();
		loadPeople();
	});

	function loadPrize() {
		$.ajax({
			type : "get",
			url : "getPrizeList1.action",
			data : {},
			dataType : "json",
			success : function(data) {
				var result = data.list;
				for (var i = 0; null != result && i < result.length; i++) {
					var tr = "<li data-prizeid=\"" + (i + 1)
							+ "\" data-prizename=\"2号测试奖品\" data-name=\""
							+ result[i].prizeName + "\" data-amount=\"100\">"
							+ result[i].prizeName + "</li>";
					$("#listprize").append(tr);
				}
			},
			error : function(data) {
			}
		});

	}
	
	function loadPeople() {
		$.ajax({
			type : "get",
			url : "getPeopleList.action",
			data : {},
			dataType : "json",
			success : function(data) {
				var result = data.list;
				for (var i = 0; null != result && i < result.length; i++) {
					var tr = "<li data-headpath=" + result[i].headpath + " data-userid=" + result[i].userid + " style=\"width: 270px;\"><img src=" + result[i].headpath + "><br><span>" + result[i].username + "</span></li>";
					$("#listpeople").append(tr);
				}
				for (var i = 0; null != result && i < result.length; i++) {
					var tr = "<li data-headpath=" + result[i].headpath + " data-userid=" + result[i].userid + " style=\"width: 270px;\"><img src=" + result[i].headpath + "><br><span>" + result[i].username + "</span></li>";
					$("#listpeople").append(tr);
				}
			},
			error : function(data) {
			}
		});

	}
	
	function aClick () {  
         window.location = "http://www.baidu.com";  
    }  
</script>
</head>
<body>
	<div id="config" style="display:none;">
		<input type="hidden" id="IsDemo" value="True" /> <input type="hidden"
			id="KXDPMModuleId" value="100100" /> <input type="hidden"
			id="FileWebHost" value="http://file.kxdpm.com" /> <input
			type="hidden" id="ThemePath"
			value="http://file.kxdpm.com/ScreenTheme/w-81/" /> <input
			type="hidden" id="LogoFilePath" value="" />
	</div>
	<div id="url" style="display:none;">
		<input type="hidden" id="GetConfig" value="/40180/demodata/getconfig" />
		<input type="hidden" id="GetAd" value="/40180/demodata/getmateriel" />
		<input type="hidden" id="SubmitAdAccessLog"
			value="/40180/demodata/submitgetmaterielaccesslog" /> <input
			type="hidden" id="SubmitNetworkInterruptAndRecoveryLog"
			value="/40180/demodata/submitnetworkinterruptandrecoverylog" /> <input
			type="hidden" id="GetCount" value="/40180/demodata/getcount" /> <input
			type="hidden" id="GetNotices" value="/40180/demodata/getnotices" />

		<input type="hidden" id="GetBarragerMessages"
			value="/40180/demodata/getbarragermessages" /> <input type="hidden"
			id="GetChatMessages" value="/40180/demodata/getchatmessages" /> <input
			type="hidden" id="GetFansCheckIn"
			value="/40180/demodata/getfanscheckin" /> <input type="hidden"
			id="GetFansScanIn" value="/40180/demodata/getfansscanin" /> <input
			type="hidden" id="GetStarMessages"
			value="/40180/demodata/getstarmessages" /> <input type="hidden"
			id="OpenVote" value="/40180/demodata/openvote" /> <input
			type="hidden" id="CloseVote" value="/40180/demodata/closevote" /> <input
			type="hidden" id="GetVote" value="/40180/demodata/getvote" /> <input
			type="hidden" id="GetVoteItemFans"
			value="/40180/demodata/getvoteitemfans" /> <input type="hidden"
			id="GetVoteStatistics" value="/40180/demodata/getvotestatistics" />
		<input type="hidden" id="InsertPrize"
			value="/40180/demodata/insertprize" /> <input type="hidden"
			id="GetLotteryFans" value="/40180/demodata/getlotteryfans" /> <input
			type="hidden" id="GetLotteryInternalFans"
			value="/40180/demodata/getlotteryinternalfans" /> <input
			type="hidden" id="GetLotteryAward"
			value="/40180/demodata/getlotteryaward" /> <input type="hidden"
			id="SubmitLotteryFans" value="/40180/demodata/submitlotteryfans" />

		<input type="hidden" id="GetPairFans"
			value="/40180/demodata/getpairfans" /> <input type="hidden"
			id="GetPairs" value="/40180/demodata/getpairs" /> <input
			type="hidden" id="SubmitPairs" value="/40180/demodata/submitpairs" />

		<input type="hidden" id="PushCountMoney"
			value="/40180/demodata/pushcountmoney" /> <input type="hidden"
			id="OpenCountMoney" value="/40180/demodata/opencountmoney" /> <input
			type="hidden" id="CancelCountMoney"
			value="/40180/demodata/cancelcountmoney" /> <input type="hidden"
			id="GetCountMoneyJoinFans"
			value="/40180/demodata/getcountmoneyjoinfans" /> <input
			type="hidden" id="GetCountMoneyStatistics"
			value="/40180/demodata/getcountmoneystatistics" /> <input
			type="hidden" id="PushShake" value="/40180/demodata/pushshake" /> <input
			type="hidden" id="PushShakeSelect"
			value="/40180/demodata/pushshakeselect" /> <input type="hidden"
			id="OpenShake" value="/40180/demodata/openshake" /> <input
			type="hidden" id="CancelShake" value="/40180/demodata/cancelshake" />
		<input type="hidden" id="GetShakeJoinFans"
			value="/40180/demodata/getshakejoinfans" /> <input type="hidden"
			id="GetShakeStatistics" value="/40180/demodata/getshakestatistics" />

		<input type="hidden" id="PushGroupShake"
			value="/40180/demodata/pushgroupshake" /> <input type="hidden"
			id="OpenGroupShake" value="/40180/demodata/opengroupshake" /> <input
			type="hidden" id="CancelGroupShake"
			value="/40180/demodata/cancelgroupshake" /> <input type="hidden"
			id="GetGroupShakeFansJoinCount"
			value="/40180/demodata/getgroupshakefansjoincount" /> <input
			type="hidden" id="GetGroupShakeStatistics"
			value="/40180/demodata/getgroupshakestatistics" /> <input
			type="hidden" id="PushProgram" value="/40180/demodata/pushprogram" />
		<input type="hidden" id="GetProgram"
			value="/40180/demodata/getprogram" /> <input type="hidden"
			id="GetProgramStatistics"
			value="/40180/demodata/getprogramstatistics" /> <input type="hidden"
			id="CloseProgram" value="/40180/demodata/closeprogram" /> <input
			type="hidden" id="GetGuest" value="/40180/demodata/getguest" /> <input
			type="hidden" id="GetPictureList"
			value="/40180/demodata/getpicturelist" /> <input type="hidden"
			id="PushTopic" value="/40180/demodata/pushtopic" /> <input
			type="hidden" id="GetTopicItem" value="/40180/demodata/gettopicitem" />
		<input type="hidden" id="GetTopic" value="/40180/demodata/gettopic" />

		<input type="hidden" id="GetBonusBatchs"
			value="/40180/demodata/getbonusbatchs" /> <input type="hidden"
			id="PushBonus" value="/40180/demodata/pushbonus" /> <input
			type="hidden" id="StartBonus" value="/40180/demodata/startbonus" />
		<input type="hidden" id="GetBonusWinners"
			value="/40180/demodata/getbonuswinners" /> <input type="hidden"
			id="FinishBonusBatch" value="/40180/demodata/finishbonusbatch" /> <input
			type="hidden" id="GetBonusCount"
			value="/40180/demodata/getbonuscount" /> <input type="hidden"
			id="GetSlotMachineFans" value="/40180/demodata/getslotmachinefans" />
		<input type="hidden" id="GetSlotMachinePrize"
			value="/40180/demodata/getslotmachineprize" /> <input type="hidden"
			id="SubmitSlotMachineFans"
			value="/40180/demodata/submitslotmachinefans" /> <input
			type="hidden" id="GetTurntableFans"
			value="/40180/demodata/getturntablefans" /> <input type="hidden"
			id="GetTurntableInternalFans"
			value="/40180/demodata/getturntableinternalfans" /> <input
			type="hidden" id="GetTurntableAward"
			value="/40180/demodata/getturntableaward" /> <input type="hidden"
			id="SubmitTurntableFans" value="/40180/demodata/submitturntablefans" />

		<input type="hidden" id="GetQuestion"
			value="/40180/demodata/getquestion" /> <input type="hidden"
			id="ShowQuestionAnswer" value="/40180/demodata/showquestionanswer" />
		<input type="hidden" id="GetQuestionAnswerRecords"
			value="/40180/demodata/getquestionanswerrecords" /> <input
			type="hidden" id="GetQuestionAnswerRank"
			value="/40180/demodata/getquestionanswerrank" /> <input
			type="hidden" id="GetQuestionForTemp"
			value="/40180/demodata/getquestionfortemp" /> <input type="hidden"
			id="PushPopularityMatch" value="/40180/demodata/pushpopularitymatch" />
		<input type="hidden" id="GetPopularityMatchs"
			value="/40180/demodata/getpopularitymatchs" /> <input type="hidden"
			id="GetPopularityMatchFansRecords"
			value="/40180/demodata/getpopularitymatchfansrecords" /> <input
			type="hidden" id="OpenProductIntention"
			value="/40180/demodata/openproductintention" /> <input type="hidden"
			id="CloseProductIntention"
			value="/40180/demodata/closeproductintention" /> <input
			type="hidden" id="GetProductIntention"
			value="/40180/demodata/getproductintention" /> <input type="hidden"
			id="GetProductIntentionFans"
			value="/40180/demodata/getproductintentionfans" /> <input
			type="hidden" id="GetGameRoom" value="/40180/demodata/getgameroom" />
		<input type="hidden" id="SubmitAwardFansRecord"
			value="/40180/demodata/submitawardfansrecord" /> <input
			type="hidden" id="GetFansWinnerRecord"
			value="/40180/demodata/getfanswinnerrecord" /> <input type="hidden"
			id="SubmitWinnerRecord" value="/40180/demodata/submitwinnerrecord" />

		<input type="hidden" id="GetMusicalChairsBatch"
			value="/40180/demodata/getmusicalchairsbatch" /> <input
			type="hidden" id="PushMusicalChairs"
			value="/40180/demodata/pushmusicalchairs" /> <input type="hidden"
			id="GetMusicalChairsFans"
			value="/40180/demodata/getjoinmusicalchairsfans" /> <input
			type="hidden" id="OpenMusicalChairs"
			value="/40180/demodata/openmusicalchairs" /> <input type="hidden"
			id="GetJoinMusicalChairsFans"
			value="/40180/demodata/getjoinmusicalchairsfans" /> <input
			type="hidden" id="GetMusicalChairsWinnerChairs"
			value="/40180/demodata/getmusicalchairswinnerchairs" /> <input
			type="hidden" id="SetMusicalChairsWinnerChairsExhibition"
			value="/40180/demodata/setmusicalchairswinnerchairsexhibition" /> <input
			type="hidden" id="SaveMusicalChairsWinnerRecord"
			value="/40180/demodata/savemusicalchairswinnerrecord" /> <input
			type="hidden" id="GetHandWriteList"
			value="/40180/demodata/gethandwritelist" /> <input type="hidden"
			id="GetCardCollectBathList"
			value="/40180/demodata/getcardcollectbathlist" /> <input
			type="hidden" id="PushCardCollect"
			value="/40180/demodata/pushcardcollect" /> <input type="hidden"
			id="OverCardCollect" value="/40180/demodata/overcardcollect" /> <input
			type="hidden" id="GetFansCardCollectList"
			value="/40180/demodata/getfanscardcollectlist" /> <input
			type="hidden" id="GetCardCollectWinnerList"
			value="/40180/demodata/getcardcollectwinnerlist" /> <input
			type="hidden" id="GetCardCollectCount"
			value="/40180/demodata/getcardcollectcount" /> <input type="hidden"
			id="PushWishingTree" value="/40180/demodata/pushwishingtree" /> <input
			type="hidden" id="GetWishingTreeConfig"
			value="/40180/demodata/getwishingtreeconfig" /> <input type="hidden"
			id="GetWishingTreeMessage"
			value="/40180/demodata/getwishingtreemessage" /> <input
			type="hidden" id="SubmitAwardFansRecord"
			value="/40180/demodata/submitawardfansrecord" /> <input
			type="hidden" id="GetFansWinnerRecord"
			value="/40180/demodata/getfanswinnerrecord" /> <input type="hidden"
			id="SubmitWinnerRecord" value="/40180/demodata/submitwinnerrecord" />

		<input type="hidden" id="PushReward"
			value="/40180/demodata/pushreward" /> <input type="hidden"
			id="GetRewardList" value="/40180/demodata/getrewardlist" /> <input
			type="hidden" id="OpenCard" value="/40180/demodata/opencard" /> <input
			type="hidden" id="OverCard" value="/40180/demodata/overcard" /> <input
			type="hidden" id="GetCardList" value="/40180/demodata/getcardlist" />
		<input type="hidden" id="GetWinnerList"
			value="/40180/demodata/getwinnerlist" /> <input type="hidden"
			id="GetTugOfWarBatch" value="/40180/demodata/gettugofwarbatch" /> <input
			type="hidden" id="PushTugofWarReady"
			value="/40180/demodata/pushtugofwarready" /> <input type="hidden"
			id="OverTugofWar" value="/40180/demodata/overtugofwar" /> <input
			type="hidden" id="GetTugofWarGroupStatistics"
			value="/40180/demodata/gettugofwargroupstatistics" /> <input
			type="hidden" id="GetTugofWarWinnerCount"
			value="/40180/demodata/gettugofwarwinnercount" /> <input
			type="hidden" id="OpenTugofWar" value="/40180/demodata/opentugofwar" />
		<input type="hidden" id="PushFacePK"
			value="/40180/demodata/pushfacepk" /> <input type="hidden"
			id="GetFacePKAward" value="/40180/demodata/getfacepkaward" /> <input
			type="hidden" id="GetFanUpLoadImgList"
			value="/40180/demodata/getfanuploadimglist" /> <input type="hidden"
			id="PushCatchScore" value="/40180/data/pushcatchscore" /> <input
			type="hidden" id="OpenCatchScore" value="/40180/data/opencatchscore" />
		<input type="hidden" id="OverCatchScore"
			value="/40180/data/overcatchscore" /> <input type="hidden"
			id="GetCatchScoreJoinFans" value="/40180/data/getcatchscorejoinfans" />
		<input type="hidden" id="GetCatchScoreStatistics"
			value="/40180/data/getcatchscorestatistics" /> <input type="hidden"
			id="PushInteractScore" value="/40180/data/pushinteractscore" /> <input
			type="hidden" id="OpenInteractScore"
			value="/40180/data/openinteractscore" /> <input type="hidden"
			id="OverInteractScore" value="/40180/data/overinteractscore" /> <input
			type="hidden" id="GetInteractScoreJoinFans"
			value="/40180/data/getinteractscorejoinfans" /> <input type="hidden"
			id="GetInteractScoreStatistics"
			value="/40180/data/getinteractscorestatistics" /> <input
			type="hidden" id="SubmitFanWinner"
			value="/40180/demodata/submitfanwinner" />
	</div>
	<div id="main">
		<div id="index">
			<h3>按F11进入全屏，点击下方功能进行体验</h3>
			<h2>请使用微信扫描二维码关注我们的公众帐号“鑫业网络”</h2>
			<div id="code">
				<img
					src="http://file.kxdpm.com/qr/201706/Weixinwx528583d75b1f16bb9247.jpg"><br />
				<a class="clickBtn" style="position:relative;">开启活动</a>
			</div>
			<div id="company">主办单位：鑫业网络科技有限公司</div>
			<div id="copyright">技术支持：鑫业网络科技有限公司</div>
		</div>
		<!-- <img src="http://file.kxdpm.com/ScreenTheme/default/images/logo.png"
			id="logo" /> -->
		<div id="activityCode">
			<img
				src="http://file.kxdpm.com/qr/201706/Weixinwx528583d75b1f16bb9247.jpg"
				id="top_code" />
			<div id="showCode" class="module">
				<a class="closeBtn" title="关闭">x</a> <span class="title">使用微信扫描以下任意二维码，关注后发送内容即可上墙</span>
				<img
					src="http://file.kxdpm.com/qr/201706/Weixinwx528583d75b1f16bb9247.jpg"
					class="big"> <img
					src="http://file.kxdpm.com/qr/201706/Weixinwx528583d75b1f16bb9247.jpg"
					class="middle"> <img
					src="http://file.kxdpm.com/qr/201706/Weixinwx528583d75b1f16bb9247.jpg"
					class="small">
			</div>
		</div>
		<div data-moduleid="100102" data-modulename="messagewall"
			class="module" id="messagewall">
			<ul class="moduleBtn">
				<li class="btn_messagewall" data-name="messagewall"
					data-description="消息墙"><i class="iconfont">&#xe63e;</i></li>
			</ul>
			<ul>
				<li id="wall_1"></li>
				<li id="wall_2"></li>
				<li id="wall_3"></li>
				<li id="wall_4"></li>
				<li id="wall_5"></li>
				<li id="wall_6"></li>
				<li id="wall_7"></li>
				<li id="wall_8"></li>
				<li id="wall_9"></li>
				<li id="wall_10"></li>
				<li id="wall_11"></li>
				<li id="wall_12"></li>
				<li id="wall_13"></li>
				<li id="wall_14"></li>
				<li id="wall_15"></li>
				<li id="wall_16"></li>
				<li id="wall_17"></li>
				<li id="wall_18"></li>
				<li id="wall_19"></li>
				<li id="wall_20"></li>
				<li id="wall_21"></li>
				<li id="wall_22"></li>
				<li id="wall_23"></li>
				<li id="wall_24"></li>
				<li id="wall_25"></li>
				<li id="wall_26"></li>
				<li id="wall_27"></li>
				<li id="wall_28"></li>
				<li id="wall_29"></li>
				<li id="wall_30"></li>
				<li id="wall_31"></li>
				<li id="wall_32"></li>
				<li id="wall_33"></li>
				<li id="wall_34"></li>
				<li id="wall_35"></li>
				<li id="wall_36"></li>
				<li id="wall_37"></li>
				<li id="wall_38"></li>
				<li id="wall_39"></li>
				<li id="wall_40"></li>
				<li id="wall_41"></li>
				<li id="wall_42"></li>
				<li id="wall_43"></li>
				<li id="wall_44"></li>
				<li id="wall_45"></li>
				<li id="wall_46"></li>
				<li id="wall_47"></li>
				<li id="wall_48"></li>
				<li id="wall_49"></li>
				<li id="wall_50"></li>
				<li id="wall_51"></li>
				<li id="wall_52"></li>
				<li id="wall_53"></li>
				<li id="wall_54"></li>
				<li id="wall_55"></li>
				<li id="wall_56"></li>
				<li id="wall_57"></li>
				<li id="wall_58"></li>
				<li id="wall_59"></li>
				<li id="wall_60"></li>
				<li id="wall_61"></li>
				<li id="wall_62"></li>
				<li id="wall_63"></li>
				<li id="wall_64"></li>
				<li id="wall_65"></li>
				<li id="wall_66"></li>
				<li id="wall_67"></li>
				<li id="wall_68"></li>
				<li id="wall_69"></li>
				<li id="wall_70"></li>
				<li id="wall_71"></li>
				<li id="wall_72"></li>
				<li id="wall_73"></li>
				<li id="wall_74"></li>
				<li id="wall_75"></li>
				<li id="wall_76"></li>
				<li id="wall_77"></li>
				<li id="wall_78"></li>
				<li id="wall_79"></li>
				<li id="wall_80"></li>
				<li id="wall_81"></li>
				<li id="wall_82"></li>
				<li id="wall_83"></li>
				<li id="wall_84"></li>
				<li id="wall_85"></li>
				<li id="wall_86"></li>
				<li id="wall_87"></li>
				<li id="wall_88"></li>
				<li id="wall_89"></li>
				<li id="wall_90"></li>
				<li id="wall_91"></li>
				<li id="wall_92"></li>
				<li id="wall_93"></li>
				<li id="wall_94"></li>
				<li id="wall_95"></li>
				<li id="wall_96"></li>
				<li id="wall_97"></li>
				<li id="wall_98"></li>
				<li id="wall_99"></li>
				<li id="wall_100"></li>
				<li id="wall_101"></li>
				<li id="wall_102"></li>
				<li id="wall_103"></li>
				<li id="wall_104"></li>
				<li id="wall_105"></li>
			</ul>
			<div id="wall_zz"></div>
		</div>
		<div data-moduleid="100103" data-modulename="starmessage"
			class="module" id="starmessage">
			<ul class="moduleBtn">
				<li class="btn_starmessage" data-name="starmessage"
					data-description="标星消息"><i class="iconfont">&#xe644;</i></li>
			</ul>
			<div id="star_box">
				<ul id="starMessageList">
				</ul>
			</div>
			<ul class="playBtn" id="btn_starMessage">
				<li class="btn_first" data-description="第一屏"><i
					class="iconfont">&#xe684;</i></li>
				<li class="btn_pre" data-description="上一屏"><i class="iconfont">&#xe681;</i></li>
				<li class="btn_pause" data-description="暂停"><i class="iconfont">&#xe682;</i></li>
				<li class="btn_next" data-description="下一屏"><i class="iconfont">&#xe683;</i></li>
				<li class="btn_last" data-description="最后一屏"><i
					class="iconfont">&#xe685;</i></li>
			</ul>
			<div id="starMessageDetail" class="module">
				<a class="close"></a>

				<div class="top">
					<img src="" class="userHead"><span></span>
				</div>
				<div class="content"></div>
			</div>
		</div>
		<div data-moduleid="100105" data-modulename="lottery"
			class="module lottery" id="lottery">
			<ul class="moduleBtn">
				<li class="btn_lottery" id="btn_lottery" onclick="a()"
					data-name="lottery" data-description="滚动抽奖"><i
					class="iconfont">&#xe64a;</i></li>
			</ul>
			<div class="left">
				<div class="title">
					<i class="icon icon-title"></i>滚动抽奖
				</div>
				<div class="userList">
					<div class="lucky"></div>
					<div id="luck_user">
						<ul style="width: 5940px;" id="listpeople">
							
						</ul>
					</div>
				</div>
				<div class="condition">
					奖项:
					<div class="select select-lage select-prize">
						<div class="selected" id="upd" data-prizeid="0" data-amount="0">请选择</div>
						<ul class="prize dd" id="listprize">

						</ul>

					</div>
					人数:
					<div class="select select-number">
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
				</div>
				<div class="btn-box">
					<a class="clickBtn" id="beginLuck">开始抽奖</a> <a
						class="clickBtn stopBtn" id="stopLuck" style="display:none">停止抽奖</a>
					<a class="clickBtn" id="luckIng" style="display:none;">自动抽奖中(<span></span>)
					</a>
				</div>
			</div>
			<div class="right">
				<div class="title">
					<i class="icon icon-title"></i>中奖名单
					<div class="resultNum">
						获奖人数:<span id="luckNumber">0</span>
					</div>
					<i class="icon icon-more"></i>
				</div>
				<div id="luckUl" class="result"></div>
				<div class="btn-box">
					<a class="btn reclick gray" id="removeLottery">重新抽奖</a> 
					<a class="btn submitUser gray" href="javascript:void(0)" onclick="aClick()">确认名单</a>
				</div>
			</div>
		</div>
		<div data-moduleid="100107" data-modulename="shake" class="module"
			id="shake">
			<ul class="moduleBtn">
				<li class="btn_shake" data-name="shake" data-description="摇一摇"><i
					class="iconfont"> &#xe658;</i></li>
			</ul>
			<div class="shake-index">
				<div class="shakebg"></div>
				<div class="shake-index">
					<a class="readyShake clickBtn" id="readyShake">准备开始</a>
				</div>
			</div>
			<div class="shakeTimes" id="shakeTimes"></div>
			<div class="shake-ready">
				<div class="title">
					摇一摇<span class="ready-number">已有<i id="shakeReadyNumber">0</i>人准备
					</span>
				</div>
				<ul id="readyList">

				</ul>
				<div class="btn-box">
					<a class="clickBtn beginShake" id="beginShake">开始摇一摇</a>
				</div>
			</div>
			<div class="shake-ing">
				<ul id="shakeList" class="shake-ul">
				</ul>
				<div class="fire" id="shakefire"></div>
			</div>
		</div>
		<div data-moduleid="100109" data-modulename="vote" class="module"
			id="vote">
			<ul class="moduleBtn">
				<li class="btn_vote" data-name="vote" data-description="即时投票"><i
					class="iconfont"> &#xe654;</i></li>
			</ul>
			<div class="vote-index">
				<div class="title">
					<i class="icon icon-title"></i>即时投票
				</div>
				<a class="clickBtn">进入投票</a>
			</div>
			<div class="vote-ing">
				<a class="arrow-left" href="javascript:void(0);"><i
					class="iconfont">&#xe62e;</i></a> <a class="arrow-right"
					href="javascript:void(0);"><i class="iconfont">&#xe602;</i></a>

				<div id="vote_scroll"></div>
			</div>
		</div>
		<div data-moduleid="100110" data-modulename="program" class="module"
			id="program">
			<ul class="moduleBtn">
				<li class="btn_program" data-name="program" data-description="节目评分"><i
					class="iconfont"> &#xe64f;</i></li>
			</ul>
			<div class="program-index">
				<div class="title">
					<i class="icon icon-title"></i>节目评分
				</div>
				<a class="clickBtn">进入评分</a>
			</div>
			<div class="program-ing">
				<div id="programListBox" style="display: block;">
					<div class="title">
						<i class="icon icon-title"></i>参与评分节目单
					</div>

					<div class="title-btn">
						<a class="clickBtn middleBtn" id="showProgramScore">查看结果</a> <a
							class="clickBtn middleBtn pushProgram">开始评分</a>
					</div>
					<ul id="programList">

					</ul>
				</div>
				<div id="programDetail" style="display: none;">
					<a class="arrow-left" href="javascript:void(0);"><i
						class="iconfont"> &#xe62e;</i></a> <a class="arrow-right"
						href="javascript:void(0);"><i class="iconfont"> &#xe602;</i></a>

					<div class="title">
						<i class="icon icon-title"></i>节目详情 <a class="close"></a>
					</div>
					<ul>

					</ul>
				</div>
				<div id="programScoreBox" style="display: none;">
					<a class="close"></a>

					<div class="title">
						<i class="icon icon-title"></i>节目分值统计
					</div>
					<div class="title-btn">
						<a class="clickBtn middleBtn stopBtn endProgram">关闭评分</a> <a
							class="clickBtn middleBtn pushProgram">开始评分</a>
					</div>
					<div style="position: relative;">
						<ul id="programScore">

						</ul>
						<div class="bg-bottom"></div>
					</div>
				</div>
			</div>
		</div>
		<div data-moduleid="100111" data-modulename="guest" class="module"
			id="guest">
			<ul class="moduleBtn">
				<li class="btn_guest" data-name="guest" data-description="嘉宾展示"><i
					class="iconfont"> &#xe67c;</i></li>
			</ul>
			<div id="guestList">
				<div class="title">
					<i class="icon icon-title"></i>嘉宾展示
				</div>
				<ul></ul>
			</div>
			<div id="guestDetail" class="module">
				<div class="title">
					<i class="icon icon-title"></i>嘉宾展示<a class="close"></a>
				</div>
				<div id="guestInfo"></div>
			</div>
		</div>
		<div data-moduleid="100113" data-modulename="imgwall" class="module"
			id="imgwall">
			<ul class="moduleBtn">
				<li class="btn_imgWall" data-name="imgwall" data-description="图片库"><i
					class="iconfont">&#xe655;</i></li>
			</ul>
			<a class="arrow-left" href="javascript:void(0);"><i
				class="iconfont">&#xe62e;</i></a> <a class="arrow-right"
				href="javascript:void(0);"><i class="iconfont">&#xe602;</i></a>

			<div class="title">
				<i class="icon icon-title"></i>图片库
			</div>
			<div id="imgwallBox">
				<div id="imgwall-ul-box">
					<ul>
					</ul>
				</div>
			</div>
		</div>
		<div data-moduleid="100119" data-modulename="turntable" class="module"
			id="turntable">
			<ul class="moduleBtn">
				<li class="btn_turntable" data-name="turntable"
					data-description="开心大转盘"><i class="iconfont">&#xe63b;</i></li>
			</ul>
			<div id="isLotteryHead"></div>
			<div id="rotationUserHead">
				<ul></ul>
			</div>
			<div class="rotationBg">
				<div class="turnplate">
					<canvas class="item" id="wheelcanvas" width="700px" height="700px"></canvas>
				</div>
			</div>
			<div class="rotationMen"></div>
			<a href="javascript:void(0);" class="turntable_submit"></a>
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
							<c:forEach items="${prizeList}" var="prizeList" varStatus="index">
								<li id="sel">${prizeList.prizeName}</li>
							</c:forEach>
						</ul>
					</div>
					人数：
					<div class="select select-middle select-number">
						<div class="selected" data-amount="0">请选择</div>
						<ul id="prizelist">
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

		<div data-moduleid="100123" data-modulename="popularitymatch"
			class="module" id="popularity">
			<ul class="moduleBtn">
				<li class="btn_popularity" data-name="popularitymatch"
					data-description="分享大比拼"><i class="iconfont">&#xe671;</i></li>
			</ul>
			<div class="popularity-index">
				<div class="title">
					<i class="icon icon-title"></i>分享大比拼
				</div>
				<a class="clickBtn beginPopularity">开始游戏</a>
			</div>
			<div id="popularityBg" class="popularity-ing">
				<div class="title">文章主题：</div>
				<a class="clickBtn middleBtn beginPopularity">开启游戏</a>
				<ul></ul>
			</div>
		</div>
		<div data-moduleid="100124" data-modulename="question" class="module"
			id="question">
			<ul class="moduleBtn">
				<li class="btn_question" data-name="question"
					data-description="开心答题"><i class="iconfont">&#xe645;</i></li>
			</ul>
			<div class="question-index">
				<div class="title">
					<i class="icon icon-title"></i>开心答题
				</div>
				<a class="readyShake clickBtn" id="beginAnswer">开始答题</a>
			</div>
			<div id="showQuestion">
				<div class="questionDetail">
					<div class="title" id="questionInfo">
						<span id="Question_Number">当前第<i>1</i>题
						</span> <span id="Question_UseTime">已用<i>50</i>秒
						</span> <span id="Question_LeftUser">当前共有<i>0</i>人参与答题
						</span>
					</div>
					<div id="questionContent">
						<h2></h2>
						<ul>
						</ul>
					</div>
					<div id="BottomBtn">
						<a class="clickBtn" id="btnShowAnswer">答题显示</a> <a
							class="clickBtn" id="overQuestion" style="display: none;">结束本轮</a>
						<a class="clickBtn" id="btnNextQuestion">下一题</a>
					</div>
				</div>
				<div id="showList">
					<div class="title">
						<i class="icon"></i>龙虎榜<i class="icon"></i>
					</div>
					<div class="result">
						<table cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<th width="40%">用户昵称</th>
									<th width="30%">答对题数</th>
									<th width="30%">用时(秒)</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
		<div data-moduleid="100128" data-modulename="topic" class="module"
			id="topic">
			<ul class="moduleBtn">
				<li class="btn_topic" data-name="topic" data-description="话题讨论"
					data-keyboard="66"><i class="iconfont">&#xe63d;</i></li>
			</ul>
			<a class="arrow-left" href="javascript:void(0);"><i
				class="iconfont">&#xe62e;</i></a> <a class="arrow-right"
				href="javascript:void(0);"><i class="iconfont">&#xe602;</i></a>

			<div id="topicList" class="scrollBox">
				<div class="scrollList" style="margin-left: 0px;"></div>
				<ul class="playBtn">
					<li class="btn_first" data-description="第一屏"><i
						class="iconfont">&#xe684;</i></li>
					<li class="btn_pre" data-description="上一屏"><i class="iconfont">&#xe681;</i></li>
					<li class="btn_pause" data-description="暂停"><i
						class="iconfont">&#xe682;</i></li>
					<li class="btn_next" data-description="下一屏"><i
						class="iconfont">&#xe683;</i></li>
					<li class="btn_last" data-description="最后一屏"><i
						class="iconfont">&#xe685;</i></li>
				</ul>
			</div>
			<div id="topicDetail" class="showDetail module">
				<a class="close"></a>

				<div class="title"></div>
				<div class="top">
					<img src="" class="userHead"><span></span>
				</div>
				<div class="content"></div>
			</div>
		</div>
		<div data-moduleid="100129" data-modulename="pair2"
			class="module luck_pair" id="pair">
			<ul class="moduleBtn">
				<li class="btn_pair" data-name="pair2" data-description="即时配对"><i
					class="iconfont"> &#xe663;</i></li>
			</ul>
			<div class="title">
				<i class="icon icon-title"></i>即时配对
				<div class="ready-number">
					参加配对人数: <span></span>
				</div>
			</div>
			<div class="left">
				<div class="pairUserHead" id="pair_user">
					<div class="leftUser">
						<ul>
						</ul>
						<div></div>
					</div>
					<div class="rightUser">
						<ul>
						</ul>
						<div></div>
					</div>
				</div>
				<div class="condition">
					配对对数:
					<div class="select select-middle select-number">
						<div class="selected" id="pair_count" data-amount="0">请选择</div>
						<ul>
							<li data-amount="1">1</li>
							<li data-amount="2">2</li>
							<li data-amount="3">3</li>
							<li data-amount="4">4</li>
							<li data-amount="5">5</li>
						</ul>
					</div>
					<a class="btn" id="beginPair">开始配对</a> <a class="btn stopBtn"
						id="stopPair" style="display:none">停止配对</a> <a class="btn"
						id="pairIng" style="display:none">自动配对(<span></span>)
					</a>
				</div>
			</div>
			<div class="right">
				<div class="title">
					<i class="icon icon-star"></i>配对名单<i class="icon icon-star"></i>
				</div>
				<div class="pairul-box">
					<ul id="pairUl">
					</ul>
				</div>
				<a class="arrow-left" href="javascript:void(0);"><i
					class="iconfont">&#xe62e;</i></a> <a class="arrow-right"
					href="javascript:void(0);"><i class="iconfont">&#xe602;</i></a>

				<div class="pair-btn-box">
					<a class="btn reclick gray" id="removePair">重新配对</a> <a
						class="btn submitUser gray" id="submitPair">确认配对</a>
				</div>
			</div>
		</div>
		<div data-moduleid="100144" data-modulename="messagewalldanmu"
			class="module" id="messagewalldanmu">
			<ul class="moduleBtn">
				<li class="btn_messageWall" data-name="messagewalldanmu"
					data-description="弹幕"><i class="iconfont">&#xe63f;</i></li>
			</ul>
			<div id="danmu"></div>
		</div>
		<div data-moduleid="100147" data-modulename="countmoney"
			class="module" id="countmoney">
			<ul class="moduleBtn">
				<li class="btn_countmoney" data-name="countmoney"
					data-description="数钱"><i class="iconfont">&#xe66a;</i></li>
			</ul>
			<div class="shakeTimes" id="moneyTimes"></div>
			<div class="money-index">
				<div class="title">
					<i class="icon icon-countmoney"></i>数钱游戏
				</div>
				<a href="javascript:void(0);" class="clickBtn money-send">报名参与</a>
			</div>
			<div class="money-join">
				<div class="title">
					参与数钱的粉丝<span class="ready-number">已有<i
						class="countmoneyReadyNumber">0</i>人准备
					</span>
				</div>
				<ul></ul>
				<div class="btn-box">
					<a onclick="javascript:void(0);" class="clickBtn money-begin">开始数钱</a>
				</div>
			</div>
			<div class="money-ing">
				<div class="title">
					<i class="icon icon-countmoney"></i>数钱游戏
					<div class="endtime">
						倒计时<span class="money-lefttime"></span>
					</div>
				</div>
				<ul>
				</ul>
			</div>
		</div>
		<div data-moduleid="100149" data-modulename="ordergoods"
			class="module" id="ordergoods">
			<ul class="moduleBtn">
				<li class="btn_ordergoods" data-name="ordergoods"
					data-description="订货宝"><i class="iconfont">&#xe66b;</i></li>
			</ul>
			<div class="order-index">
				<div class="title">
					<i class="icon icon-title"></i>订货宝
				</div>
				<a class="clickBtn open-order">开始准备</a>
			</div>
			<div id="ordergoods-ing">
				<div id="ordergoods-switch">
					<a class="arrow-left" href="javascript:void(0);"><i
						class="iconfont"> &#xe62e;</i></a> <a class="arrow-right"
						href="javascript:void(0);"><i class="iconfont"> &#xe602;</i></a>
				</div>
				<div class="order-product"></div>
			</div>
		</div>
		<div data-moduleid="100152" data-modulename="imgvote" class="module"
			id="imgvote">
			<ul class="moduleBtn">
				<li class="btn_imgvote" data-name="imgvote" data-description="图片投票"><i
					class="iconfont"> &#xe667;</i></li>
			</ul>
			<div class="vote-index" style="display: none;">
				<div class="title">
					<i class="icon icon-title"></i>图片投票
				</div>
				<a class="clickBtn">进入投票</a>
			</div>
			<div class="vote-ing" style="opacity: 1">
				<a class="arrow-left" href="javascript:void(0);"><i
					class="iconfont">&#xe62e;</i></a> <a class="arrow-right"
					href="javascript:void(0);"><i class="iconfont">&#xe602;</i></a>

				<div id="imgvote_scroll"></div>
			</div>
		</div>
		<div data-moduleid="100162" data-modulename="scratchcard"
			class="module" id="scratchcard">
			<ul class="moduleBtn">
				<li class="btn_scratchcard" data-name="scratchcard"
					data-description="刮刮卡"><i class="iconfont">&#xe649;</i></li>
			</ul>
			<div class="scratchcard-index">
				<div class="title">
					<i class="icon icon-title"></i>开心刮刮卡
				</div>
				<a class="clickBtn">开始游戏</a>
			</div>
			<div class="scratchcard-content">
				<div class="title">
					<i class="icon icon-title"></i>开心刮刮卡
				</div>
				<div class="scratchcard-left">
					<div class="title">
						<i class="icon icon-star"></i>中奖展示<i class="icon icon-star"></i>
					</div>
					<div class="ul-box">
						<ul>
						</ul>
					</div>
				</div>
				<div class="scratchcard-center">
					<div class="scratchcard-prize-box">
						<ul>
						</ul>
					</div>
					<div class="btn-box">
						<a class="clickBtn close-card">关闭游戏</a>
					</div>
				</div>
				<div class="scratchcard-right">
					<div class="title">
						<i class="icon icon-star"></i>中奖人数<i class="icon icon-star"></i>
					</div>
					<ul>
					</ul>
				</div>
			</div>
		</div>
		<div data-moduleid="100163" data-modulename="tugofwar" class="module"
			id="tugofwar">
			<ul class="moduleBtn">
				<li class="btn_tugofwar" data-name="tugofwar" data-description="拔河"><i
					class="iconfont"> &#xe643;</i></li>
			</ul>
			<div class="tugofwar-index">
				<a class="clickBtn tugofwar-begin"></a>
			</div>
			<div class="tugofwar-bg">
				<div class="tugofwar-btn-begin" style="display: none;">
					<span></span><a class="clickBtn begin-tugofwar">开始游戏</a>
				</div>
				<div class="tugofwar-info">
					<div class="tugofwar-name tugofwar-name-red"></div>
					<div class="tugofwar-users tugofwar-users-red"></div>
					<div class="tugofwar-numbers tugofwar-numbers-red"></div>
					<div class="tugofwar-endtime">
						倒计时：<span></span>
					</div>
					<div class="tugofwar-name tugofwar-name-blue"></div>
					<div class="tugofwar-users tugofwar-users-blue"></div>
					<div class="tugofwar-numbers tugofwar-numbers-blue"></div>
				</div>
				<div class="tugofwar-state-ready"></div>
				<div class="tugofwar-ing">
					<ul class="tugofwar-firstuser tugofwar-firstuser-red">
					</ul>
					<ul class="tugofwar-firstuser tugofwar-firstuser-blue">
					</ul>
				</div>
				<div class="tugofwar-winner tugofwar-winner-red"></div>
				<div class="tugofwar-end">
					比赛结束！<a class="clickBtn">确认</a>
				</div>
			</div>
			<div class="tugofwar-ended">
				<a class="clickBtn middleBtn again tugofwar-begin">再来一场</a>

				<div class="winnr-group"></div>
				<div class="tugofwar-ended-join-number"></div>
				<ul class="tugofwar-ended-join-user">
				</ul>
			</div>
		</div>
		<div data-moduleid="100164" data-modulename="facepk"
			class="module lottery" id="facepk">
			<ul class="moduleBtn">
				<li class="btn_facepk" data-name="facepk" data-description="颜值抽奖"><i
					class="iconfont">&#xe63c;</i></li>
			</ul>
			<div class="face-index">
				<div class="title">
					<i class="icon icon-lottery"></i>颜值抽奖
				</div>
				<div class="btn-box">
					<a class="clickBtn begin-face" data-prev="0" id="begin-face-new"
						href="javascript:void(0);">准备</a> <a class="clickBtn begin-face"
						data-prev="0" id="begin-face-next" href="javascript:void(0);">开始新的游戏</a>
					<a class="clickBtn begin-face" data-prev="1" id="begin-face-prev"
						href="javascript:void(0);">继续上次游戏</a>
				</div>
			</div>
			<div class="face-bg face-show">
				<div class="left">
					<div class="title">
						<i class="icon icon-lottery"></i>颜值抽奖
					</div>
					<a class="clickBtn face-lottery-open">开启抽奖</a>

					<div class="face-list">
						<a class="arrow-left" href="javascript:void(0);"><i
							class="iconfont">&#xe62e;</i></a> <a class="arrow-right"
							href="javascript:void(0);"><i class="iconfont">&#xe602;</i></a>
						<ul id="faceList">
						</ul>
						<div class="face-list-nouser"></div>
					</div>
				</div>
				<div class="face-prize-bg">
					<div class="title">
						<i class="icon icon-lottery"></i>游戏奖品
					</div>
					<div class="prize" id="face-prize">
						<ul></ul>
					</div>
				</div>
				<div class="face-endtime-bg">
					已上传<span><i>0</i>人</span>
				</div>
			</div>
			<div class="face-bg face-lottery">
				<div class="title">
					<a class="face-lottery-close"><i class="icon icon-back"></i>返回</a><a
						class="face-next">开启下一轮<i class="icon icon-next"></i></a>
				</div>
				<div class="face-lottery-left">
					<div class="face-lottery-active"></div>
					<div class="face-lottery-box">
						<ul></ul>
					</div>
					<div class="condition">
						选择奖项:
						<div class="select select-middle select-prize" id="showFaceLevel">
							<div class="selected" data-prizeid="0" data-amount="0">请选择</div>
							<ul class="facePrize">
							</ul>
						</div>
						分数区间:
						<div class="select select-middle" id="faceLotteryScore">
							<div class="selected" data-number="0">请选择</div>
							<ul class="faceLotteryScore">
								<li data-number="1">
									<div>所有</div>
								</li>
								<li data-number="2">
									<div>90分及以上</div>
								</li>
								<li data-number="3">
									<div>80-89分</div>
								</li>
								<li data-number="4">
									<div>79分及以下</div>
								</li>
							</ul>
						</div>

						人数:
						<div class="select select-small select-number">
							<div class="selected" data-amount="0">请选择</div>
							<ul>
								<li data-amount="1">1</li>
								<li data-amount="2">2</li>
								<li data-amount="3">3</li>
								<li data-amount="4">4</li>
								<li data-amount="5">5</li>
							</ul>
						</div>
					</div>
					<div class="btn-box">
						<a class="clickBtn face-lottery-begin">开始抽奖</a> <a
							class="clickBtn face-btn face-lottery-stop"
							style="display: none;">停止抽奖</a> <a
							class="clickBtn face-btn face-lottery-ing" style="display: none;">抽奖中<span></span></a>
					</div>
				</div>
				<div class="face-lottery-right right">
					<div class="title">
						<i class="icon icon-title"></i>中奖名单
						<div class="resultNum">
							获奖人数:<span id="luckFaceNumber">0</span>
						</div>
						<i class="icon icon-more"></i>
					</div>
					<div id="face-lottery-user" class="face-lottery-prize result"></div>
					<div class="btn-box">
						<a class="btn reclick gray" id="removeFaceLottery">重新抽奖</a> <a
							class="btn submitUser gray" id="submitFaceLottery">确认名单</a>
					</div>
				</div>
			</div>
		</div>
		<div data-moduleid="100165" data-modulename="carcollect"
			class="module" id="carcollect">
			<ul class="moduleBtn">
				<li class="btn_carcollect" data-name="carcollect"
					data-description="集卡片"><i class="iconfont">&#xe669;</i></li>
			</ul>
			<div class="cardcollect-index">
				<div class="title">
					<i class="icon icon-title"></i>开心集卡片
				</div>
				<a class="clickBtn push-cardcollect" href="javascript:void(0);">开启游戏</a>
			</div>
			<div class="cardcollect-content" style="display: none;">
				<div class="cardcollect-danmu"></div>
				<div class="title">
					<i class="icon icon-title"></i>开心集卡片
				</div>
				<div class="cardcollect-endtime">
					倒计时：
					<div></div>
					秒
				</div>
				<div class="title-btn">
					<a class="clickBtn middleBtn over-cardcollect">结束</a> <a
						class="clickBtn middleBtn push-cardcollect" style="display: none;">下一轮</a>
				</div>
				<ul class="cardcollect-cardlist"></ul>
				<div class="cardcollect-userlist">
					<a class="arrow-left" href="javascript:void(0);"><i
						class="iconfont"> &#xe62e;</i></a> <a class="arrow-right"
						href="javascript:void(0);"><i class="iconfont"> &#xe602;</i></a>

					<div>
						<div class="nouser">啊哦~还没有人集齐所有卡片哦~小伙伴们加油吧！</div>
						<ul id="cardcollect-winner">
							<li></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div data-moduleid="100168" data-modulename="chair" class="module"
			id="chair">
			<ul class="moduleBtn">
				<li class="btn_countmoney" data-name="chair" data-description="抢板凳"><i
					class="iconfont">&#xe66d;</i></li>
			</ul>
			<div class="shakeTimes" id="chairTimes"></div>
			<div class="chair-index">
				<div class="title">
					<i class="icon icon-title"></i>抢板凳
				</div>
				<a href="javascript:void(0);" class="clickBtn chairReady">开始准备</a>
			</div>
			<div class="chair-join">
				<div class="title">
					<i class="icon icon-title"></i>参与抢板凳的粉丝<span class="ready-number">已有<i
						class="chairReadyNumber">0</i>人准备
					</span>
				</div>
				<ul class="chair-join-list">
				</ul>
				<div class="chair-ready-button">
					<a href="javascript:void(0);" class="left-btn show-chair-lucky">显示幸运板凳号</a>
					<a href="javascript:void(0);" class="clickBtn chairBegin">开始游戏</a>
				</div>
			</div>
			<div class="chair-lucky-number">
				<div class="title">
					<i class="icon icon-title"></i>幸运板凳号<span class="ready-number">已有<i
						class="chairReadyNumber">0</i>人准备
					</span>
				</div>
				<ul class="chair-lucky-list">
				</ul>
				<div class="chair-ready-button">
					<a href="javascript:void(0);" class="left-btn close-chair-lucky">关闭显示</a>
				</div>
			</div>
			<div class="chair-ing">
				<div class="title">
					<i class="icon icon-title"></i>抢板凳
				</div>
				<div class="chair-left">
					<div class="chair-box">
						<ul></ul>
					</div>
				</div>
				<div class="chair-right">
					<div class="title">
						<i class="icon"></i>幸运榜<i class="icon"></i>
						<div>
							上榜人数：<i class="chair-lucky-top"></i>人
						</div>
					</div>
					<ul>
					</ul>
					<a onclick="javascript:void(0);" class="clickBtn submit-chair">确认名单</a>
					<a onclick="javascript:void(0);" class="clickBtn next-chair"
						style="display: none;">下一轮</a>
				</div>
			</div>
		</div>
		<div data-moduleid="{100173}" data-modulename="happycatch"
			class="module" id="happycatch">
			<ul class="moduleBtn">
				<li class="btn_happycatch" data-name="happycatch"
					data-description="接接乐"><i class="iconfont">&#xe623;</i></li>
			</ul>
			<div class="happycatch-index">
				<div class="title">
					<i class="icon icon-title"></i>接接乐
				</div>
				<div class="puch-catch">
					<a href="javascript:void(0);" class="clickBtn">开始准备</a>
				</div>
			</div>
			<div class="shakeTimes"></div>
			<div id="readyHappycatch">
				<div class="title">
					接接乐<span class="ready-number">已有<i id="catchReadyNumber">0</i>人准备
					</span>
				</div>
				<ul id="readyHappyCatchList">
				</ul>
				<div class="btn-box">
					<a class="clickBtn" id="beginHappyCatch">开始游戏</a>
				</div>
			</div>
			<div id="happycatch-ing">
				<div class="title">
					<i class="icon icon-title"></i>接接乐
					<div class="endtime">
						倒计时：<span class="happycatch-lefttime"></span><span class="second">S</span>
					</div>
				</div>
				<ul>
				</ul>
			</div>
		</div>
		<div data-moduleid="100174" data-modulename="amazingrace"
			class="module" id="amazingrace">
			<ul class="moduleBtn">
				<li class="btn_amazingrace" data-name="amazingrace"
					data-description="极速前进"><i class="iconfont">&#xe784;</i></li>
			</ul>
			<div class="index-bg">
				<div class="title">
					<i class="icon icon-title"></i>极速前进
				</div>
				<div class="puch-amazingrace">
					<a href="javascript:void(0);" class="clickBtn pushGame">开始准备</a>
				</div>
			</div>
			<div class="shakeTimes"></div>
			<div class="readyList">
				<div class="title">
					极速前进<span class="ready-number">已有<i class="readyNumber">0</i>人准备
					</span>
				</div>
				<ul>
				</ul>
				<div class="btn-box">
					<a class="clickBtn beginGame">开始游戏</a>
				</div>
			</div>
			<div class="game-ing">
				<ul>
				</ul>
				<div class="end-line"></div>
				<div class="over-time">
					倒计时 <span>10</span>
				</div>
			</div>
		</div>
		<div data-moduleid="100201" data-modulename="count" id="joinCount">
			<div class="num" id="userCount">
				<span>0</span>人签到
			</div>
			<div class="num" id="messagesCount" style="opacity:0">
				<span>0</span>消息
			</div>
		</div>
		<div id="btnBox">
			<ul id="btn_change"></ul>
		</div>
	</div>


</body>
</html>
