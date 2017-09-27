<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="/p2p_project/frontStyle/css/style.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="/p2p_project/frontStyle/css/font-style.css">
<script type="text/javascript"
	src="/p2p_project/frontStyle/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/all.js"></script>


<link rel="stylesheet"
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/release-commons_38d5ebd.css?v=201512161721">
<script type="text/javascript"
	src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/common/common_7b4e346.js?v=201512161721"></script>
<link
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/login/login_e18909b.css?v=201512161721"
	rel="stylesheet" type="text/css" />
</head>
<body class="index_niwo holiday_bg">

	<div class="niwdoawi_top mw_1180">
		<div class="header w1190 clearfix">
			<div class="fl tel">
				<em class="fs_14 mr_5 tel_ico">客服热线</em> <i class="aril">400-688-8888</i>
				<span class="iphone"><i></i> <a href="" target="_blank">手机客户端</a>
					 </span> <span class="hover_sina"> <a
					href="" target="_blank"></a>
				</span> <span class="hover_weixin toptk">
				</span>
			</div>
			<div class="fr login clearfix">

				<div class='login_bt'>
					<a href="/p2p_project/frontJsp/login.jsp" id="login" rel="nofollow"
						class="fff">登录</a> <a href="/p2p_project/frontJsp/register.jsp"
						rel="nofollow" class="fff">注册</a><a href="/p2p_project/backJsp/feedbacks.jsp" rel="nofollow" class="fff">意见反馈</a>
				</div>

				<dl>
					<dt>
						<a href="" rel="nofollow" class="txnone"
							style="color: #ffffff">账户中心</a>
					</dt>
					<dd>
						<a href="" rel="nofollow" >充值</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" >提现</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" >我的投资</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow">我的借款</a>
					</dd>
				</dl>
				<div class="community">
				
				   <a href="/p2p_project/backJsp/indexback.jsp" target="_blank" rel="nofollow" class="fc_white">进入后台</a>
			
					
				</div>
			</div>
		</div>
	</div>

	<!--登录-->
	<div class="niwdoawi_center mw_1180">
		<div class="w1190 logo clearfix">
			<a href="" title="" class="fl pl_20 logo_a holiday_logo"><img
				src="/p2p_project/frontStyle/images/logo.jpg" height="52" alt="" /></a>
			<div class="fr righ">
				<ul class="nav clearfix">
					<li><a rel="nofollow" href="" class="one">首页</a></li>
					<li class="two"><a href="" class="two"
						id="cp_two">我要投资</a>
						<dl class="cp_two">
							<dd>
								<a href="/p2p_project/frontJsp/solid.jsp">固收类理财</a>
							</dd>
							<dd>
								<a href="">私募资金</a>
							</dd>
							<dd>
								<a href="">海外配置</a>
							</dd>
							<dd>
								<a href="">股权基金</a>
							</dd>
						</dl></li>
					<li class="rela"><a href="/p2p_project/frontJsp/college.jsp" class="one">盈+商学院</a>
					</li>
					<li class="rela"><a href="" class="one">我的加法库</a>
					</li>
					<li class="rela"><a href="/p2p_project/frontJsp/about.jsp"
						 class="one">关于我们 </a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--nav-->
	<div class="niwdoawi_banner">
		<div class="img">
			<ul>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner1.jpeg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner.jpg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner1.jpeg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner1.jpeg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner.jpg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner.jpg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
