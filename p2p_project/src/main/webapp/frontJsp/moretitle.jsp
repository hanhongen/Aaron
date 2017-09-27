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
<div align="center">
<samp style="color: rgb(212, 150, 64); font-size: 80px;">
   新闻标题<span class="glyphicon glyphicon-asterisk"></span>
</samp>	

<hr>

<c:forEach items="${list}" var="list">
<a href="#" data-toggle="modal"  data-target="#${list.id}" id="title"><font class="text-primary" size="6">${list.title}</font></a><br>
 
 <div class="modal fade" id="${list.id }" tabindex="-1" role="dialog" 
   aria-labelledby="${list.id}" aria-hidden="true" style="width: 500px;height: 600px;top: 250px; left: 400px;" align="center">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title" id="${list.id}">
             <font size="5" color="red"> "${list.title }"</font> 
          </h4>
         </div>
         <div class="modal-body">
 <font size="4" color="red">内容:${list.text}</font>
         </div>
      </div>
   </div>
 
  </div>
 </c:forEach>
 
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
	<script src="/p2p_project/backStyle/js/jquery.min.js"></script>
	<script src="/p2p_project/backStyle/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/p2p_project/backStyle/js/bootstrap-modal.js"></script>
</body>
</html>