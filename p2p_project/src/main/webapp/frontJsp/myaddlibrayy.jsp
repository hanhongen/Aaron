<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="http://www.ying158.com/images/icon.ico" type="image/x-icon" rel="shortcut icon">
<link href="/p2p_project/frontStyle/css/style.css" rel="stylesheet"	type="text/css">
<link rel="stylesheet" type="text/css"	href="/p2p_project/frontStyle/css/font-style.css">
<script type="text/javascript" src="/p2p_project/frontStyle/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/all.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/bootstrap.js"></script>
<!-- <link rel="stylesheet" href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/release-commons_38d5ebd.css?v=201512161721"> -->
<link href="/p2p_project/frontStyle/css/jw.css" rel="stylesheet"><!-- 页面主体业务样式 -->
<script type="text/javascript"> 
//选项卡切换 
$(function () { 
$(".adminLeft li").click(function () { 
var index_tab = $(this).parent().children().index($(this)); //选项卡的索引值 
$(this).parent().find(".open").removeClass("open").addClass("close"); //选项卡背景处理 
$(this).removeClass("close").addClass("open"); 
var content_obj = $(".admin-right") //内容节点 
content_obj.hide(); 
content_obj.eq(index_tab).show(); 
}); 
}); 
</script> 
</head>
<body class="index_niwo holiday_bg">
	<div class="niwdoawi_top mw_1180">
		<div class="header w1190 clearfix">
			<div class="fl tel">
				<em class="fs_14 mr_5 tel_ico">客服热线</em> 
				<i class="aril">400-688-8888</i>
				<span class="iphone"><i></i><a href="" target="_blank">手机客户端</a></span> 
				<span class="hover_sina"><a href="" target="_blank"></a></span> 
				<span class="hover_weixin toptk"></span>
			</div>
			<div class="fr login clearfix">
				<div class='login_bt'>
					<a href="/p2p_project/frontJsp/login.jsp" id="login" rel="nofollow" class="fff">登录</a> 
					<a href="/p2p_project/frontJsp/register.jsp" rel="nofollow" class="fff">注册</a>
					<a href="/p2p_project/backJsp/feedbacks.jsp" rel="nofollow" class="fff">意见反馈</a>
				</div>
				<dl>
					<dt><a href="" rel="nofollow" class="txnone" style="color: #ffffff">账户中心</a></dt>
					<dd><a href="" rel="nofollow" >充值</a></dd>
					<dd><a href="" rel="nofollow" >提现</a></dd>
					<dd><a href="" rel="nofollow" >我的投资</a></dd>
					<dd><a href="" target="_blank" rel="nofollow">我的借款</a></dd>
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
			<a href="" title="" class="fl pl_20 logo_a holiday_logo">
			<img src="/p2p_project/frontStyle/images/logo.jpg" height="52" alt="" /></a>
			<div class="fr righ">
				<ul class="nav clearfix">
					<li><a rel="nofollow" href="" class="one">首页</a></li>
					<li class="two"><a href="" class="two"
						id="cp_two">我要投资</a>
						<dl class="cp_two">
							<dd><a href="/p2p_project/frontJsp/solid.jsp">固收类理财</a></dd>
							<dd><a href="">私募资金</a></dd>
							<dd><a href="">海外配置</a></dd>
							<dd><a href="">股权基金</a></dd>
						</dl>
					</li>
					<li class="rela"><a href="" class="one">盈+商学院</a>
					</li>
					<li class="rela"><a href="" class="one">我的加法库</a>
					</li>
					<li class="rela"><a href="/p2p_project/frontJsp/about.jsp" class="one">关于我们 </a></li>
				</ul>
			</div>
		</div>
	</div>