(function($){$.fn.extend({"banner":function(options){var defaluts={eml:".page,.prev,.next,.title",direction:"lr",mode:"slide",pages:true,btns:true,title:true,autoanimate:true,ease:"easeInOutElastic",cycle:true,cycleType:true,auto:2000,animation:1000};var options=$.extend(defaluts,options);return this.each(function(){var op=options,obj=$(this),objLi=obj.find("li"),objSpan=obj.find(".page span"),lenB=obj.find("li").length,prev=obj.find(".prev"),next=obj.find(".next"),title=obj.find(".title"),f=true;if(op.direction=="ud"&&op.mode=="slide"){var Scr=obj.find("ul");var Scrw=Scr.find("li").outerWidth();var Scrh=Scr.find("li").outerHeight();Scr.find("li").height(Scrh);Scr.height(Scrw*lenB);Scr.height(Scrh)}if(op.direction=="lr"&&op.mode=="slide"){var Scr=obj.find("ul");var Scrw=Scr.find("li").outerWidth();var Scrh=Scr.find("li").outerHeight();Scr.find("li").width(Scrw);Scr.width(Scrw*lenB);Scr.height(Scrh)}obj.find(".cont").text(lenB);var page="<div class='page'>";for(i=1;i<=lenB;i++){page+="<span>"+i+"</span>"}page+="</div>";obj.append(page);var page=obj.find(".page span");page.eq(0).addClass("current");var imgAlt=objLi.eq(0).find("img").attr("alt");obj.find(".alt").text(imgAlt);if(op.pages==false){obj.find(".page").hide()}if(op.btns==false){prev.hide();next.hide()}if(op.title==false){title.hide()}if(op.mode=="slide"){objLi.css({"float":"left"})}else{if(op.mode=="fade"){objLi.css({"position":"absolute","top":0,"left":0,"display":"none"});objLi.eq(0).show()}}if(op.unlimited==true){var n=0;objLi.each(function(){$(this).attr("indexNum",n++)})}if(op.cycle==true&&op.cycleType==true){if(op.direction=="ud"&&op.mode=="slide"){objLi.closest("ul").css({"position":"relative","top":-Scrh});objLi.css({"position":"absolute","left":0,"display":"none","top":Scrh,"z-index":1});objLi.eq(0).css({"display":"block","z-index":5})}else{if(op.direction=="lr"&&op.mode=="slide"){objLi.closest("ul").css({"position":"relative","left":-Scrw});objLi.css({"position":"absolute","top":0,"display":"none","left":Scrw,"z-index":1});objLi.eq(0).css({"display":"block","z-index":5})}}}page.live("mousemove",function(){if(!$(this).hasClass("current")){var curr=page.index(this)+1;imgAlt=objLi.eq(page.index(this)).find("img").attr("alt");obj.find(".curr").text(curr);obj.find(".alt").text(imgAlt);if(op.direction=="ud"&&op.mode=="slide"&&!Scr.is(":animated")){if(op.cycle==true&&op.cycleType==true){var ui=obj.find(".page span.current").index();var ut=$(this).index();if(ut==lenB-1&&ui==0){f=false}else{if(ut==0&&ui==lenB-1){f=true}else{if(ut>ui){f=true}else{f=false}}}if(f){Scr.css("top",-Scrh);Scr.find("li").eq($(this).index()).css({"top":Scrh*2,"display":"block"});Scr.stop(true,true).animate({"top":-Scrh*2},op.animation,op.ease,function(){Scr.css("top",-Scrh);Scr.find("li").eq(ui).hide();Scr.find("li").eq(ui).css({"z-index":1});Scr.find("li").eq(ut).css({"z-index":5,"top":Scrh})})}else{Scr.css("top",-Scrh);Scr.find("li").eq($(this).index()).css({"top":0,"display":"block"});Scr.stop(true,true).animate({"top":0},op.animation,op.ease,function(){Scr.css("top",-Scrh);Scr.find("li").eq(ui).hide();Scr.find("li").eq(ui).css({"z-index":1});Scr.find("li").eq(ut).css({"z-index":5,"top":Scrh})})}}else{Scr.stop(true,true).animate({marginTop:-Scrh*($(this).index())},op.animation,op.ease)}$(this).addClass("current").siblings().removeClass("current")}else{if(op.direction=="lr"&&op.mode=="slide"&&!Scr.is(":animated")){if(op.cycle==true&&op.cycleType==true){var i=obj.find(".page span.current").index();var t=$(this).index();if(t==lenB-1&&i==0){f=false}else{if(t==0&&i==lenB-1){f=true}else{if(t>i){f=true}else{f=false}}}if(f){Scr.css("left",-Scrw);Scr.find("li").eq($(this).index()).css({"left":Scrw*2,"display":"block"});Scr.stop(true,true).animate({"left":-Scrw*2},op.animation,op.ease,function(){Scr.css("left",-Scrw);Scr.find("li").eq(i).hide();Scr.find("li").eq(i).css({"z-index":1});Scr.find("li").eq(t).css({"z-index":5,"left":Scrw})})}else{Scr.css("left",-Scrw);Scr.find("li").eq($(this).index()).css({"left":0,"display":"block"});Scr.stop(true,true).animate({"left":0},op.animation,op.ease,function(){Scr.css("left",-Scrw);Scr.find("li").eq(i).hide();Scr.find("li").eq(i).css({"z-index":1});Scr.find("li").eq(t).css({"z-index":5,"left":Scrw})})}}else{Scr.stop(true,true).animate({marginLeft:-Scrw*($(this).index())},op.animation,op.ease)}$(this).addClass("current").siblings().removeClass("current")}else{if(op.mode=="fade"){if(objLi.eq(page.index(this)).is(":hidden")){objLi.stop(true,true).fadeOut(op.animation).eq(page.removeClass("current").index($(this).addClass("current"))).fadeIn(op.animation)}}}}}});if(op.autoanimate==true){var index=1;var time=setInterval(function(){page.eq(index).mousemove();index++;if(index==lenB){index=0}},op.auto);obj.find(op.eml).hover(function(){clearInterval(time)},function(){index=obj.find(".page span.current").index()+1;if(index==lenB){index=0}time=setInterval(function(){page.eq(index).mousemove();index++;if(index==lenB){index=0}},op.auto)});objLi.hover(function(){clearInterval(time)},function(){index=obj.find(".page span.current").index()+1;if(index==lenB){index=0}time=setInterval(function(){page.eq(index).mousemove();index++;if(index==lenB){index=0}},op.auto)})}prev.mousemove(function(){index=obj.find(".page span.current").index()-1;prev.removeClass("disabled");next.removeClass("disabled");if(op.cycle!=true){if(index==-1||index==0){prev.addClass("disabled")}if(index==-1){return false}}page.eq(index).mousemove()});next.mousemove(function(){prev.removeClass("disabled");next.removeClass("disabled");index=obj.find(".page span.current").index()+1;if(op.cycle!=true){if(index==lenB||index==lenB-1){index=lenB-1;if(index==lenB-1||index==lenB){next.addClass("disabled")}}}else{if(index==lenB){if(op.cycle!=true){index=lenB-1}else{index=0}}}page.eq(index).mousemove()})})}})})(jQuery);
</script>
	<script type="text/javascript">
    $('.niwdoawi_banner').banner({
        mode:'fade', //动画方式 fade(渐隐渐现) / slide (左右滑入)
        pages:true,  //是否需要pages true/false
        btns:true,  //是否需要btns true/false
        title:true, //是否需要title true/false
        auto:4000,  //停留时间
        animation:1000 //动画时间
    });
