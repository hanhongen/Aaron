<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>固收类</title>


<link href="/resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">

<link href="/p2p_project/frontStyle/css/iconfont1.css" rel="stylesheet" type="text/css" />
<link href="/p2p_project/frontStyle/css/common.css" rel="stylesheet">
<link href="/p2p_project/frontStyle/css/jw.css" rel="stylesheet">



<link href="/p2p_project/frontStyle/css/style.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="/p2p_project/frontStyle/css/font-style.css">
<script type="text/javascript"
	src="/p2p_project/frontStyle/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/all.js"></script>


<script type="text/javascript" src="/p2p_project/frontStyle/js/layer.js"></script>
<script src="/p2p_project/frontStyle/js/echarts.js"></script>


</head>
<body>
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
						rel="nofollow" class="fff">注册</a>
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
								<a href="/p2p_project/frontJsp/product_center.jsp">固收类理财</a>
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
					<li class="rela"><a href="" class="one">盈+商学院</a>
					</li>
					<li class="rela"><a href="" class="one">我的加法库</a>
					</li>
					<li class="rela"><a href="/p2p_project/frontJsp/about.jsp"
						 class="one">关于我们 </a></li>
				</ul>
			</div>
		</div>
	</div>




<form id="form1" method="post">
<div class="proMain">
    	<div class="hwpzNav">
    		<ul>
    			<li class="first"><a class="active" href="/subject">固收类理财</a></li>
    			<li class="second"><a href="/finance">私募基金</a></li>
    			<li class="three"><a href="/oversea">海外配置</a></li>
    			<li class="four"><a href="/finance">股权基金</a></li>
    		</ul>
    	</div>
        <div class="sdShaix">
        	<ul>
            	<li class="first">标的类型：</li>
               		<li><a href="/subject?cid=11&type=11&yearRate=21&period=31&status=41" id="11">全部</a></li>
               		<li><a href="/subject?cid=12&type=11&yearRate=21&period=31&status=41" id="12">固收类理财</a></li>
               		<li><a href="/subject?cid=13&type=11&yearRate=21&period=31&status=41" id="13">车盈宝</a></li>
            </ul>
        	<ul>
            	<li class="first">年化收益：</li>
               		<li><a href="/subject?cid=21&type=11&yearRate=21&period=31&status=41" id="21">全部</a></li>
               		<li><a href="/subject?cid=22&type=11&yearRate=21&period=31&status=41" id="22">6.0%</a></li>
               		<li><a href="/subject?cid=23&type=11&yearRate=21&period=31&status=41" id="23">7.0%</a></li>
               		<li><a href="/subject?cid=24&type=11&yearRate=21&period=31&status=41" id="24">7.5%</a></li>
               		<li><a href="/subject?cid=25&type=11&yearRate=21&period=31&status=41" id="25">8.0%</a></li>
               		<li><a href="/subject?cid=25&type=11&yearRate=21&period=31&status=41" id="25">8.0%以上</a></li>
            </ul>
        	<ul>
            	<li class="first">项目期限：</li>
               		<li><a href="/subject?cid=31&type=11&yearRate=21&period=31&status=41" id="31">全部</a></li>
               		<li><a href="/subject?cid=32&type=11&yearRate=21&period=31&status=41" id="32">15天以下</a></li>
               		<li><a href="/subject?cid=33&type=11&yearRate=21&period=31&status=41" id="33">15-30天</a></li>
               		<li><a href="/subject?cid=34&type=11&yearRate=21&period=31&status=41" id="34">30-180天</a></li>
               		<li><a href="/subject?cid=35&type=11&yearRate=21&period=31&status=41" id="35">180-365天</a></li>
               		<li><a href="/subject?cid=36&type=11&yearRate=21&period=31&status=41" id="36">一年以上</a></li>
            </ul>
        	<ul>
            	<li class="first">标的状态：</li>
               		<li><a href="/subject?cid=41&type=11&yearRate=21&period=31&status=41" id="41">全部</a></li>
               		<li><a href="/subject?cid=42&type=11&yearRate=21&period=31&status=41" id="42">投标中</a></li>
               		<li><a href="/subject?cid=43&type=11&yearRate=21&period=31&status=41" id="43">还款中</a></li>
               		<li><a href="/subject?cid=44&type=11&yearRate=21&period=31&status=41" id="44">已完成</a></li>
            </ul>
        </div>