<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
<table height="160" class="peopleInfo" width="970" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td align="left" valign="middle" class="info">
            <a href="#">
                <div class="img"><img src="/resources/web/images/userPic.jpg"></div>
                <h2><span>您好!</span></h2>
            </a>
            <div class="safe">账户安全&nbsp;&nbsp;<span class="scroll"><em style="width:75%"></em></span></div>
            <ul class="listIco iconfont">
                <li class="active"><a href="#1">&#xe61c;</a><em>&#xe61b;</em></li>
                <li class="active"><a href="#1">&#xe61d;</a><em>&#xe61b;</em></li>
                <!-- <li class=""><a href="#1">&#xe61f;</a><em>&#xe61b;</em></li> -->
                <li class="active"><a href="#1">&#xe61a;</a><em>&#xe61b;</em></li>                                
                <li class=""><a href="#1">&#xe61e;</a><em>&#xe61b;</em></li>
            </ul>
        </td>
        <td align="right">
            <a href="/web/logout" class="loginOut"><span class="iconfont">&#xe618;</span>安全退出</a>
        </td>
    </tr>
</table>
<div class="countBox">
    <ul>
        <li><h2>31000</h2><p>账户可用余额(元)<a href="javascript:;" class="iconfont">&#xe619;<span>账户可用余额</span><i></i></a></p></li>
        <li><h2 style="color:#9d8440">115632</h2><p>投资金额(元)<a href="javascript:;" class="iconfont">&#xe619;<span>投资中资金</span><i></i></a></p></li>
        <li><h2 style="color:#9d8440">26500</h2><p>累计收益(元)<a href="javascript:;" class="iconfont">&#xe619;<span>累计收益</span><i></i></a></p></li>
        <li><h2 style="color:#9d8440">0</h2><p>冻结金额(元)<a href="javascript:;" class="iconfont">&#xe619;<span>提现冻结金额</span><i></i></a></p></li>
    </ul>
    <a href="/account/deposit" class="cz">充值</a>
    <a href="/account/withdraw" class="tk">提款</a>
</div>    
<div class="proMain clearfix">
<div class="adminLeft">
    <h2>我的投资</h2>
    <ul>
        <li class="open"><a id="member_center_menu_invests" href="#"><em class="iconfont red">&#xe602;</em>投资记录</a></li>
        <li class="close"><a id="member_center_menu_profit_record" href="#"><em class="iconfont red">&#xe616;</em>收益记录</a></li>
        <li class="close"><a id="member_center_menu_deposit_record" href="#" onclick="query()"><em class="iconfont red">&#xe616;</em>充值记录</a></li>
        <li class="close"><a id="member_center_menu_withdraw_record" href="#" onclick="tk()"><em class="iconfont red">&#xe616;</em>提款记录</a></li>
        <li class="close"><a id="member_center_menu_bbinInfo_record" href="#"><em class="iconfont red">&#xe616;</em>体验金记录</a></li>    
        <li class="close"><a id="member_center_menu_deposit" href="#" onclick="querycz()"><em class="iconfont red">&#xe614;</em>账户充值</a></li>
        <li class="close"><a id="member_center_menu_security" href="#"><em class="iconfont red">&#xe612;</em>安全信息</a></li>
        <li class="close"><a id="member_center_menu_withdraw" href="#"><em class="iconfont red">&#xe612;</em>我要提款</a></li>
<!--    <li><a id="member_center_menu_financial" href="/account/financial"><em class="iconfont">&#xe612;</em>我是理财师</a></li> -->
    </ul>
