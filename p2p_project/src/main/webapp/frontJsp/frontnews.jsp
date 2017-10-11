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

				<c:if test="${empty user}">
				  <div class='login_bt'>
					<a href="/p2p_project/frontJsp/login.jsp" id="login" rel="nofollow"
						class="fff">登录</a> <a href="/p2p_project/frontJsp/register.jsp"
						rel="nofollow" class="fff">注册</a>
				</div>
				</c:if>
				<c:if test="${!empty user}">
				<div class='login_bt'>
				  <font color="white">欢迎您：${user.user_name }&nbsp;|</font>
				  <a href="/p2p_project/user/outlogin"><font color="white">注销</font></a>
				  <a href="/p2p_project/user/feedBacks/${user.id}"><font color="white">意见反馈</font></a>
				</div>
				</c:if>
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
				<c:if test="${user.id==1}">
				   <a href="/p2p_project/user/indexback/${user.id}" target="_blank" rel="nofollow" class="fc_white">进入后台</a>
				</c:if>
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
					<li><a rel="nofollow" href="/p2p_project/user/index" class="one">首页</a></li>

					
					<li style="display: none;"><a href="" ></a></li>
					<li class="rela"><a href="/p2p_project/toInvestment/showSubject" class="one">我要投资</a>
					</li>
					
					<li class="rela"><a href="/p2p_project/frontJsp/frontnews.jsp" class="one">盈+商学院</a></li>
					
					<c:if test="${!empty user.id}">
					<li class="rela"><a href="/p2p_project/subject_purchase_record/listSubject_purchase_records/${user.id}/${user.user_name }" class="one">我的加法库</a></li>
					</c:if>
					<c:if test="${empty user.id}">
					<li class="rela"><a href="/p2p_project/frontJsp/login.jsp" class="one">我的加法库</a></li>
					</c:if>
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
            <div class="item first active" name="topNews" id="topNewsTab">
     理财大讲堂
            </div>
            <div class="item" name="lastest" id="lastestTab">
            常见问题
            </div>
	        <div class="item" name="strategy" id="strategyTab">