<div class="ajaxContainer">
	<!-- 异步内容开始 -->
	
	<c:forEach items="${list}" var="li">
					<ul class="tbList">
						<li class="first">
									<span class="ico zq"></span>
							<h2><em>投</em>${li.name }</h2>
							<i></i>
						</li>
						<li class="second">					
							
							<div class="txt1">
								<h2>${li.year_rate }<span style="font-size:18px;">+1.0%</span></h2>
								<p>年化收益</p>
							</div>
							
							<div class="txt2">
								<h2>￥${li.floor_amount }</h2>
								<p>起购金额(元)</p>
							</div>
							
							<div class="txt2">
								<h2>${li.period }天</h2>
								<p>投资期限</p>
							</div>
						</li>
						<li class="three">
								<a href="#1">企业担保</a><span>中国人保财险承保</span>
								<p>计息日期：当天投资，立即计息</p>
						</li>
						<li class="four">
								
						</li>
						<li class="five"> 
							<button type="submit" class="abtn" onclick="action='/p2p_project/toInvestment/buySubject/${li.id}'">购买</button>
						</li>
					</ul>
					
				</c:forEach>	
				
<!--   分割线----------------------------------------------------- -->
				
	
	
	<div class="llpage">
		<div class="in">
			
				<a class="prev_page">上页</a>
			
			
					<a class="now" >1</a>
			
			
				<a class="next_page" rel="next">下页</a>
		</div>
	</div>
