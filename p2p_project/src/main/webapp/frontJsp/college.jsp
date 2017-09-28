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
          <div class="item" name="strategy" id="strategyTab">  
   标题
            </div>
            <div class="item" name="lastest" id="lastestTab">
     副标题
            </div>
	        <div class="item" name="reports" id="reportsTab">
   所属类别
	        </div>
			
 <div class="item" name="link" id="linkTab">
 链接地址
	        </div>
	        	
	        <div class="item" name="author" id="authorTab">
 作者
	        </div>	
	        
	        <div class="item" name="source" id="sourceTab">
 来源
	        </div>
	        	
	        <div class="item" name="label" id="labelTab">
 标签
	        </div>	
	        <div class="item" name="clicknumber" id="clicknumberTab">
 点击数量
	        </div>	
	        
	        <div class="item" name="info" id="infoTab">
 简介
	        </div>	
	        <div class="item" name="filelink" id="filelinkTab">
 附件地址
	        </div>	
	        <div class="item" name="seotitle" id="seotitleTab">
 页面seo标题
	        </div>
	        <div class="item" name="seokey" id="seokeyTab">
seo关键字
	        </div>
	        <div class="item" name="seodes" id="seodesTab">
 seo描述
	        </div>

	        <div class="item" name="text" id="textTab">
内容
	        </div>	
            <div class="blank" style="height:532px;">

            </div>
        </div>
        <div class="right">
             <div id="lastest" class="content" style="display: none;">
                <div class="title">
                  副标题
                </div>
               <div class="main">
<div class="desc">
${news.subtitle}
                    </div>
                        </div>
                        </div>
            
     <div id="reports" class="content" style="display: none;">
                <div class="title">
                  所属类别
                </div>
               <div class="main">
<div class="desc">
${news.news_type.name}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
      <div id="link" class="content" style="display: none;">
                <div class="title">
               链接地址
                </div>
               <div class="main">
<div class="desc">
${news.link}
                      <br/>
                    </div>
                        </div>
                        </div>          
            
            
     <div id="author" class="content" style="display: none;">
                <div class="title">
                  作者
                </div>
               <div class="main">
<div class="desc">
${news.author}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
     <div id="source" class="content" style="display: none;">
                <div class="title">
                 来源
                </div>
               <div class="main">
<div class="desc">
${news.source}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
    <div id="label" class="content" style="display: none;">
                <div class="title">
                  标签
                </div>
               <div class="main">
<div class="desc">
${news.label}
                      <br/>
                    </div>
                        </div>
                        </div>            
            
     <div id="clicknumber" class="content" style="display: none;">
                <div class="title">
                  点击数量
                </div>
               <div class="main">
<div class="desc">
${news.clicknumber}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
    <div id="info" class="content" style="display: none;">
                <div class="title">
                简介
                </div>
               <div class="main">
<div class="desc">
${news.info}
                      <br/>
                    </div>
                        </div>
                        </div>            
            
     <div id="filelink" class="content" style="display: none;">
                <div class="title">
                 附件地址
                </div>
               <div class="main">
<div class="desc">
${news.filelink}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
     <div id="seotitle" class="content" style="display: none;">
                <div class="title">
            页面seo标题
                </div>
               <div class="main">
<div class="desc">
${news.seotitle}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
     <div id="seokey" class="content" style="display: none;">
                <div class="title">
                  seo关键字
                </div>
               <div class="main">
<div class="desc">
${news.seokey}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
            
     <div id="seodes" class="content" style="display: none;">
                <div class="title">
                  seo描述
                </div>
               <div class="main">
<div class="desc">
${news.seodes}
                      <br/>
                    </div>
                        </div>
                        </div>           
            
    <div id="text" class="content" style="display: none;">
                <div class="title">
                  内容
                </div>
               <div class="main">
<div class="desc">
${news.text}
                      <br/>
                    </div>
                        </div>
                        </div>            


            <div id="strategy" class="content" style="display: none;">
                <div class="title">
                   标题
                </div>
               <div class="main">
<div class="desc">
${news.title}
                      <br/>
                    </div>
                        </div>
                        </div>


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
                case "link":
                    $("#link").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#link";
                    height = $("#link").css("height");
                    break;
                case "author":
                    $("#author").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#author";
                    height = $("#author").css("height");
                    break;
                case "source":
                    $("#source").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#source";
                    height = $("#source").css("height");
                    break;
                case "label":
                    $("#label").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#label";
                    height = $("#label").css("height");
                    break;
                case "clicknumber":
                    $("#clicknumber").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#clicknumber";
                    height = $("#clicknumber").css("height");
                    break;
                case "info":
                    $("#info").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#info";
                    height = $("#info").css("height");
                    break;
                case "filelink":
                    $("#filelink").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#filelink";
                    height = $("#filelink").css("height");
                    break;
                case "seotitle":
                    $("#seotitle").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#seotitle";
                    height = $("#seotitle").css("height");
                    break;
                case "seokey":
                    $("#seokey").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#seokey";
                    height = $("#seokey").css("height");
                    break;
                case "seodes":
                    $("#seodes").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#seodes";
                    height = $("#seodes").css("height");
                    break;
                case "text":
                    $("#text").show();
                    cid = "60573482-BDDC-445B-8557-3EF264552977";
                    container = "#text";
                    height = $("#text").css("height");
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