</div>
		<!-- 投资记录  -->
		<div class="admin-right" style="display: block;">
			<div class="tbConBox">
				<div class="tab">
					<a class="select" href="javascript:;">投资记录</a>
				</div>
				<div id="conBox">
					<div class="box" style="display: block">
						<div class="ajaxContainer">
							<table class="tzlist" width="100%" border="1"
								bordercolor="#e9e9e9" cellspacing="0" cellpadding="0">
								<tr>
									<th>订单编号</th>
									<th>标的名称</th>
									<th>金额</th>
									<th>预期收益</th>
									<th>状态</th>
									<th>购买时间</th>
								</tr>
								<c:forEach items="${listSPR }" var="ls">
								<tr>
								<td>${ls.serial_number }</td>
								<td>${ls.subject.name }</td>
								<td>${ls.amount }</td>
								<td>${ls.result }</td><!-- amount*year_rate/365*dayCount公式有问题 -->
								<td>${ls.member.status }</td>
								<td>${ls.create_date }</td>
								</tr>
								</c:forEach>
							</table>
							<div class="listCount">
								总计<font color="#ff503f">${count }</font>笔
							</div>
						</div>
					</div>
				</div>
				<div class="tab">
					<a class="select" href="javascript:;">预约记录</a>
				</div>
				<div id="conBox">
					<div class="box" style="display: block">

						<div class="ajaxContainer2">
							<table class="tzlist" width="100%" border="1"
								bordercolor="#e9e9e9" cellspacing="0" cellpadding="0">
								<tr>
									<th>标的名称</th>
									<th>金额</th>
									<th>预期收益</th>
									<th>状态</th>
									<th>预约时间</th>
									<th>下载</th>
								</tr>
								<c:forEach items="${listsor }" var="ls">
								<tr>
								<td>${ls.subject.name }</td>
								<td>${ls.amount }</td>
								<td>${ls.result }</td>
								<td>${ls.status }</td>
								<td>${ls.create_date }</td>
								<td>--</td>
								</tr>
								</c:forEach>
							</table>
							<div class="listCount">
								总计<font color="#ff503f">${count2 }</font>笔
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 收益记录 -->
		<div class="admin-right" style="display: none">
			<div class="tbConBox">
				<div class="tab">
					<a class="select" href="javascript:;">收益记录</a>
				</div>
				<div id="conBox">
					<div class="box" style="display: block">
						<div class="ajaxContainer">
							<table class="tzlist" width="100%" border="1"
								bordercolor="#e9e9e9" cellspacing="0" cellpadding="0">
								<tr>
									<th width="20%">时间</th>
									<th width="30%">订单号</th>
									<th width="20%">金额</th>
									<th width="20%">备注</th>
								</tr>
								<c:forEach items="${listSPR }" var="ls">
								<tr>
								<td>${ls.subject.end_date }</td>
								<td>${ls.serial_number }</td>
								<td>${ls.result }</td>
								<td>${ls.subject.comment }</td>
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 充值记录 -->
		<div class="admin-right" style="display: none">
			<div class="tbConBox">
				<div class="tab">
					<a class="select" href="javascript:;">充值记录</a>
				</div>
				<div id="conBox">
					<div class="box" style="display: block">

						<div class="ajaxContainer">
							<table class="tzlist" width="100%" border="1"
								bordercolor="#e9e9e9" cellspacing="0" cellpadding="0">
								<tr>
									<th width="30%">订单号</th>
									<th width="20%">金额</th>
									<th width="20%">状态</th>
									<th width="30%">时间</th>
								</tr>
								<tbody id="t_body"></tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
					<script type="text/javascript">
					/* 点击按钮触发 */
					function query() {
						//执行ajax
						ajaxFun();
					}
					
					/*ajax代码部分*/
					function ajaxFun(){
						//ajax执行体
						$.ajax({
							//提交方式
							type:"post",
							//访问地址
							url:"/p2p_project/member_deposit_record/listmdr",					
							data:"id="+$("#hid").val(),
							dataType:"json",
							//服务器成功返回结果后，会把结果保存到data中
							success:function(data){
								//清空表体
								$("#t_body").empty();
								//eval获取返回JSON对象集合
// 								var d = eval('('+data+')');
								//把数据显示到页面去的方法
								showData(data);
							}
						});
					}
					/*显示数据*/
						function showData(data){
// 						for(var i=0;i<data.length;i++){
// 							var html = "<tr><td>"+data[i].serial_number+"</td><td>"+data[i].amount+"</td><td>"+data[i].status+"</td><td>"+data[i].create_date+"</td></tr>"
// 							//通过表体id把显示文本显示到网页中
// 							$("#t_body").append(html);
// 						}
// 						var falg = data.member.weixinaccount;
// 						alert(data);
						var str = "";
						for(var d in data){
							var members = data[d];
// 							var members = data[d][0].amount;
// 							alert(members);
							for(var m in members){
// 								alert(members[m].weixinaccount);
								str+="<tr><td>"+members[m].seril_number+"</td><td>"+members[m].amount+"</td><td>"+members[m].member.status+"</td><td>"+members[m].member.create_date+"</td></tr>"
							}
// 							alert(data[d].member.serial_number);
// 							
						}
// 						$.each(data,function(index,value){
// 							var html = "<tr><td>"+index.serial_number+"</td><td>"+index.amount+"</td><td>"+index.status+"</td><td>"+index.create_date+"</td></tr>"
//  							//通过表体id把显示文本显示到网页中
 							
// 						});
						$("#t_body").append(str);
					}
					</script>
		<!-- 提款记录  -->
		<div class="admin-right" style="display: none">
			<div class="tbConBox">
				<div class="tab">
					<a class="select" href="javascript:;">提款记录</a>
				</div>
				<div id="conBox">
					<div class="box" style="display: block">
						<div class="ajaxContainer">
							<table class="tzlist" width="100%" border="1"
								bordercolor="#e9e9e9" cellspacing="0" cellpadding="0">
								<tr>
									<th width="20%">时间</th>
									<th width="30%">订单号</th>
									<th width="20%">金额</th>
									<th width="10%">状态</th>
								</tr>
								<tbody id="tbody_tk"></tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		//点击按钮触发
		function tk(){
			ajaxtk();
		}
		//ajax执行体
		function ajaxtk(){
			$.ajax({
				type:"post",
				url:"/p2p_project/member_withdraw_record/listmwr",
				data:"id="+$("#hid").val(),
				dataType:"json",
				success:function(data){
					//清空表体
					$("#tbody_tk").empty();
					showDataTk(data);
				}
			});
		}
		function showDataTk(data){
			var str="";
			for(var i=0;i<data.length;i++){
					str+="<tr><td>"+data[i].create_date+"</td><td>"+data[i].serial_number+"</td><td>"+data[i].amount+"</td><td>"+data[i].status+"</td></tr>";				
			}
			$("#tbody_tk").append(str);
		}
		</script>
		<!-- 体验金记录 -->
		<div class="admin-right" style="display: none">
			<div class="tbConBox">
				<div class="tab">
					<a class="select" href="javascript:;">体验金记录</a>
				</div>
				<div id="conBox">
					<div class="box" style="display: block">
						<div class="remind">
							<h4>
								<strong><span style="color: #827E76">体验金余额(元)：</span><span
									style="color: #9d8440">8888</span>&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="/subject">立即使用</a> </strong>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		

		
		<!-- --------------------------------------------我的賬戶----------------------------------------------------- -->
		<!-- 賬戶充值 -->
		<div class="admin-right" style="display: none">
			<div class="tbConBox">
				<div class="tab">
					<a class="select" href="javascript:;">网银充值</a> 
				</div>
				<div id="conBox">
					<div class="box" style="display: block">
						<div class="picTab">
							<a class="select" href="javascript:"> <img height="42px"
								src="/p2p_project/frontStyle/images/fuyou.png">
								<p>通过富友支付平台进行网银充值</p>
							</a>
						</div>
						<div class="formBox">
							<div class="czbox">
								<form id="depositForm" action="/p2p_project/member_deposit_record/goAlipayJsp"
									method="POST" target="_blank">
									<div>
										充值银行卡：<strong id="str"></strong>
										<div style="display: none"><p id="meid"></p></div>
									</div>
									<br>
									<div>
										充值金额：<input class="tytxt" id="fee" name="fee" type="text">
										<input type="hidden" name="hid" id="hid" value="1">
									</div>
									<button class="tybutton" id="btn_go_pay" type="submit">前往充值</button>
								</form>
							</div>
						</div>
						<div class="txtCon">
							<p style="display: block;">上海富友金融网络技术有限公司自2008年创立至今，已发展成为一家大型综合性金融支付服务集团公司——注册资本2.0007亿元，实收资本3.8亿元，下设6家全资子公司，同时拥有6张支付及金融服务牌照，并在全国设立了35家分公司。富友以“打造便利金融生活”为愿景，以“专业——分享——价值”为理念，以“专业创新，差异化经营”为手段，立志成为网络金融和网络生活服务的领先者——用便利金融，让生活更美好。
								2011年获得中国人民银行颁发的银行卡收单和互联网支付牌照，同时获得人民银行颁发的预付卡发行与受理牌照。2013年富友金融获得中国银联“收单外包机构注册认证”，在全国范围建立银行卡收单服务网络。2014年成为“上海市网络信贷服务业企业联盟”成员单位，在目前国家已颁布牌照的269家第三方支付公司中，获此殊荣的仅有4家公司</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		//点击按钮触发  查询银行和银行卡号
		function querycz(){
			ajaxcz();
		}
		function ajaxcz(){
			$.ajax({
				type:"post",
				url:"/p2p_project/member_bankcards/listmb",
				data:"id="+$("#hid").val(),
				dataType:"json",
				success:function(data){
					showcz(data);
				}
			});
		}
		function showcz(data){
			var str="";
			var meid="";
			for(var i=0;i<data.length;i++){
				str+="<strong>"+data[i].type+"-"+data[i].card_no+"</strong>";
				meid+="<p>"+data[i].member.id+"</p>";
			}
			$("#str").append(str);
			$("#meid").append(meid);
		}
		

		
		</script>