</div>
<script type="text/javascript">
	function getJsonInfo(url) {
		$.get(url, 'json', function(data) {
			$(".ajaxContainer").empty();
			$(".ajaxContainer").append(data);
		});
	}
		require.config({
            paths: {
                echarts: '/resources/web/echart/dist/'
            }
        });
		require(
			[
				'echarts',
				'echarts/chart/pie'
			],
			function (ec) {
				var labelTop = {
						normal : {
							color:'#ff503f',
							label : {
								show : false,
								position : 'center',
								formatter : '{b}',
								textStyle: {
									baseline : 'bottom'
								}
							},
							labelLine : {
								show : false
							}
						}
					};
				var labelFromatter = {
					normal : {
						label : {
							formatter : function (params){
								return 100 - params.value + '%'
							},
							textStyle: {
								color:'#666',
								baseline : 'middle'
							}
						}
					},
				};
				var labelBottom = {
					normal : {
						color: '#f8f8f8',
						label : {
							show : true,
							position : 'center'
						},
						labelLine : {
							show : false
						}
					}
				};
				var radius = [30,35];
				var myChart1 =document.getElementsByClassName('yuan');
				for(i=0;i<myChart1.length;i++){
					var num = myChart1[i].getAttribute('data-num');
					ec.init(myChart1[i]).setOption({
						series : [
							{
								type : 'pie',
								center : ['50%', '50%'],
								radius : radius,
								x: '0%', // for funnel
								itemStyle : labelFromatter,
								data : [
									{name:'other', value:100-num, itemStyle : labelBottom},
									{name:'占比', value:num,itemStyle : labelTop}
								]
							},
						]
					});
				}
			}
		);
    </script>   
     </div>
     </form>
    
    <div class="security">
        <div class="item">
            <img src="/p2p_project/frontStyle/images/indexSecurity1.png">
            <div class="detail">
                资金银行监管
                <div class="desc">
                    平台资金由第三方银行监管
                </div>
            </div>
        </div>
        <div class="item">
            <img src="/p2p_project/frontStyle/images/indexSecurity2.png">
            <div class="detail">
                交易证监会监管
                <div class="desc">
                    投资交易由证监会监管
                </div>
            </div>
        </div>
        <div class="item">
            <img src="/p2p_project/frontStyle/images/indexSecurity3.png">
            <div class="detail">
                风控盈+监管
                <div class="desc">
                    盈+全自动风控系统为您保驾护航
                </div>
            </div>
        </div>
    </div>
	<div class="foot">
		<div class="container">
            <div class="row">
                <div class="hzhb_box">
                    <div class="title" style=" padding-left:10px; font-weight:normal; font-size:20px; color:#ccc;">
                        主要合作机构
                    </div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.picc.com/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/1_on.png'" onmouseout="this.src = '/p2p_project/frontStyle/images/1.jpg'" src="/p2p_project/frontStyle/images/1.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.fuioupay.com/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/2_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/2.jpg'" src="/p2p_project/frontStyle/images/2.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.nanhua.net/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/3_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/3.jpg'" src="/p2p_project/frontStyle/images/3.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.zttrust.com.cn/stations/526623d20a/index.php/5268e6b50a"><img onmouseover="this.src = '/p2p_project/frontStyle/images/4_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/4.jpg'" src="/p2p_project/frontStyle/images/4.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://sc.hkex.com.hk/TuniS/www.hkex.com.hk/eng/index.htm/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/5_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/5.jpg'" src="/p2p_project/frontStyle/images/5.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.cmegroup.com/cn-s/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/6_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/6.jpg'" src="/p2p_project/frontStyle/images/6.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.sgx.com/wps/portal/sgxweb_ch/home/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOKNHB1NPAycDSz9wwzMDTxD_Z2Cg8PCDANdjYEKIoEKDHAARwNC-sP1o8BK8JhQkBthkO6oqAgAzDYPQQ!!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/7_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/hzhb/7.jpg'" src="/p2p_project/frontStyle/images/7.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.neeq.com.cn/index/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/8_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/8.jpg'" src="/p2p_project/frontStyle/images/8.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.cmbchina.com/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/9_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/9.jpg'" src="/p2p_project/frontStyle/images/9.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.bankcomm.com/BankCommSite/default.shtml"><img onmouseover="this.src = '/p2p_project/frontStyle/images/10_on.png'" onmouseout="this.src = '/p2p_project/frontStyle/images/10.jpg'" src="/p2p_project/frontStyle/images/10.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.ccb.com/cn/home/index.html"><img onmouseover="this.src = '/p2p_project/frontStyle/images/11_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/11.jpg'" src="/p2p_project/frontStyle/images/11.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="http://www.icbc.com.cn/icbc/"><img onmouseover="this.src = '/p2p_project/frontStyle/images/12_on.png'" onmouseout="    this.src = '/p2p_project/frontStyle/images/12.jpg'" src="/p2p_project/frontStyle/images/12.jpg" /></a></div>
                </div>

                <div class="ft_item ft_item_sns">
                    <div class="ft_item_tit">关注我们</div>
                    <ul style=" margin-bottom:0px;" class="ft_sns_list clearfix">
                        <li>
                            <div class="wx_tips j_tips">
                                <div class="tips_hd">
                                    <em class="ico_sns ico_weixin"></em>
                                    <span class="txt">微信公众号</span>
                                </div>
                                <div class="tips_bd">
                                    <em class="arrow"></em>
                                    <img src="/resources/web/images/yj.jpg" alt="微信公共平台">
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="" target="_blank" rel="nofollow">
                                <em class="ico_sns ico_sinawb"></em>
                                <span class="txt">新浪微博</span>
                            </a>
                        </li>
                        <li>
                            <a href="" target="_blank" rel="nofollow">
                                <em class="ico_sns ico_txwb"></em>
                                <span class="txt">腾讯微博</span>
                            </a>
                        </li>
                    </ul>

                    <div class="contactUs">
                       <div class="title" style=" padding-left:10px; font-weight:normal; font-size:20px; color:#ccc;">
                          联系我们
                        </div>
                        <div class="contactInfo" style="padding-left:30px;">
                            <a style="display:inline-block; height:50px; width:50px; text-align:center; " target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=508886246&amp;site=qq&amp;menu=yes"><img src="/resources/web/images/qqIcon.png" onmouseover="$(this).css('height', '52px');" onmouseout="    $(this).css('height', '48px');" /></a>
                            <span class="kefu">在线客服</span><span class="time">08:30 - 21:00</span>
                        </div>
                    </div>

                </div>

			</div>
		</div>
	</div>
	<div class="foot3">
		<div class="container">
			<div class="row">
				Copyright © 2010 - 2015 www.ying158.com All Rights Reserverd 杭州吉威投资管理有限公司 版权所有<br>
				浙ICP备14030807号-3 杭州市江干区钱江新城迪凯银座19F 4000-999-158
			</div>
		</div>
	</div>
    
   
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?06cf97732baac1a65bed8ae95f2384aa";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script><script type="text/javascript">
$(function(){
	$('#11').addClass("select");
	$('#21').addClass("select");
	$('#31').addClass("select");
	$('#41').addClass("select");
});
</script>


</body>
</html>