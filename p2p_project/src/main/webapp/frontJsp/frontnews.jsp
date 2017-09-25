<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻中心</title>
<link href="/p2p_project/frontStyle/css/bootstrap.min.css" rel="stylesheet">
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
<!-- -------------------开始------------ -->
	<link href="http://www.ying158.com/Content/images/jw/icon.ico" type="image/x-icon" rel="shortcut icon">
	<link href="/p2p_project/frontStyle/fontes/common" rel="stylesheet">
	<link href="/p2p_project/frontStyle/fontes/jw.less" rel="stylesheet">
	<style>
		* {
			margin: 0;
			padding: 0;
			list-style: none;
		}

		img {
			border: 0;
		}

		.rides-cs {
			font-size: 12px;
			background: #29a7e2;
			position: fixed;
			top: 250px;
			right: 0px;
			_position: absolute;
			z-index: 1500;
			border-radius: 6px 0px 0 6px;
		}

			.rides-cs a {
				color: #00A0E9;
			}

				.rides-cs a:hover {
					color: #ff8100;
					text-decoration: none;
				}

			.rides-cs .floatL {
				width: 36px;
				float: left;
				position: relative;
				z-index: 1;
				margin-top: 21px;
				height: 181px;
			}

				.rides-cs .floatL a {
					font-size: 0;
					text-indent: -999em;
					display: block;
				}

			.rides-cs .floatR {
				width: 130px;
				float: left;
				padding: 5px;
				overflow: hidden;
			}

				.rides-cs .floatR .cn {
					background: #F7F7F7;
					border-radius: 6px;
					margin-top: 4px;
				}

			.rides-cs .cn .titZx {
				font-size: 14px;
				color: #333;
				font-weight: 600;
				line-height: 24px;
				padding: 5px;
				text-align: center;
			}

			.rides-cs .cn ul {
				padding: 0px;
			}

				.rides-cs .cn ul li {
					line-height: 38px;
					height: 38px;
					border-bottom: solid 1px #E6E4E4;
					overflow: hidden;
					text-align: center;
				}

					.rides-cs .cn ul li span {
						color:#333;
					}

					.rides-cs .cn ul li a {
						color: #777;
					}

					.rides-cs .cn ul li img {
						vertical-align: middle;
					}

			.rides-cs .btnOpen, .rides-cs .btnCtn {
				position: relative;
				z-index: 9;
				top: 25px;
				left: 0;
				background-image: url(/Content/images/jw/qqkefu.png);
				background-repeat: no-repeat;
				display: block;
				height: 146px;
				padding: 8px;
			}

			.rides-cs .btnOpen {
				background-position: 0 0;
			}

			.rides-cs .btnCtn {
				background-position: -37px 0;
			}

			.rides-cs ul li.top {
				border-bottom: solid #ACE5F9 1px;
			}

			.rides-cs ul li.bot {
				border-bottom: none;
			}

        .topNav {
            padding: 0;
            margin: 0;
        }
	li {
		margin: 0;
		padding: 8px 0;
	}

	li.active {
		/*background: #323030;*/
        background:none;
	}

	li.active a {
		color: white;
	}
	</style>

<!-- ------------------------------------------ -->

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
<!--------------------- 从这里开始---------------------- -->
<div class="main">
<div class="container helpCenter">
    <div class="row">
        <div class="left">
            <div class="item first active" name="reports" id="reportsTab">
          新闻头条
            </div>
            <div class="item" name="lastest" id="lastestTab">
              新闻标题
            </div>
	        <div class="item" name="strategy" id="strategyTab">
