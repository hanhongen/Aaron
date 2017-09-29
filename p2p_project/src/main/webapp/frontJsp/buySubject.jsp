<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
	<!-- ---------------------------------------------  -->
	
	<div class="proMain">
    <div class="conTit">
        <span><a style="color:#9d8440;" href="/p2p_project/toInvestment/showSubject">其他标的</a></span>
        <h2><em>￥</em>${sb.name}</h2>
    </div>
    <table class="conTable" width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="txtInfo">
                <div class="txt1">
                    <h2>${count}</h2>
                    <p>已购人数(人)</p>
                </div>
                <div class="txt2">
                    <h2>${sb.year_rate}%</h2>
                    <p>年化收益</p>
                </div>
                <div class="txt1">
                    <h2>${sb.period}</h2>
                    <p>投资期限(天)</p>
                </div>
            </td>
            <td width="360" rowspan="2" align="center" ; valign="middle" height="320">
                <div class="tbBox">
                    <input type="hidden" id="account" value="">
                    <h2>${sum}</h2>
                    <p>已投金额(元)</p>
                    <div class="li4" style=""><span id="checkmoney" style="color: red;"></span></div>
                    <div class="tit">
                    	<span class="fr">
                            <a style="color:#2695d5" href="/p2p_project/frontJsp/login.jsp">登录</a>后可见
						</span>
                        <h2>账户余额</h2>
                        <div id="count">预期所得收益<i data-num="0.000822" id="num">0</i>元
                        </div>
                    </div>
                    <input id="mytext" class="txt" name="totalFee" type="text"
                           placeholder="起投金额100元以上">
                        <span style="float: right;margin-top: -40px;position: relative; line-height: 40px; padding: 0 10px;color: #f00;"
                              id="addMoney"></span>
                    <p class="preBox">
                        <input type="checkbox" id="registerRule" class="registerRule" checked="checked"><span
                            class="fl">同意<a href="/web/syxy" target="_black">《产品协议》</a></span>
                    </p>
                    <button class="submit" style="background-color:" readonly>确认抢购</button>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <ul class="conInfoList">
                    <li class="info">
                        <p>计息日期：<font color="#00baff">${sb.create_date}</font></p>
                        <p>还款方式：<font color="#00baff">${sb.refund_way==0?"分期付款":"一次性还本付息"}</font></p>
                        <p>资金到账日：<font color="#00baff">1至2</font>
                        
                        </p>
                    </li>
                    <li class="info">
                        <p>保障方式：<font color="#00baff">${sb.safeguard_way==0?"企业担保":"银行监管"}</font></p>
                        <p>资金安全：<font color="#00baff">中国人保财险承保</font></p>
                    </li>
                </ul>
            </td>
        </tr>
    </table>

    <div class="tbConBox">
        <div class="tab">
            <a class="select" href="#1">关于基金</a>
            <a href="#1">产品要素</a>
        </div>
        <div id="conBox">
            <div class="box" style="display:block">
            <p><img title="201511161447676523050003401.png" style="white-space: normal;" alt="blob.png" src="http://pro.ying158.com/upload/ueditor-img/20151116/201511161447676523050003401.png"/></p><p>基金成立时间 11月底&nbsp;</p><p>投资顾问 昌都市凯丰投资管理有限公司</p><p>管理人 深圳市凯丰投资管理有限</p><p>公司 托管人 国信证券股份有限公司</p><p>投资范围 各交易所期货类、证券类投资品种，银行间债券市场投资品种，外汇，QDII基金，私募基金(包括且但不限于管理人发行的其他私募基金)。</p><p>投资策略</p><p>本产品计划20%-80%用于优质债券品种的投资，20%-80%用于期货的跨期、跨品种套利。通过债券品种的投资，保障了本产品大部分资金的安全性的同时，获取稳定的债券收益；跨期、跨品种套利策略则充分发挥对宏观经济的把握能力，捕捉市场机会，追求超越市场的超额收益，提升本产品的整体收益率。</p><p><br/></p>
            </div>
            <div class="box">
            <p><br/></p><p><img title="201511121447322887893089688.png" alt="blob.png" src="/upload/ueditor-img/20151112/201511121447322887893089688.png"/></p><p><img title="201511181447810191301076426.png" alt="blob.png" src="/upload/ueditor-img/20151118/201511181447810191301076426.png"/></p><p><br/></p>
            </div>
        </div>
    </div>
</div>

	
	
</body>
</html>