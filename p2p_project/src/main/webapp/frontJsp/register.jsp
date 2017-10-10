<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


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



<link href="http://pro.ying158.com/resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">

<link href="/p2p_project/frontStyle/css/iconfont.css" rel="stylesheet" type="text/css">
<link href="/p2p_project/frontStyle/css/common.css" rel="stylesheet">
<link href="/p2p_project/frontStyle/css/test1.css" rel="stylesheet">

<script src="/p2p_project/frontStyle/js/hm.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/layer.js"></script>
<link rel="stylesheet" href="/p2p_project/frontStyle/js/layer.css" id="layui_layer_skinlayercss">
<script src="/p2p_project/frontJsp/js/echarts.js"></script>

</head>
<body>

<!-- 头部开始 -->
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
					<a href="#" id="/p2p_project/frontJsp/login.jsp" rel="nofollow" class="fff">登录</a>
					<a href="/p2p_project/frontJsp/register.jsp" rel="nofollow"
						class="fff">注册</a>
				</div>

				<dl>
					<dt>
						<a href="" rel="nofollow" class="txnone"
							style="color: #ffffff">账户中心</a>
					</dt>
					<dd>
						<a href="" rel="nofollow">充值</a>
					</dd>
					<dd>
						<a href="" rel="nofollow">提现</a>
					</dd>
					<dd>
						<a href="" rel="nofollow">我的投资</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow">我的借款</a>
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
						title="首页" class="one">首页</a></li>
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
					<li class="rela"><a href=""  class="one">我的加法库</a>
					</li>
					<li class="rela"><a href="/p2p_project/frontJsp/about.jsp"
						class="one">关于我们 </a></li>
					
				</ul>
			</div>
		</div>
	</div>
<!--   头部结束    -->



 
	<div class="row register">
	<form action="/p2p_project/user/register" method="post" >
		<div class="title">
			<div class="left">
				<hr>
			</div>
			<div class="mid">
				新用户注册
			</div>
			<div class="right">
				<hr>
			</div>
		</div>
        <div class="item">
            <div class="rLabel">
                用户名
            </div>
            <div class="rInput">
                <input type="text" placeholder="请输入用户名" id="userName" name="user_name" required class="form-control textInput youname">（需用实名注册）
            </div>
        </div>
		<div class="item">
			<div class="rLabel">
				手机号
			</div>
			<div class="rInput">
				<input type="text" placeholder="请输入手机号" onblur="return fun1();"  required  id="phone" name="mobile_phone" class="form-control textInput phone"><span id="s1"></span>
			</div>
			
		</div>
		
		<div class="item">
			<div class="rLabel">
				登录密码
			</div>
			<div class="rInput">
				<input type="password" required placeholder="请输入密码" onblur="return fun();" id="password1" name="password" class="form-control textInput password"><span id="s2"></span>
			</div>
		</div>
		<div class="item">
			<div class="rLabel">
				确认密码
			</div>
			<div class="rInput">
				<input type="password" required placeholder="请再输入密码" onblur="return fun2();" id="password2" name="password2" class="form-control textInput password2"><span id="span1"></span>
			</div>
			<script type="text/javascript">
			</script>	
		</div>
        <div class="item">
            <div class="rLabel">
                理财师邀请码
            </div>
            <div class="rInput">
                <input type="text" placeholder="选填" id="invitationCode" name="invitationCode" class="form-control textInput invitationCode">（填写理财师邀请码，将会有更多惊喜）
            </div>
        </div>
		<div class="item">
			<div class="rLabel">
				QQ号码
			</div>
			<div class="rInput">
				<input type="text" placeholder="选填" id="qq" name="qq" class="form-control textInput qqAccount">
			</div>
		</div>
		<div class="item extro">
			<div class="rLabel">
				&nbsp;
			</div>
			<div class="rInput">
				<span class="extroInfo">请用户提供QQ号码，方便客服联系</span>
			</div>
		</div>
		<div class="item">
			<div class="rLabel">
				&nbsp;
			</div>
			<div class="rInput">
				<label>
					<input type="checkbox" id="registerRule" class="registerRule" checked="checked"><span>我已阅读并同意<a href="javascript:showAgreement();">《本网站服务协议》</a></span>
				</label>
				<span class="ruleError">请先阅读并同意网站服务协议</span>
			</div>
		</div>
		<div class="item">
			<div class="rLabel">
				&nbsp;
			</div>
			<div class="rInput">
				<input type="submit" value="立即注册" class="btn registBtn submit" >
			</div>
		</div>
		<div class="item">
			<div class="rLabel">
				&nbsp;
			</div>
			<div class="rInput loginChoose">
				我已经注册，现在就<a href="/p2p_project/frontJsp/login.jsp">登录</a>
			</div>
		</div>
		</form>
	</div>
	
<script type="text/javascript" src="/p2p_project/frontStyle/js/regis.js"></script>

<script type="text/javascript">
function fun1(){
	  var flag=false;
	  var reg=/^1[0-9]\d{9}$/;
		  var num=$("#phone").val();
		  if(num.length==11 && reg.test(num)){
			  $("#s1").html("");
			  flag=true;
			  return true;
		  }else{
			  $("#s1").html("  (请输入正确的手机号码)");
			  $("#phone").val("");
			  return flag;
			 
		  }
 }
 
 function fun(){
	 var pwd1=$("#password1").val();
	 if(pwd1.length<6){
		 $("#s2").html("  (密码至少6位！)");
		 $("#password1").val("");
		 return false;
	 }else{
		 $("#s2").html("");
		 return true;
	 }
 }

function fun2(){
	  var pwd2=$("#password2").val();
	  var pwd1=$("#password1").val();
	  if(pwd1 != pwd2){
		  $("#span1").html("  (两次密码不一致！)");
		  $("#password2").val("");
		  return false;
	  }else{
		  $("#span1").html("");
		  return true;
	  }
}
</script>



<!--    底部结束    -->
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