新闻内容
	        </div>
			
            <div class="item" name="topNews" id="topNewsTab">
          市场动态    
            </div>
            <div class="blank" style="height:532px;">

            </div>
        </div>
        <div class="right">
            <div class="content" id="reports" style="display: block;">
                <div class="title">
                    平台公告
                </div>
                <ul class="newsList">
                    
	<li>
		<a href="http://www.ying158.com/news/19dc50b5-0284-4bed-bbe3-a363739f9e15" target="_blank">2017年春节放假安排</a><span class="time">2017-01-23</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/e0d2276e-a35f-4b0a-aea7-3473cd800533" target="_blank">重磅推出阳光私募基金-吉威量化套利稳健1号</a><span class="time">2016-04-14</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/48aefff0-bcdb-45c2-b247-9910896603d2" target="_blank">关于盈+理财平台安全卡管理通告</a><span class="time">2016-01-13</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/a140c288-f3ed-40b5-8ae1-73c131f87dfa" target="_blank">盈+全球首映</a><span class="time">2015-07-13</span>
	</li>

	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>

<li>
	<a onclick="pagation(0)">上一页</a> | <a onclick="pagation(2)">下一页</a>
</li>

                </ul>
            </div>
            <div id="strategy" class="content" style="display: none;">
                <div class="title">
                    趣味理财
                </div>
                <ul class="newsList">
                    
	<li>
		<a href="http://www.ying158.com/news/5a70857e-2b2a-4ba6-aa25-a2e53fd0de23" target="_blank">【私募知识】私募基金的五大误区</a><span class="time">2016-04-15</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/da3ea339-3ae6-4080-9aec-2e73f5264f55" target="_blank">秒杀盖茨和巴老 这哥们财富增长了14658%</a><span class="time">2015-09-17</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/35696d49-9724-4072-a292-073d4bb3c3e0" target="_blank">会买衣服怎么可能不会投资？教你从买衣服中学投资！</a><span class="time">2015-09-17</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/04b29d8b-fd00-4669-b9e6-2515d0e89bf0" target="_blank">他赚了75亿美金, 却要在2016年之前散尽家产</a><span class="time">2015-09-16</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/4fd91292-554c-49d6-9c62-f1185de438d6" target="_blank">美团估值为何骤降了？“烧钱模式”惹的祸!</a><span class="time">2015-09-16</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/fe845eec-4b78-456b-bdd1-0cbe8d8334e9" target="_blank">滴滴投资人王刚：滴滴发展过程跌宕起伏堪比韩剧</a><span class="time">2015-09-15</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/2f11b8b1-edd2-4841-862d-17cf09953d93" target="_blank">张泉灵离职央视：生命的后半段，我想重来一次！</a><span class="time">2015-09-14</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/606b9a91-ade1-43b8-9a03-7252861f37f9" target="_blank">美国“9.11”事件3700余名救援人员确诊患癌</a><span class="time">2015-09-14</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/bda161cd-1333-4c0b-8c6f-f8405c34f16d" target="_blank">触控笔、微软站台还有爱马仕，苹果简直能把乔帮主气活了！</a><span class="time">2015-09-11</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/ae6966b2-b791-42c8-a2c4-9f820c3ac341" target="_blank">股权众筹第一案焦点：平台是受托人还是居间人</a><span class="time">2015-09-07</span>
	</li>


<li>
	<a onclick="pagation(0)">上一页</a> | <a onclick="pagation(2)">下一页</a>
</li>

                </ul>
            </div>
	        <div id="lastest" class="content" style="display: none;">
		        <div class="title">
			        市场动态
		        </div>
		        <ul class="newsList">
			        
	<li>
		<a href="http://www.ying158.com/news/35cdf9bc-76d9-4cfc-8647-7568a3e5e515" target="_blank">私募巨头贝莱德掌门人：负利率或导致“危险”后果</a><span class="time">2016-04-15</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/2584681c-5077-4fa1-b41c-9dfbe843f6fd" target="_blank">美联储告诉全世界：紧盯中国！</a><span class="time">2015-09-21</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/532d1896-aceb-4184-9a31-d485ffe519a6" target="_blank">央行马骏：中国经济前景将明显好于那些悲观的市场预</a><span class="time">2015-09-17</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/5c61a9ad-24b9-458b-92b1-71cd3114269f" target="_blank">股权众筹第一案判决 平台人人投胜出</a><span class="time">2015-09-17</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/402f48d8-5aff-4833-a023-bd5288adf1bb" target="_blank">海通证券姜超：三理由告诉你不要那么悲观 市场已经不算贵</a><span class="time">2015-09-16</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/ddbdbc69-de21-4951-a07d-43d6dbe836a8" target="_blank">告别“钱荒” 步入“资产配置荒”时代</a><span class="time">2015-09-15</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/0b5d5cf0-ffd9-42a8-a167-d1571ddbf577" target="_blank">美元，别人的货币，我们的问题</a><span class="time">2015-09-15</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/3634906c-e0c6-4363-809c-c7bee7bd04f8" target="_blank">经济下行压力明显增大 继高盛之后中金下调中国GDP预期</a><span class="time">2015-09-15</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/72ca7cee-ae96-45e0-8ffd-b4c540c5d173" target="_blank">你真的理解什么是O2O吗？它的三大特点和两大难题</a><span class="time">2015-09-14</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/92090fd6-c3d3-4338-8bf1-64c56328dffb" target="_blank">李曙军欲开“一人公募” 首现自然人公募基金</a><span class="time">2015-09-14</span>
	</li>