<!-- --------------------------------------------安全信息----------------------------------------------------- -->
        <div class="admin-right" style="display: none">
        	<div class="tbConBox">
                <div class="tab">
                    <a class="select" href="javascript:;">安全中心</a>
                </div>
                <div id="conBox">
                    <div class="box" style="display:block">
                    	<table class="safeTable" width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                          	<td class="first"><span class="iconfont active"><a href="#1">&#xe61c;</a><em>&#xe61b;</em></span></td>
	                        <td><p style="color:#ff503f">实名认证</p></td>
	                        <td>511***830</td>
	                        <td><p style="color:#888">保障账户安全，只有完成实名认证才能充值提款</p></td>
	                        <td>认证完成</td>                      
                          </tr>
							<tr>
							<td class="first"><span class="iconfont active"><a href="#1">&#xe61c;</a><em>&#xe61b;</em></span></td>
							<td><p style="color:#ff503f">绑卡认证</p></td>
							<td>已绑定</td>
							<td><p style="color:#888">保障账户安全，只有完成绑卡认证才能充值提款</p></td>
							<td><a href="/account/security/memberBankcardView" class="renzheng">查看</a></td>					  
							</tr>
                          <tr>
                            <td class="first"><span class="iconfont active"><a href="#1">&#xe61d;</a><em>&#xe61b;</em></span></td>
                            <td><p style="color:#ff503f">绑定手机</p></td>
                            <td>1557111****</td>
                            <td><p style="color:#888">手机号码是您在盈+金融的重要身份凭证</p></td>
                            <td>绑定完成</td>
                          <tr>
                            <td class="first"><span class="iconfont active"><a href="#1">&#xe61a;</a><em>&#xe61b;</em></span></td>
                            <td><p style="color:#ff503f">登录密码</p></td>
                            <td>已设置</td>
                            <td><p style="color:#888">登录盈+金融网站时需要输入的密码</p></td>
                            <td><a onclick="$('#changePWModal').modal(); return false;" href="javascript:;" class="renzheng">修改</a></td>
                          </tr>
                          <tr>
	                        <td class="first"><span class="iconfont"><a href="#1">&#xe61e;</a><em>&#xe61b;</em></span></td>
	                        <td><p style="color:#ff503f">提款密码</p></td>
	                        <td>未设置</td>
	                        <td><p style="color:#888">保障资金安全，提款需要设置提款密码</p></td>
	                        <td><a onclick="$('#setWithdrawPWModel').modal(); return false;" href="javascript:;" class="renzheng">设置</a></td>								
                          </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>


	

		<!-- --------------------------------------------我要提款----------------------------------------------------- -->

		<div class="admin-right" style="display: none">
			<div class="tbConBox">
				<div class="tab">
					<a class="select" href="javascript:;">我要提款</a> 
				</div>
				<div id="conBox">
					<div class="box" style="display: block">

						<table class="txTable" width="100%" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td width="140" align="right">账户余额：</td>
								<td><strong>0</strong>元</td>
							</tr>
							<tr>
								<td align="right">提款银行卡：</td>
								<td><strong>工商银行-4367548974335648512</strong> <input
									type="hidden" id="withdrawBankCard" value="4367548974335648512"></td>
							</tr>
							<tr>
								<td align="right">提款金额：</td>
								<td><input class="tytxt" type="text" id="withdrawAmount"
									style="width: 250px"></td>
							</tr>

							<tr>
								<td align="right">提款密码：</td>
								<td><a href="javascript:;"
									onclick="$('#setWithdrawPWModel').modal(); return false;">设置提款密码</a>

								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><button class="tybutton" id="withdrawConfirm">提交</button></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>

