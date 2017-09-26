<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<link rel="stylesheet"
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/release-commons_38d5ebd.css?v=201512161721">
<script type="text/javascript"
	src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/jquery/1.7.2/jquery_7a71356.js?v=201512161721"></script>
<link
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/login/login_e18909b.css?v=201512161721"
	rel="stylesheet" type="text/css" />


<link href="/p2p_project/frontStyle/css/style.css" rel="stylesheet"
	type="text/css">
<link href="/p2p_project/frontStyle/css/gywm.css" rel="stylesheet"
	type="text/css">
<link href="/p2p_project/frontStyle/css/center.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="/p2p_project/frontStyle/css/font-style.css">
<script type="text/javascript"
	src="/p2p_project/frontStyle/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/all.js"></script>

<script type="text/javascript">
					 
						 function fun1(){
							 var reg=/^1[0-9]\d{9}$/;
							 var num=$("#phone").val();
							  if(num.length!=11){
								  $("#s1").html("请输入正确的手机号码");
								  return false;
							  }else{
								  $("#s1").html("");
							  } 
						 }
						  
					</script>
					
</head>
<body>
<c:if test="${!empty msg}">
  alert(${msg});
  <%session.setAttribute("msg", ""); %>
</c:if>
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
					<a href="/p2p_project/frontJsp/login.jsp" rel="nofollow" class="fff">登录</a>
					<a href="/p2p_project/frontJsp/register.jsp" rel="nofollow"
						class="fff">注册</a>
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
						<a href="" target="_blank" rel="nofollow" >我的借款</a>
					</dd>
				</dl>
				<div class="community">
					<a href="" target="_blank" rel="nofollow" class="fc_white">关于我们</a>
				</div>
			</div>
		</div>
	</div>

	<div class="niwdoawi_center mw_1180">
		<div class="w1190 logo clearfix">
			<a href="" title="" class="fl pl_20 logo_a holiday_logo"><img
				src="/p2p_project/frontStyle/images/logo.jpg" height="52" alt="" /></a>
			<div class="fr righ">
				<ul class="nav clearfix">
					<li><a rel="nofollow" href="/p2p_project/frontJsp/index.jsp"
						 class="one">首页</a></li>
					<li class="two"><a href="" class="two"
						id="cp_two">我要投资</a>
						<dl class="cp_two">
							<dd>
								<a href="">固收类理财</a>
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


<br><br>

	<div class="login-wrap" id="loginWrap">
		<div class="login-cont" >
			<div class="login-bg"></div>
			<div class="login-box">
				<div class="login-hd">
					<h1>
						登录<span class="ff-arial"></span>
					</h1>
					<a href="/p2p_project/frontJsp/register.jsp">免费注册</a>
				</div>
				<form id="formLogin" onsubmit="return fun1();" class="login-bd" action="/p2p_project/user/login" method="post">
					<input type="hidden" name="returnUrl" value="/customer" />


					<div class="login-item">
						<input class="textbox" type="number" id="phone" 
							name="mobile_phone" required placeholder="手机号"/>
							<p id="s1"></p>
					</div>
					<div class="login-item">
						<input class="textbox" required type="password" id="password"
							maxlength="50" name="password" placeholder="登录密码" />
					</div>
					
					<a class="forget-pass" href="/p2p_project/frontJsp/forget.jsp">忘记密码?</a>
					<button class="submit" type="submit" id="sendLogin" data-piwik>登
						录</button>
					<div class="warning" name="login-warning"></div>
					<div class="ui-others-box">
						<h2>使用其他方式直接登录</h2>
						<div class="ui-others-solid solid"></div>
						<ul class="ui-others-list">
							<li><a href="http://www.ppmoney.com/oauth/auth?type=qq"
								title="腾讯QQ登录"><u class="u-ol u-ol-02 u-bezier"></u></a></li>
							<li><a href="http://www.ppmoney.com/oauth/auth?type=weibo"
								title="新浪微博登录"><u class="u-ol u-ol-00 u-bezier"></u></a></li>
							<li><a href="http://www.ppmoney.com/oauth/auth?type=baidu"
								title="百度登录"><u class="u-ol u-ol-03 u-bezier"></u></a></li>
							<li><a href="http://www.ppmoney.com/oauth/auth?type=weixin"
								title="微信登录"><u class="u-ol u-ol-01 u-bezier"></u></a></li>
						</ul>
					</div>
				</form>
				<div class="safe-box">
					<span class="safe-box-i safe-box-login"></span>
				</div>
			</div>
		</div>
	</div>
	<!--end-->
	
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
</body>
</html>