<li>
	<a onclick="pagation(0)">上一页</a> | <a onclick="pagation(2)">下一页</a>
</li>

		        </ul>
	        </div>
			<div id="topNews" class="content" style="display: none;">
				<div class="title">
					新闻头条
				</div>
				<ul class="newsList">
					
	<li>
		<a href="http://www.ying158.com/news/d8dfb77a-0de1-451e-8480-9ec6ab84f0a9" target="_blank">【投资策略】一文看懂量化对冲</a><span class="time">2016-04-15</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/c91088fc-0a15-4f82-a09d-8990fd43aec0" target="_blank">十年后的中国远超你想象（深度！）</a><span class="time">2016-02-02</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/265cbb92-479a-4748-b0e3-953f11a99044" target="_blank">唐彬：互联网金融的哲学思考</a><span class="time">2016-02-02</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/df020c67-be05-43ba-afa9-de8687b5345d" target="_blank">哈佛76年研究结果：只要遇到真爱，人生繁盛的几率就会显著提升</a><span class="time">2016-02-02</span>
	</li>
	<li>
		<a href="http://www.ying158.com/news/0e3982a3-adff-4aaa-a98e-2ad3e64969b8" target="_blank">私人财富重配 波澜壮阔的大牛市或在路上</a><span class="time">2016-02-02</span>
	</li>

	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>

<li>
	<a onclick="pagation(0)">上一页</a> | <a onclick="pagation(2)">下一页</a>
</li>

				</ul>
			</div>
			<div id="zuixins" class="content" style="display: none;">
				<div class="title">
					最新动态
				</div>
				<ul class="newsList">
					

	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>

<li>
	<a onclick="pagation(0)">上一页</a> | <a onclick="pagation(2)">下一页</a>
</li>

				</ul>
			</div>
        </div>
    </div>
</div>
<!---------------------到这结束------------------------->
<div class="g-ft">
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
	<script src="/p2p_project/frontStyle/js/hm.js"></script>
	<script src="/p2p_project/frontStyle/fontes/jquery"></script>
	<script src="/p2p_project/frontStyle/fontes/bootstrap"></script>