<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="g-ft-wrap">
		<div class="g-ft">
			<ul class="link-nav cf">
				<li><a href="http://www.miibeian.gov.cn/" target="_blank" title="" rel="nofollow"><u class="u-10"></u></a></li>
				<li><a href="http://www.gdnet110.gov.cn/" target="_blank" title="" rel="nofollow"><u class="u-11"></u></a></li>
				<li><a href="http://webscan.360.cn/index/checkwebsite/url/www.ppmoney.com" target="_blank" title="" rel="nofollow"><u class="u-12"></u></a></li>
				<li><a href="https://search.szfw.org/cert/l/CX20130826002735003003" target="_blank" title="" rel="nofollow"><u class="u-13"></u></a></li>
				<li><a href="https://ss.knet.cn/verifyseal.dll?sn=e1309121101004242455g1000000&amp;ct=df&amp;a=1&amp;pa=000000" target="_blank" title="" rel="nofollow"><u class="u-14"></u></a></li>
				<li><a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1591537685" target="_blank" title="" rel="nofollow"><u class="u-15"></u></a></li>
				<li><a href="http://www.anquan.org/authenticate/cert/?site=www.ppmoney.com&amp;at=business" target="_blank" title="" rel="nofollow"><u class="u-16"></u></a></li>
			</ul>
			<div class="copyright">
				<a href="/info/about" title="关于我们" rel="nofollow">关于我们</a>
				| 
				<a href="/job/list" title="人才招聘" rel="nofollow">人才招聘</a>
				| 
				<a href="/info/law" title="法律申明" rel="nofollow">法律申明</a>
				| 
				<a href="/info/feedback" title="意见反馈" rel="nofollow">意见反馈</a>
				| 
				<a href="/info/contact" title="联系我们" rel="nofollow">联系我们</a>
				| <a href="/info/help" title="新手必读" rel="nofollow">新手必读</a>
				<pre class="p-t10">版权所有 (C) PPmoney.com 
				<a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备12030634号</a>
				<a href="/special/icp/icp.html" target="_blank" rel="nofollow">增值电信业务经营许可证粤B2-20150286</a>
				</pre>
			</div>
		</div>
	</div>
</body>
<script src="/p2p_project/frontStyle/js/security_changeloginpwd.js"></script>
<script src="/p2p_project/frontStyle/js/security_withdrawpwd.js"></script>
</html>