</script>


	<script type="text/javascript"
		src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/sea_c494287.js?v=201512161721"
		id="seajsnode"></script>
	<script type="text/javascript"
		src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/sea-config_c8ac77c.js?v=201512161721"></script>
	<script type="text/javascript">
    var showCode = 'False'.toLowerCase() == "true";
    var firstErrorMsg = '';
    var $warningTips = $(".login-box .warning");
    firstErrorMsg && $warningTips.show().html(firstErrorMsg);

    seajs.use(['login/login_98660bd'], function () {

    });
</script>

	<div class="cp_main_buddhald">
		<div class="clearfix w1180 mb_20 cp_xiugai_ye15820">
			<div class="clearfix">
				<div class="fl cp_main_buddhald_xoihia">
					<div class="fl lingmengkan">
						<img src="/p2p_project/frontStyle/images/chenping201501.png">
						<p>
							赣南地区最专业的网贷平台，投资快速、<br />安全、方便，让您享受投资的乐趣
						</p>
					</div>
					<div class="fl lingmengkan">
						<img src="/p2p_project/frontStyle/images/chenping201502.png">
						<p>
							每一个借款项目都适合本金保障计<br />划,确保每一位投资人的资金安全
						</p>
					</div>
					<div class="fl lingmengkan">
						<img src="/p2p_project/frontStyle/images/chenping201503.png">
						<p>
							安全高收益。零门槛，多重保障，<br />让您的资金迅速升值，更有资金<br>周转标，债券转让标
						</p>
					</div>
				</div>

				<div class="module fl numTong numH1 ind_w280 holiday_r_no1">
					<div class="module numTong numH1">
						<div class="imgbox"></div>
						<div class="content_bg">
							<div class="bt fs_16">
							<span>公告标题</span>
							</div>
							<div class="note-bd news-cont">
							<ul class="ff-f">
							<c:forEach items="${push_notices}" var="p">
							<li class="ellipsis"><span class="dot" >.</span>
						    <img width="10px" height="10px" src="/p2p_project/frontStyle/images/saniao.jpg" style="float:left;margin:5px;margin-top:3px"/> <a href="" style="float:left">${p.content}</a>
						   </li>
							</c:forEach>
							</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<div class="i-mod-wrap" style="background-color: #FFFFFF;">
		<div class="i-mod cf">
			<div class="i-mod-cont">
				<div class="cont-hd">
					<i class="icon iconfont"></i><span class="em">活动专区</span><span
						class="hd-tips">精彩活动，敬请期待</span>
				</div>
				<div class="cont-bd">
					<ul class="prj-box cf">
						<li class="prj-box-item">
							<div class="item-hd">
								<div class="item-tips">
									限量抢券 <span class="tips-dot dot-l">•</span> <span
										class="tips-dot dot-r">•</span>
								</div>
							</div>
							<div class="daily-rush-icon"></div>
							<div class="daily-rush">
								<div class="d-c-bd">
									<div class="d-status d-status-default">
										<div class="status-t">试试手气，拼下人品</div>
										<div class="ing-c">
											<div class="d-status d-status-ing"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="daily-rush-note">09:30开始，每人每天都可以抢一次哦！</div>
						</li>
						<li id="newHandPrj" class="prj-box-item">
							<div class="item-hd">
								<div class="item-tips">
									新手专享标 <span class="tips-dot dot-l">•</span> <span
										class="tips-dot dot-r">•</span>
								</div>
							</div>
							<div class="cat-box cf">
								<div class="fl">
									<div class="cat-box-hd" data-rate="">
										<span class="em">14.0</span><span class="u">%</span>
									</div>
									<div class="cat-box-bd">年化收益</div>
								</div>
								<div class="fr">
									<div class="cat-box-hd" data-limit="">
										<span class="em">7</span><span class="u">天</span>
									</div>
									<div class="cat-box-bd">项目期限</div>
								</div>
							</div>
							<div class="note-box">
								限未成功投资过的新用户,每个用户仅享有一次机会<span data-limit="">，每人限投5,000元</span>
							</div>
							<div class="invest-box cf">
								<div class="f-ff fl">
									<a href="" target="_blank" data-link-type=""><i
										class="icon iconfont"></i><span class="prj-type">机构保</span></a>
								</div>
								<div class="fr" data-status=""
									style="position: relative; top: -10px;">
									<div class="btn-box">
										<a href="/Project/CommonDetail/11737" target="_blank"
											class="btn btn-primary btn-3d">立即投资</a>

									</div>
								</div>
							</div>
						</li>
						<li id="hotPrj" class="prj-box-item z-hover">
							<div class="item-hd">
								<div class="item-tips">
									<label>12点开抢</label> <span class="tips-dot dot-l">•</span> <span
										class="tips-dot dot-r">•</span>
								</div>
							</div>
							<div class="cat-box cf">
								<div class="fl">
									<div class="cat-box-hd" data-rate="">
										<span class="em">15.0</span><span class="u">%</span>
									</div>
									<div class="cat-box-bd">年化收益</div>
								</div>
								<div class="fr">
									<div class="cat-box-hd" data-limit="">
										<span class="em">30</span><span class="u">天</span>
									</div>
									<div class="cat-box-bd">项目期限</div>
								</div>
							</div>
							<div class="note-box">
								小贷短期融资标，年化收益再加 2%～5%<span data-limit="">，每人限投20,000元</span>
							</div>
							<div class="invest-box cf">
								<div id="hotPrjTips" class="f-ff fl">
									<a href="/anwenying/" target="_blank" data-link-type=""><i
										class="icon iconfont"></i><span class="prj-type">安稳盈</span></a>
								</div>
								<div class="fr" data-status="">
									<div class="btn-box">

										<a id="prj11739" href="/Project/CommonDetail/11739"
											target="_blank" class="btn btn-primary btn-wait">倒计时
											00:37:17</a>

									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="i-mod-note">
				<div class="note-hd">
					<span class="fl em">新闻公告</span> <a class="fr more primary"
						href="http://www.ppmoney.com/news/ppgg" target="_blank" title="">更多<i
						class="iconfont"></i></a>
				</div>
				<div class="note-bd news-cont">
					<!--新闻公告-->
					<ul class="ff-f">


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3070.html"
							title="樊纲点赞互联网金融 宝叔解读PPmoney商业模式">樊纲点赞互联网金融 宝叔解读PPmoney商业模式</a></li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3029.html"
							title="关于充值不投资提现规则更改的公告">关于充值不投资提现规则更改的公告</a></li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3028.html"
							title="PPmoney陈宝国：纯信息中介与担保模式平台将共存共生">PPmoney陈宝国：纯信息中介与担保模式平台将共存共生</a>
						</li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3027.html"
							title="推进投资者保护：PPmoney引入第三方电子合同  ">推进投资者保护：PPmoney引入第三方电子合同 </a>
						</li>

						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3027.html"
							title="推进投资者保护：PPmoney引入第三方电子合同  ">推进投资者保护：PPmoney引入第三方电子合同 </a>
						</li>
						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3026.html"
							title="盘活老用户：互联网金融平台的新玩法">盘活老用户：互联网金融平台的新玩法</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>






	<div class="i-mod-wrap" style="background-color: #FFFFFF;">
		<div class="i-mod cf">
			<div class="i-mod-cont">
				<div class="cont-hd">
					<i class="icon iconfont"></i><span class="em">定期理财</span><span
						class="hd-tips">多种期限，收益更高</span> <a
						href="http://www.ppmoney.com/touzilicai/" target="_blank"
						class="more" data-num="">更多<i class="iconfont"></i></a>
				</div>
				<div class="cont-bd dq-cont-bd" style="position: relative;">
					<ul id="DQPrj" class="prj-box cf dq-prj-box">
						<li class="prj-box-item zr-box">
							<div class="t-box">
								<div class="t-box-icon t-box-high"></div>
							</div>
							<div class="cat-box cf">
								<div class="fl">
									<div class="cat-box-hd" data-rate="">

										<span class="em">7.88</span> <span class="u">%</span>
									</div>
									<div class="cat-box-bd">年化收益</div>
								</div>
								<div class="fr">
									<div class="cat-box-hd">


										<span class="em">1</span> <span class="u">月</span> <span
											class="em">1</span> <span class="u">天</span>

									</div>
									<div class="cat-box-bd">项目期限</div>
								</div>
							</div>
							<div class="progress-box">
								<div class="progress-box-c">
									<div class="progress-ing" style="width: 5.98%"></div>
									<span id="progress">5.98%</span>
								</div>
							</div>
							<div class="invest-box cf">
								<div class="f-ff fl">
									<a href=""><i class="icon iconfont"></i>转让标</a>
								</div>
								<div class="fr" data-status="">
									<div class="btn-box">

										<a href="/CreditAssign/Detail/35302" target="_blank"
											class="btn btn-primary btn-3d">立即投资</a>

									</div>
								</div>
							</div>

							<div class="pin-box">
								<i class="iconfont"></i> <span class="em">转</span>
							</div>

						</li>
						<li class="prj-box-item zr-box">
							<div class="t-box">
								<div class="t-box-icon t-box-short"></div>
							</div>
							<div class="cat-box cf">
								<div class="fl">
									<div class="cat-box-hd" data-rate="">

										<span class="em">7.34</span> <span class="u">%</span>
									</div>
									<div class="cat-box-bd">年化收益</div>
								</div>
								<div class="fr">
									<div class="cat-box-hd">

										<span class="em">110</span> <span class="u">天</span>

									</div>
									<div class="cat-box-bd">项目期限</div>
								</div>
							</div>
							<div class="progress-box">
								<div class="progress-box-c">
									<div class="progress-ing" style="width: 12.66%"></div>
									<span id="progress">12.66%</span>
								</div>
							</div>
							<div class="invest-box cf">
								<div class="f-ff fl">
									<a href="/creditassign/list/"><i class="icon iconfont"></i>转让标</a>
								</div>
								<div class="fr" data-status="">
									<div class="btn-box">

										<a href="/CreditAssign/Detail/35158" target="_blank"
											class="btn btn-primary btn-3d">立即投资</a>

									</div>
								</div>
							</div>

							<div class="pin-box">
								<i class="iconfont"></i> <span class="em">转</span>
							</div>

						</li>
						<li class="prj-box-item">
							<div class="t-box">
								<div class="t-box-icon t-box-default"></div>
							</div>
							<div class="cat-box cf">
								<div class="fl">
									<div class="cat-box-hd" data-rate="">

										<span class="em">11.0</span> <span class="u">%</span>
									</div>
									<div class="cat-box-bd">年化收益</div>
								</div>
								<div class="fr">
									<div class="cat-box-hd">

										<span class="em">90</span> <span class="u">天</span>

									</div>
									<div class="cat-box-bd">项目期限</div>
								</div>
							</div>
							<div class="progress-box">
								<div class="progress-box-c">
									<div class="progress-ing" style="width: 100.00%"></div>
									<span id="progress">100.00%</span>
								</div>
							</div>
							<div class="invest-box cf">
								<div class="f-ff fl">
									<a href="/jiaduobao/"><i class="icon iconfont"></i>加多保</a>
								</div>
								<div class="fr" data-status="">
									<div class="btn-box">

										<a href="/Project/CommonDetail/11741" target="_blank"
											class="btn btn-primary btn-finished">已满额</a>

									</div>
								</div>
							</div>

						</li>
					</ul>
				</div>
			</div>

			<div class="i-mod-note">
				<div class="note-hd">
					<span class="fl em">媒体报道</span> <a class="fr more primary"
						href="http://www.ppmoney.com/news/ppgg" target="_blank" title="">更多<i
						class="iconfont"></i></a>
				</div>
				<div class="note-bd news-cont" style="height: 150px;">
					<!--新闻公告-->
					<ul class="ff-f">


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3070.html"
							title="樊纲点赞互联网金融 宝叔解读PPmoney商业模式">樊纲点赞互联网金融 宝叔解读PPmoney商业模式</a></li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3029.html"
							title="关于充值不投资提现规则更改的公告">关于充值不投资提现规则更改的公告</a></li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3028.html"
							title="PPmoney陈宝国：纯信息中介与担保模式平台将共存共生">PPmoney陈宝国：纯信息中介与担保模式平台将共存共生</a>
						</li>

						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3028.html"
							title="PPmoney陈宝国：纯信息中介与担保模式平台将共存共生">PPmoney陈宝国：纯信息中介与担保模式平台将共存共生</a>
						</li>
						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3027.html"
							title="推进投资者保护：PPmoney引入第三方电子合同  ">推进投资者保护：PPmoney引入第三方电子合同 </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>




	<div class="i-mod-wrap" style="background-color: #FFFFFF;">
		<div class="i-mod cf">
			<div class="i-mod-cont">
				<div id="dailyBaoPrj" class="fina-box group-01">
					<div class="cont-hd">
						<i class="icon iconfont"></i><span class="em">活期理财</span><span
							class="hd-tips">随存随取，灵活便捷</span>
					</div>
					<div class="cont-bd contcp_ps">
						<div class="item-hd cf">
							<div class="fl">
								万份收益<span data-profit="">1.73</span>元 天天复利随时存取
							</div>
							<div class="f-ff fr">
								<a href="" target="_blank"><i class="icon iconfont"></i>日利宝</a>
							</div>
						</div>
						<div class="item-bd cf">
							<div class="item-01 cf">
								<div class="hd" data-rate="">6.3</div>
								<div class="bd">
									<p class="u">%</p>
									<p class="t">年化收益</p>
								</div>
							</div>
							<div class="item-02">
								<p class="top em" data-amount="">
									35,984,219<span class="l-u">元</span>
								</p>
								<p class="f-ff">可投</p>
							</div>
							<div class="item-03">
								<div class="invest-box">
									<a href="http://www.ppmoney.com/dailybao/transin/"
										target="_blank" class="btn btn-primary btn-3d">立即投资</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="fina-box group-02" style="background: #FFFFFF;">
					<div class="cont-hd">
						<a class="fr more primary" href="http://www.ppmoney.com/news/ppgg"
							target="_blank" title="">更多<i class="iconfont"></i></a>
					</div>
					<div class="cont-bd contcp_ps asdfghjkl"
						style="background: #FFFFFF;">
						<div class="fl">
							<div class="coorchenps">
								<img src="/p2p_project/frontStyle/images/cjsh_cp01.png"> <span>智能抢标</span>
							</div>
							<div class="coorchenps">
								<img src="/p2p_project/frontStyle/images/cjsh_cp02.png"> <span>投资计算机</span>
							</div>
							<div class="coorchenps" style="border: none">
								<img src="/p2p_project/frontStyle/images/cjsh_cp03.png"> <span>逾期黑名单</span>
							</div>
						</div>
						<div class="fl" style="margin: 0 15px;">
							<img src="/p2p_project/frontStyle/images/zmcfhfzxcnm.png">
						</div>
						<div class="fl" style="margin-top: 25px;">
							<img src="/p2p_project/frontStyle/images/zmcfhfapp.png"><br />
							<img src="/p2p_project/frontStyle/images/zmcfhfapaap.png"
								style="margin-top: 10px;">
						</div>
					</div>
				</div>
			</div>

			<div class="i-mod-note">
				<div class="note-hd">
					<span class="fl em">常见问题</span> <a class="fr more primary"
						href="http://www.ppmoney.com/news/ppgg" target="_blank" title="">更多<i
						class="iconfont"></i></a>
				</div>
				<div class="note-bd news-cont" style="height: 101px;">
					<!--新闻公告-->
					<ul class="ff-f">


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3070.html"
							title="樊纲点赞互联网金融 宝叔解读PPmoney商业模式">樊纲点赞互联网金融 宝叔解读PPmoney商业模式</a></li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3029.html"
							title="关于充值不投资提现规则更改的公告">关于充值不投资提现规则更改的公告</a></li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3028.html"
							title="PPmoney陈宝国：纯信息中介与担保模式平台将共存共生">PPmoney陈宝国：纯信息中介与担保模式平台将共存共生</a>
						</li>


						<li class="ellipsis"><span class="dot">·</span><a
							target="_blank" href="/news/ppgg_3027.html"
							title="推进投资者保护：PPmoney引入第三方电子合同  ">推进投资者保护：PPmoney引入第三方电子合同 </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>



	<div class="g-toolbar">

		<ul class="g-toolbar-nav">
			<li class="toolbar-item">
				<!-- <img src="images/11.png"> -->
				<div class="item-tip-c item-tip-weixin">
					<div class="item-box">
						<u class="u-code u-g-ft-wx"></u>

						<div class="item-tip">PPmoney理财平台</div>
					</div>
				</div> <i class="icon iconfont"></i>
			</li>
			<li class="toolbar-item">
				<!-- <img src="images/22.png"> -->
				<div class="item-tip-c item-tip-app">
					<div class="item-box">
						<u class="u-code u-g-ft-app"></u>
						<div class="item-tip">扫码下载APP</div>
					</div>
				</div> <i class="iconfont icon"></i>
			</li>
			<li class="toolbar-item">
				<!-- <img src="images/33.png"> --> <a href="" title="在线客服"
				target="_blank">
					<div class="item-tip-c item-tip-kefu">
						<div class="item-box">
							<div class="item-tip">
								在线客服<br>9:00~22:00
							</div>
						</div>
					</div> <i class="iconfont icon"></i>
			</a>
			</li>
			<li class="toolbar-item">
				<!-- <img src="images/44.png"> --> <a href="" title="页面检测"
				target="_blank">
					<div class="item-tip-c item-tip-checkpage">
						<div class="item-box">
							<div class="item-tip" style="line-height: 18px;">页面检测</div>
						</div>
					</div> <i class="iconfont icon"></i>
			</a>
			</li>
			<li id="back" class="toolbar-item" style="visibility: visible;">
				<!-- <img src="images/55.png"> -->
				<div class="item-tip-c item-tip-back">
					<div class="item-box">
						<div class="item-tip" style="line-height: 18px;">返回顶部</div>
						<script type="text/javascript">
						  $(function(){
							  $("#back").click(function(){
								  $('body,html').animate({scrollTop:0},500);
								   return false;
								  });
						  });

						  </script>
					</div>
				</div> <i class="iconfont icon"></i>
			</li>
		</ul>
	</div>






	<div class="i-mod-wrap ex-i-mod-wrap"
		style="background-color: #ffffff; padding-bottom: 20px;">
		<!-- start-->
		<div class="i-mod index-friend">
			<div class="friend-list nation" style="background-color: #F4F4F4">
				<h3 class="i-mod-subnote">合作机构</h3>
				<ul id="agency" class="cf index-u-nation index-u-coop">
					<!--国有-->
					<li><a class="nation nation1"
						href="http://www.eoechina.com.cn/" target="_blank"
						title="深圳联合产权交易所" rel="nofollow"></a></li>
					<li><a class="nation nation2" href="https://www.qhee.com/"
						target="_blank" title="前海股权交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation3" href="http://www.gfae.com.cn/"
						target="_blank" title="广州金融资产交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation4" href="http://www.gdotc.cn/"
						target="_blank" title="广东金融高新区股权交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation5" href="http://www.bbwcq.com/"
						target="_blank" title="广西北部湾产权交易所" rel="nofollow"></a></li>
					<li><a class="nation nation6" href="http://www.zbotc.com/"
						target="_blank" title="齐鲁股权交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation7"
						href="http://www.sqfae.com/cn/index.aspx" target="_blank"
						title="前海金融资产交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation8" href="javascript:void(0)"
						target="_blank" title="江西赣南金融资产交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation9"
						href="http://www.whfae.com/front/index.html" target="_blank"
						title="武汉金融资产交易所" rel="nofollow"></a></li>
					<li><a class="nation nation10"
						href="http://www.sxgq.net/GQJYPT/" target="_blank"
						title="山西股权交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation11" href="http://www.sxeec.com/"
						target="_blank" title="陕西股权交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation12"
						href="http://www.tjsoc.com/web/default.aspx" target="_blank"
						title="天津股权交易所" rel="nofollow"></a></li>
					<li><a class="nation nation13" href="http://www.cqfae.com/"
						target="_blank" title="重庆金融资产交易所 " rel="nofollow"></a></li>
					<li><a class="nation nation14" href="http://www.gdfae.cn/"
						target="_blank" title="广东金融资产交易中心" rel="nofollow"></a></li>
					<li><a class="nation nation15"
						href="http://www.casdaq.com.cn/" target="_blank" title="新疆股权交易中心 "
						rel="nofollow"></a></li>
					<li><a class="nation nation16" href="http://www.xjcq.gov.cn/"
						target="_blank" title="新疆产权交易所 " rel="nofollow"></a></li>
					<!--合作伙伴-->
					<li><a class="coop coop1" href="http://bank.pingan.com/"
						target="_blank" title="平安银行" rel="nofollow"></a></li>
					<li><a class="coop coop2" href="http://www.gffunds.com.cn/"
						target="_blank" title="广发基金" rel="nofollow"></a></li>
					<li><a class="coop coop3" href="http://www.wlzq.com.cn/"
						target="_blank" title="万联证券" rel="nofollow"></a></li>
					<li><a class="coop coop4" href="http://www.tenpay.com/"
						target="_blank" title="腾讯财付通" rel="nofollow"></a></li>
					<li><a class="coop coop5" href="https://www.weicaifu.com/"
						target="_blank" title="新浪微财富" rel="nofollow"></a></li>
					<li><a class="coop coop6" href="javascript:void(0)"
						target="_blank" title="惠富融通" rel="nofollow"></a></li>
					<li><a class="coop coop7" href="javascript:void(0)"
						target="_blank" title="前海融通" rel="nofollow"></a></li>
					<li><a class="coop coop8" href="javascript:void(0)"
						target="_blank" title="惠通保理" rel="nofollow"></a></li>
					<li><a class="coop coop9" href="javascript:void:;"
						target="_blank" title="富百邦财富" rel="nofollow"></a></li>
					<li><a class="coop coop10" href="javascript:void(0)"
						target="_blank" title="通产融资" rel="nofollow"></a></li>
					<li><a class="coop coop11" href="http://www.moneyking.cn/"
						target="_blank" title="太平洋资管" rel="nofollow"></a></li>
					<li><a class="coop coop14" href="http://www.gifa.com.cn/"
						target="_blank" title="广东互联网金融协会" rel="nofollow"></a></li>
					<li><a class="coop coop12" href="http://www.touzhijia.cn/"
						target="_blank" title="投之家" rel="nofollow"></a></li>
					<li><a class="coop coop13"
						href="http://act.vip.xunlei.com/vip/2014/ppmoney/" target="_blank"
						title="迅雷会员" rel="nofollow"></a></li>
				</ul>
			</div>
		</div>
		<!--friend end-->
	</div>


	<div class="g-ft-wrap">
		<div class="g-ft">
			<div class="cf">
				<ul class="ft-nav cf">
					<li class="cf">基本介绍
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#58"
								target="_blank" title="会员注册" rel="nofollow">会员注册</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#59"
								target="_blank" title="常用名词解释" rel="nofollow">常用名词解释</a></li>
						</ul>
					</li>
					<li class="cf">投资理财
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#62"
								target="_blank" title="投资准备" rel="nofollow">投资准备</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#63"
								target="_blank" title="申请成为投资人" rel="nofollow">申请成为投资人</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#64"
								target="_blank" title="申请理财包技巧" rel="nofollow">申请理财包技巧</a></li>
						</ul>
					</li>
					<li class="cf">融资快贷
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#67"
								target="_blank" title="利率期限方式" rel="nofollow">利率期限方式</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#68"
								target="_blank" title="如何申请融资" rel="nofollow">如何申请融资</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#69"
								target="_blank" title="如何偿还资金" rel="nofollow">如何偿还资金</a></li>
						</ul>
					</li>
					<li>充值提现
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#70"
								target="_blank" title="充值相关的问题" rel="nofollow">充值相关的问题</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#71"
								target="_blank" title="提现相关的问题" rel="nofollow">提现相关的问题</a></li>
						</ul>
					</li>
					<li>安全保障
						<ul>
							<li><a href="" target="_blank" title="找回密码" rel="nofollow">找回密码</a></li>
							<li><a href="" target="_blank" title="密码安全常识" rel="nofollow">密码安全常识</a></li>
							<li><a href="" target="_blank" title="电子合同有效吗"
								rel="nofollow">电子合同有效吗</a></li>
						</ul>
					</li>
				</ul>
				<div class="fr cf">
					<div class="kf">
						<p class="f-s16">在线客服</p>
						<h2>888-8888-888</h2>
						<p>（服务时间 9:00～22:00）</p>
						<ul class="kf-nav cf m-t5">
							<li><a href="" target="" title="" rel="nofollow"><img
									src="/p2p_project/frontStyle/images/zmcf_wbcp.png"> </a></li>
							<li><a href="" target="_blank" title="PPmoney微信"
								rel="nofollow"><img
									src="/p2p_project/frontStyle/images/zmcf_wxcp.png"></a></li>
							<li><a href="" target="_blank" title="在线客服" rel="nofollow"><img
									src="/p2p_project/frontStyle/images/zmcf_qqcp.png"></a></li>
						</ul>
					</div>
					<div class="fl">
						<u class="u-code u-g-kf"></u>
					</div>
				</div>
			</div>
			<div class="friendlink">
				<p class="cf">
					<span class="f-mod">友情链接:</span> <a href="http://www.moneyking.cn/"
						target="_blank" title="太平洋资产管理(集团)">太平洋资产管理(集团)</a> <a
						href="http://money.jrj.com.cn/" target="_blank" title="金融界">金融界</a>
					<a href="http://www.rong360.com/licai/" target="_blank"
						title="融360">融360</a> <a href="http://www.caiguu.com/licai/"
						target="_blank" title="财股网理财">财股网理财</a> <a
						href="http://www.nlnw.net" target="_blank" title="房贷利率">房贷利率</a> <a
						href="http://www.wangdaizhijia.com/" target="_blank" title="网贷之家">网贷之家</a>
					<a href="http://house.focus.cn/fangdaijisuanqi/shangyedaikuan/"
						target="_blank" title="商业贷款计算器">商业贷款计算器</a> <a
						href="http://www.jpm.cn/" target="_blank" title="金评媒">金评媒</a> <a
						href="http://www.smartqian.com/" target="_blank" title="金融导航">金融导航</a>

				</p>
			</div>
			<ul class="link-nav cf">
				<li><a href="http://www.miibeian.gov.cn/" target="_blank"
					title="" rel="nofollow"><u class="u-10"></u></a></li>
				<li><a href="http://www.gdnet110.gov.cn/" target="_blank"
					title="" rel="nofollow"><u class="u-11"></u></a></li>
				<li><a
					href="http://webscan.360.cn/index/checkwebsite/url/www.ppmoney.com"
					target="_blank" title="" rel="nofollow"><u class="u-12"></u></a></li>
				<li><a
					href="https://search.szfw.org/cert/l/CX20130826002735003003"
					target="_blank" title="" rel="nofollow"><u class="u-13"></u></a></li>
				<li><a
					href="https://ss.knet.cn/verifyseal.dll?sn=e1309121101004242455g1000000&amp;ct=df&amp;a=1&amp;pa=000000"
					target="_blank" title="" rel="nofollow"><u class="u-14"></u></a></li>
				<li><a
					href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1591537685"
					target="_blank" title="" rel="nofollow"><u class="u-15"></u></a></li>
				<li><a
					href="http://www.anquan.org/authenticate/cert/?site=www.ppmoney.com&amp;at=business"
					target="_blank" title="" rel="nofollow"><u class="u-16"></u></a></li>
			</ul>
			<div class="copyright">
				<a href="/info/about" title="关于我们" rel="nofollow">关于我们</a>| <a
					href="/job/list" title="人才招聘" rel="nofollow">人才招聘</a>| <a
					href="/info/law" title="法律申明" rel="nofollow">法律申明</a>| <a
					href="/info/feedback" title="意见反馈" rel="nofollow">意见反馈</a>| <a
					href="/info/contact" title="联系我们" rel="nofollow">联系我们</a>| <a
					href="/info/help" title="新手必读" rel="nofollow">新手必读</a>
				<pre class="p-t10">版权所有 (C) PPmoney.com <a
						href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备12030634号</a><a
						href="/special/icp/icp.html" target="_blank" rel="nofollow">增值电信业务经营许可证粤B2-20150286</a>
				</pre>
			</div>
		</div>
	</div>
</body>
</html>