<script>
    var cid = "B8C8DD38-0805-4EF4-BFF6-17B835FCA8AA";
    var container = "#reports";

    $(document).ready(function () {
        var url = window.location.href.toLowerCase();
        if (url.indexOf("strategy") >= 0) {
          
            $("#strategyTab").click();
        } else if (url.indexOf("reports") >= 0) {
         
            $("#reportsTab").click();
        } else if (url.indexOf("lastest") >= 0) {
        
            $("#lastestTab").click();
        }
        else if (url.indexOf("zuixin") >= 0) {

        	$("#zuixinsTab").click();
        }
        else if (url.indexOf("topNews") >= 0) {

        	$("#topNewsTab").click();
        }
    });

    function pagation(pageIndex) {
        $.get("/allnews/" + cid + "/10/" + pageIndex, function (rel) {
            $(container).find("ul.newsList").html(rel);
        });
    }


    $(".helpCenter .left").on("click", ".item", function () {

        var className = $(this).attr("class");
        if (className.indexOf("active") >= 0) {
            return;
        } else {
            var idName = $(this).attr("name");
            $(".helpCenter .left .item").removeClass("active");
            $(this).addClass("active");
            $(".content").hide();
            var height = "";
            switch (idName) {
                case "strategy":
                    $("#strategy").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#strategy";
                    height = $("#strategy").css("height");
                    break;
                case "reports":
                    $("#reports").show();
                    cid = "B8C8DD38-0805-4EF4-BFF6-17B835FCA8AA";
                    container = "#reports";
                    height = $("#reports").css("height");
                    break;
                case "lastest":
                    $("#lastest").show();
                    cid = "DEF1B712-29AE-42E5-9A35-A5D163D6F384";
                    container = "#lastest";
                    height = $("#lastest").css("height");
                    break;
            	case "topNews":
            		$("#topNews").show();
            		cid = "C121BC77-2E19-4419-8B47-F4D568A3B34C";
            		container = "#topNews";
            		height = $("#topNews").css("height");
            		break;
            	case "zuixins":
            		$("#zuixins").show();
            		cid = "EE2E7057-881C-46B5-92AC-E9CE5D2E0FF8";
            		container = "#zuixins";
            		height = $("#zuixins").css("height");
            		break;
                default:
                    break;
            }

            height = height.split("px")[0];
            var blankHeight = (height - 120) + "px";
            $(".blank").css("height", blankHeight);

        }
    });
    
</script>
    <style type="text/css">
        .hzhb_box {float:left;  width:610px; margin-top:32px;}
        .hzhb_item {float:left;margin:5px;  border: solid 1px #aaa;border-radius:3px;}
        .hzhb_item img { width:120px; height:40px;}
        .ft_item{ float: left; width: 239px; }
        .ft_item_tit{ height: 28px; line-height: 28px; font-size: 20px; color: #ccc;padding-left:40px;}
        .ft_links_list{ margin-top: 10px;}
        .ft_links_list .ft_link{ height: 30px; line-height: 30px;}
        .ft_item_sns{ float:right;width: 340px;}
        .ft_sns_list{ margin-left:40px;}
        .ft_sns_list li{ float: left; width: 74px; margin: 5px;}
        .ft_sns_list a{ display: block; width: 74px;}
        .ft_sns_list .txt{ display: block; line-height: 32px; text-align: center; color:#ccc;}
        .ft_sns_list .ico_sns{ display: block; width: 62px; height: 62px; margin: 0 auto; background: url(/images/ft_sns.png) no-repeat;}
        .ft_sns_list .ico_weixin{ background-position: 0 0;}
        .ft_sns_list .ico_sinawb{ background-position: -63px 0;}
        .ft_sns_list .ico_txwb{ background-position: -126px 0;}
        .ft_sns_list a:hover .ico_sinawb{ background-position: -63px -63px;}
        .ft_sns_list a:hover .ico_txwb{ background-position: -126px -63px;}
        .ft_sns_list a:hover .txt{color:#3D9FE1}
        .ft_sns_list .wx_tips{ cursor: pointer; position: relative;}
        .ft_sns_list .wx_tips .tips_hd{}
        .ft_sns_list .wx_tips .tips_bd{ display: none; position: absolute; left: 90px; top: -10px;}
        .ft_sns_list .wx_tips .tips_bd .arrow{ width: 0; height: 0; overflow: hidden; border-color:transparent #fff transparent transparent;border-width:8px 8px 8px 8px;border-style:dashed solid dashed none; position: absolute; top: : -8px;}
        .ft_sns_list .wx_tips .tips_bd img{ width: 180px; height: 180px;}
        .ft_sns_list .wx_tips .tips_bd .txt{ font-size: 14px; line-height: 32px;  color: #3D9FE1;}
        .ft_sns_list .wx_tips:hover .ico_weixin{ background-position: 0 -63px;}
        .ft_sns_list .wx_tips:hover .txt{ color: #3D9FE1;}
        .ft_sns_list .wx_tips:hover .tips_bd{ display: block;}
    </style>
</body>
</html>