帮助中心
	        </div>
			
            <div class="item" name="reports" id="reportsTab">
        操作指引  
            </div>
            <div class="blank" style="height:532px;">

            </div>
        
        </div>  
            <div class="right">
            
            <div id="strategy" class="content" style="display: none;">
                <div class="title">
                   帮助中心
                </div>
            <div class="main">
                    <div class="point first">
                        官网操作对于浏览器有什么要求吗？
                    </div>
                    <div class="desc">
                        建议使用IE、360浏览器、Chrome浏览器等主流浏览器登录。<br /><br />
                    </div>

                    <div class="point">
                        平台是正规的吗？
                    </div>
                    <div class="desc">
                        放心，平台是合法合规的，具体包括以下6点：<br /><br />
                        1）资金流向保障<br /><br />
                        为最大程度的保障投资人资金安全，特与多家知名第三方支付平台合作，为您的资金保驾护航；<br /><br />
                        2）不自保自融<br /><br />
                        所有的项目均有实际借款企业需求，引入第三方承保机构；<br /><br />
                        3）利率市场化<br /><br />
                        不盲目追求高利率，平台还可持续发展道路；<br /><br />
                        4）维护反洗钱法规<br /><br />
                        投资人、融资人均需通过实名认证、投资人身份证、银行卡信息必须一致，融资人重要信息充分披露，资金账户流水清晰可寻；<br /><br />
                        5）充分信息披露<br /><br />
                        融资信息披露详尽，风险揭示充分，投资人在投资前就能对项目有详尽的了解，资金流转信息透明；<br /><br />
                        6）获得相关权威认证与认可<br /><br />
                        平台获得权威认证和政府的认可。<br /><br />
                    </div>

                    <div class="point">
                        忘记注册手机号怎么办？
                    </div>
                    <div class="desc">
                        您可以联系客服人员，提供身份证号为您进行查询。如未查询到，则表示该身份证号码未在平台上实名。请您用目前的手机号码进行注册，如提示已注册，请直接登录或点击忘记密码找回密码后登录。 <br />
                    </div>
              
            </div>
            </div>
	        <div id="lastest" class="content" style="display: none;">
		        <div class="title">
			       常见问题
		        </div>
		    <div class="main">
	<div class="first point">
                        什么是固定收益类理财产品?
                    </div>
                    <div class="desc">
                        固定收益类理财产品，是指收益率和期限固定的产品。其特点是：收益固定、投资期限明确(一般为1年到2年)，通常都通过资产抵押、担保公司等来保证资金安全性，安全系数较高。
                    </div>

                    <div class="point">
                        如何选择固定收益类理财产品?
                    </div>
                    <div class="desc">
                        固定收益类理财产品因其独特的优势，现今比较抢手，可以四步来选择固定收益类理财产品：第一步，选择信誉良好的理财机构发行的产品，相对来说这些机构风控措施应该不错。第二步，优选自己熟悉的投资领域的固定收益类品种，比如投资标的为房地产;最后，结合自身理财需求和自身风险承受能力来选择适合自己的固定收益类理财产品。
                    </div>

                    <div class="point">
                        保本型理财产品与固定收益产品有什么区别?
                    </div>
                    <div class="desc">
                        保本型理财产品，并不是说全保本，购买时除了关注产品的安全性、收益性，还要注意有些产品对本金的保证条件。比如有些产品只保证90%的本金;有些产品对本金的保证设有“保本期限”，比如在1年内本金能100%保证。倘若提前赎回，本金可能会受到损失。
                    </div>
	
		        </div>
	        </div>
			<div id="topNews" class="content" style="display: none;">
				<div class="title">
					理财大讲堂
				</div>
			<div class="main">
					  <div class="first point">
                        什么是投资理财?
                    </div>
                    <div class="desc">

                        理财是理一生的财，不是解决燃眉之急的金钱问题而已。而是一个可持续循环的过程。
                        理财是现金流量管理，每一个人一出生就需要用钱（现金流出）、也需要赚钱来产生现金流入。因此不管是否有钱，每一个人都需要理财。
                        理财也涵盖了风险管理。因为未来的更多流量具有不确定性，包括人身风险、财产风险与市场风险，都会影响到现金流入（收入中断风险）或现金流出（费用递增风险）。<br />
                    </div>
                       
                            <div class="point">
                                如何投资理财?
                            </div>
                            <div class="desc">
                                
                                投资其实就是一种形式而已，但是随着人类社会不断的进步，社会发展中越来越多的人开始关注投资，而且投资知识也有人想了解。
                                投资理财现在慢慢的在走进我们的生活，我们可以享受亲民化的理财产品，来给我们的财富做合理的资产配资，现在一些社区金融的理财产品还是很适合我们进行投资理财的。
                                风险投资有很多的要素，比如有风险资本、投资人、投资对象、投资期限、投资目的和投资方式。投资者将对资本的投向及领域需要有个全面的了解，一些的投资领域也是蕴含着重大的失败的风险的，所以就叫做风险投资，从这个投资行为来说专业化的投资，一般都能找到具有潜能的企业。
                                风险投资同业也成为了很多的新兴企业的福星，对于一些高科技的创新企业来说是一笔非常宝贵的资源，高科技的创新需要的就是资金方面的支持，保证让其商品化，产业化，从而到达了一定的受益。风险企业投入的权益一般会占企业的三成以上，双方也都是互惠互利的。投资怎样获得回报，通过上市、转让股权的方式来实现增值。<br />
                            </div>
                            <div class="point">

                                投资理财一般步骤
                            </div>
                            <div class="desc">
                                首先：专业理财分析师都是有很好的心态的，你看看金融市场中是不是很喧闹呢?但是分析师照样可以安静的一个人在那里分析市场，所以不会受到其他人的干扰，所以要想做一个技术高超的理财分析师，我们就要学会控制好自己的心态，以后在做单的时候遇到大风大浪是不会有很多的心理变化的。
                                其次：精准的分析来源于我们的收集和判断，一个行情能不能做进去，我们之前就要进行分析，那么怎么分析呢?分析师都会按照消息面的数据进行查询，可以查询之前的数据和预估数值进行对比，另外需要在市场中找出一些重要人物对相关的消息所抛出的言论，综合分析后就会有一个比较明朗的界限。
                                再者：做单干净利索，一个单子分析好了后，也看到点位到了相应的点数了，这个时候我们的投资分析师就会毫不犹豫的进场，根据不同的点位进行相应的参数设置，那么投资理财分析师是不会有很大的顾忌做单的，不会和其他投资者一样，进去会不会有亏损的担忧。单子只要坐进去到了相应的点位也不会留恋就直接出仓。<br />
                            </div>
                            <div class="point">
                                财富的4321定律
                            </div>
                            <div class="desc">
                                财富的4321定律：即财产的合理配置的比例是，家庭总收入的五分之二用于房贷等长期固定资产的投资；30%用于家庭日常生活开支；五分之一用于灵活的银行存款以备应急之需；剩下的少部分用于保险保障或者风险系数与收益系数都比较高的股票、期货投资。
                            </div>
                            
                            <div class="point">
                                财富的 72定律
                            </div>
                            <div class="desc">
                                财富的 72定律：投资理财所获得的收益，一般不取出，而继续投入理财本金，实现利滚利的高收益财，本金增值一倍所需要的时间等于72除以年收益率。假如在银行存款1万元，年利率是2%，那末经过多少年才能增值为2万元？只要用72除以2得36，便可=大概知道银行存款需36年才能翻番。
                            </div>
                            <div class="desc">
                                投资的关键之处，对个人及家庭亲人身体健康的投资：即使你所投资的项目有100%的收益每一年，但却健康情况很差，那投资赚再多的财富又有什么用呢。对身体健康的投资保持有健康的身体是人生的根基，而健康是生命的基本保证和追求人生理想的前提条件，是最大的财富。有健康，才有生命的保证，才能实现财富的意义。
                            </div>


                         
                            <div class="desc">
                                投资切忌鼠目寸光，而要有高远的战略眼光：短线投资目光不能短视，长线投资也要有辩证的发展眼光，今天的朝阳产业也许明天会变为夕阳产业。选择好的投资，小钱会生大钱。反之，则可能会像"肉包子打狗，有去无回"。金钱在于运动：金钱的本质在于流动，钱是不能休眠的。当今经济社会发展日新月异，资金只能在投资流通中才能不断实现保值和增值。投资失误是损失，资金停滞不动也是损失。

                            </div>
                    <div class="desc">
                        投资组合考虑的时候，应考虑到家庭资产的情况，风险程度，时间投资期限，变现能力，投资灵活性，都要进行综合考虑，保证在家庭有紧迫需求时能马上变换出需要的资金。风险忍受度原则即"生活风险忍受度"，保障本金是投资理财的重中之重，一切投资都需要遵守此规则。

                    </div>
                    <div class="desc">
                        理财的前提必须是要有人一定的财可理，而且应该有定期的稳定收入源，不然，无基本之财怎么理。接着，建立一个家庭资产情况一览表，你需要随时清楚地掌握了解家庭的财产数额和资产性质，同时也要了解相应的财产法规。其次，理财需要多元化理财，理财所用的资本要多元化投资，切不可将许多鸡蛋放在一个篮子里，分散风险，扩宽理财渠道，增加收益。然后，投资理财的周期长短相结合，合理安排，做到流动性好，防止关键时期有钱而不能使用。最后，很重要的是，理财不过是为是财富的增值或者保值，有钱的最终目的是让生活过得更加幸福美满，衣食无忧，财富在适当时期应该制定适当的方案用于消费。如果只为理财而理财，那就不没有了实际的意义。

                    </div>
					
				</div>
			</div>
			<div id="reports" class="content" style="display: none;">
				<div class="title">
					操作中心
				</div>
				<div class="main">
					<div class="desc">
                    <div class="desc">
                        如果您对盈+理财网站操作流程不太熟悉，
                        请参考为您制作的网站操作流程指引：
                        <button class="btn" onclick="window.location.href='/p2p_project/frontJsp/login.jsp'">我来给您带路！</button>
                       
                    </div>
                </div>
					
				</div>
			</div>
       
       
       
       </div>
       <div>
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