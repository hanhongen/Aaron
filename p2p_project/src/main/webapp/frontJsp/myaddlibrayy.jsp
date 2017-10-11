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
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<!-- <link rel="stylesheet" href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/release-commons_38d5ebd.css?v=201512161721"> -->
<link href="/p2p_project/frontStyle/css/jw.css" rel="stylesheet"><!-- 页面主体业务样式 -->
<!-- <link href="/p2p_project/frontStyle/css/common.css" rel="stylesheet"> -->

<!-- 两个省市级联插件 -->
<script type="text/javascript" src="/p2p_project/frontStyle/js/jquery.cityselect.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/city.min.js"></script>

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
<style type="text/css">
.yj{border-radius:5px;overflow:hidden;border:1px solid #333333}
.but{
border-style:solid;
border-width:1px;
border-color:#333333;
/*border:1px;*//*不要设置border*/
}

</style>

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
				<c:if test="${empty id }">
					<a href="/p2p_project/frontJsp/login.jsp" id="login" rel="nofollow" class="fff">登录</a> 
					<a href="/p2p_project/frontJsp/register.jsp" rel="nofollow" class="fff">注册</a>
				</c:if>
				<c:if test="${!empty id }">
				<a class="fff">用户：</a><a href="#" class="fff">${user_name}</a>
				</c:if>
					<a href="/p2p_project/user/feedBacks/${id}" rel="nofollow" class="fff">意见反馈</a>
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
<!--                 <div class="img"><img src="/resources/web/images/userPic.jpg"></div> -->
                <h2><span>
                <img src="/p2p_project/frontStyle/images/lt.png" width="60px" height="60px">&nbsp;
                ${user_name} 您好!</span></h2>
            </a>
            <div class="safe">
            <img src="/p2p_project/frontStyle/images/07.png" width="25px" height="25px">&nbsp;
                                   账户安全&nbsp;&nbsp;<span class="scroll"><em style="width:75%"></em></span></div>
        </td>
        <td align="right">
            <a href="/p2p_project/user/outlogin" class="loginOut"><span class="iconfont">&#xe618;</span>安全退出</a>
        </td>
    </tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/p2p_project/member_account/selectAmount',
		data:{
			id:$("#hid").val()
		},
		dataType:'json',
		success:function(data){
			//var obj = JSON.parse(data);
			var a = data;
			var h1 = "";
			var h2 = "";
			var h3 = "";
			var h4 = "";
			var h5 = "";
			h1 += "<h2>"+a.useable_balance+"</h2>"; 
			h2 += "<h2>暂无</h2>";
			h3 += "<h2>"+a.invest_amount+"</h2>"; 
			h4 += "<h2>"+a.totl_profit+"</h2>"; 
			h5 += "<h2>"+a.imuseale_balance+"</h2>"; 
			$("#h1").append(h1);
			$("#h2").append(h2);
			$("#h3").append(h3);
			$("#h4").append(h4);
			$("#h5").append(h5);
			
		} 
	});  
}); 
</script>
<div class="countBox">
    <ul>
        <li><h2 id="h1"></h2><p>账户可用余额(元)<a href="javascript:;" class="iconfont">&#xe619;<span>账户可用余额</span><i></i></a></p></li>
        <li><h2 id="h2"></h2><p>账户总资产(元)<a href="javascript:;" class="iconfont">&#xe619;<span>可用余额+投资金额+累计收益</span><i></i></a></p></li>
        <li><h2 id="h3" style="color:#9d8440"></h2><p>投资金额(元)<a href="javascript:;" class="iconfont">&#xe619;<span>投资中资金</span><i></i></a></p></li>
        <li><h2 id="h4" style="color:#9d8440"></h2><p>累计收益(元)<a href="javascript:;" class="iconfont">&#xe619;<span>累计收益</span><i></i></a></p></li>
        <li><h2 id="h5" style="color:#9d8440"></h2><p>冻结金额(元)<a href="javascript:;" class="iconfont">&#xe619;<span>冻结金额</span><i></i></a></p></li>
    </ul>
    <a href="#" class="cz">充值</a>
    <a href="#" class="tk">提款</a>
</div> 

<div class="proMain clearfix">
<div class="adminLeft">
    <h2>我的投资</h2>
    <ul>
        <li class="open"><a id="member_center_menu_invests" href="#"><img src="/p2p_project/frontStyle/images/07.png" width="20px" height="20px">&nbsp;投资记录</a></li>
        <li class="close"><a id="member_center_menu_profit_record" href="#"><img src="/p2p_project/frontStyle/images/08.png" width="20px" height="20px">&nbsp;收益记录</a></li>
        <li class="close"><a id="member_center_menu_deposit_record" href="#" onclick="query()"><img src="/p2p_project/frontStyle/images/09.png" width="20px" height="20px">&nbsp;充值记录</a></li>
        <li class="close"><a id="member_center_menu_withdraw_record" href="#" onclick="tk()"><img src="/p2p_project/frontStyle/images/10.png" width="20px" height="20px">&nbsp;提款记录</a></li>
        <li class="close"><a id="member_center_menu_bbinInfo_record" href="#"><img src="/p2p_project/frontStyle/images/02.png" width="20px" height="20px">&nbsp;体验金记录</a></li>    
        <li class="close"><a id="member_center_menu_deposit" href="#" onclick="querycz()"><img src="/p2p_project/frontStyle/images/04.png" width="20px" height="20px">&nbsp;账户充值</a></li>
        <li class="close"><a id="member_center_menu_security" href="#" onclick="checkRz()"><img src="/p2p_project/frontStyle/images/01.png" width="20px" height="20px">&nbsp;安全信息</a></li>
        <li class="close"><a id="member_center_menu_withdraw" href="#" onclick="tkCard()"><img src="/p2p_project/frontStyle/images/03.png" width="20px" height="20px">&nbsp;我要提款</a></li>
    </ul>
</div>
<script>
  var menu_item="";
 $("#"+menu_item).addClass("select");
</script>

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
								<td>${ls.result }</td>
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
						var str = "";
						for(var d in data){
							var members = data[d];
							for(var m in members){
								//判断付款状态
								if(members[m].status==0){
									str+="<tr><td>"+members[m].seril_number+"</td><td>"+members[m].amount+"</td><td><a href='#' style='color:red'>待付款</a><br><font size='1' style='color:gray'>点击待付款继续付款</font></td><td>"+members[m].create_date+"</td></tr>";
								}
								//同上
								if(members[m].status==1){
									str+="<tr><td>"+members[m].seril_number+"</td><td>"+members[m].amount+"</td><td style='color:blue'>已付款</td><td>"+members[m].create_date+"</td></tr>";
								}
							}
						}

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
										<input type="hidden" name="hid" id="hid" value="${id}">
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
                          	<td class="first">
                          	<img src="/p2p_project/frontStyle/images/01.png" width="40px" height="40px">
                          	</td>
	                        <td><p style="color:#ff503f">实名认证</p></td>
	                        <td><p id="pcheck"></p></td>
	                        <td><p style="color:#888">保障账户安全，只有完成实名认证才能充值提款</p></td>
	                        <td><a id="smrz"></a></td>	
                            </tr>
							<tr>
							<td class="first">
							<img src="/p2p_project/frontStyle/images/03.png" width="40px" height="40px">
							</td>
							<td><p style="color:#ff503f">绑卡认证</p></td>
							<td><p id="bk1"></p></td>
							<td><p style="color:#888">保障账户安全，只有完成绑卡认证才能充值提款</p></td>
							<td>
							<a id="bk2"></a>
							</td>					  
							</tr>
                          <tr>
                            <td class="first">
                            <img src="/p2p_project/frontStyle/images/04.png" width="40px" height="40px">
                            </td>
                            <td><p style="color:#ff503f">绑定手机</p></td>
                            <td><p id="Pphone"></p></td>
                            <td><p style="color:#888">手机号码是您在盈+金融的重要身份凭证</p></td>
                            <td><a id="Aphone"></a></td>
                          <tr>
                            <td class="first">
                            <img src="/p2p_project/frontStyle/images/05.png" width="40px" height="40px">
                            </td>
                            <td><p style="color:#ff503f">登录密码</p></td>
                            <td>已设置</td>
                            <td><p style="color:#888">登录盈+金融网站时需要输入的密码</p></td>
                            <td><a onclick="funPwd()" href="#" class="renzheng">修改</a></td>
                          </tr>
                          <tr>
	                        <td class="first">
	                        <img src="/p2p_project/frontStyle/images/06.png" width="40px" height="40px">
	                        </td>
	                        <td><p style="color:#ff503f">提款密码</p></td>
	                        <td><p id="ptk"></p></td>
	                        <td><p style="color:#888">保障资金安全，提款需要设置提款密码</p></td>
	                        <td><a id="atk"></a></td>								
                          </tr>
                        </table>
                    </div>
                </div>
                
            </div>
        </div>

<!-- 用户认证 -->
<script type="text/javascript">
	function funRz(){
   	$(".rz").show();
	}
	function funCloseRz(){
		$(".rz").hide();
	}
	
	function Rz(){
		var name=$("#member_name").val();
		var it=$("#identity").val();
		var IDCard = new RegExp(/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/);
		if(!name){
			$("#sp1").html("不能为空!");
		}
		if(!IDCard.test(it)){
			$("#sp2").html("号码格式不正确！");
		}
		
		$.ajax({
			type:'post',
			url:'/p2p_project/member/saveMember',
			data:{
				mname: $("#member_name").val(),
				it: $("#identity").val(),
				id: $("#hid").val()
			},
			dataType:'json',
			success:function(msg){
				if(msg==1){
					$(".rz").hide();
					alert("认证完成！");
					window.location.reload();
				}else{
					alert("认证失败！");
				}
					
			}
		});		
	}
	
	function checkRz(){
		$.ajax({
			type:'post',
			url:'/p2p_project/member/checkRZ',
			data:"id="+$("#hid").val(),
			dataType:'json',
			success:function(data){
				var str="";
				var p="";
				if(data==1){
					p+="<p style='font-size: 1px; color:green'>已认证</p>";
					str+="<a href='#' class='renzheng' >已认证</a>";
				}
				if(data==0){
					p+="<p style='font-size: 1px; color:red'>未认证</p>";
					str+="<a href='#' class='renzheng' onclick='funRz()'>认证</a>";
				}
				
				$("#pcheck").append(p);
				$("#smrz").append(str);
			}
		});
		//绑卡
		checkBank();
		//绑定手机号
		checkPhone();
		//提款密码
		checkPwd();
	}
	
</script>
<!-- 用户认证 -->
<div class="rz" style="display:none;position:absolute;left:40%;top:50%;width: 500px;">
<form action="" method="post">
	<table width="100%" cellspacing="0" cellpadding="0" bgcolor="#F9F9F9" class="yj">
	<tr bgcolor="#333333"><td style="color:#FFFFFF;width: 230px"><font size="5">用户实名认证</font></td>
	<td align="right" style="color:#FFFFFF" colspan="2">
	<input type="button" onclick="funCloseRz()"style="background:#333333;color:#FFFFFF" value="&nbsp;X&nbsp;" class="but">
	</td></tr>
	
	<tr>
	<td align="right">用户名：</td>
	<td><input type="text" id="member_name" name="member_name"></td>
	<td align="left"><font size="1" color="red"><span id="sp1"></span></font></td>
	</tr>
	
	<tr>
	<td align="right">身份证：</td>
	<td><input type="text" id="identity" name="identity"></td>
	<td align="left"><font size="1" color="red"><span id="sp2"></span></font></td>
	</tr>

	<tr><td align="center" colspan="3">
	<input type="button" onclick="Rz()" value="确认">
	</td></tr>
	</table>
	</form>
</div>
<!-- 用户认证 -->
<!-- --------------------------------------------------------------绑卡认证--------------------------------------------------------------------- -->
<!-- 绑卡认证 -->
<script type="text/javascript">
	function funbk(){
   	$(".bk").show();
	}
	function bkClose(){
		$(".bk").hide();
	}
	//调用省市级连模块
	$(function(){
	    $("#citySelect").citySelect(); 
	});	
	//初始化省市级连模块
	$("#citySelect").citySelect({  
	       nodata: "none",  
	       required: false,  
	       prov:json.data.province,  
	       city:json.data.city,  
	       dist:json.data.county  
	 });
	
	function checkFormat(){
		//银行类型
		var name=$("#type").val();
		//var IDCard = new RegExp(/^([1-9]{1})(\d{14}|\d{18})$/);
		if(name==-1){
			alert("请选择银行！");
		}
		if($("#card_no").val() == null || $("#card_no").val() == ''){
			$("#kh").html("不能为空");
			return false;
		}
		var length = $("#card_no").val().length;
		if(length != 18){
			$("#kh").html("必须等于18位");
		}
		//省
		var province=$("#province").val();
		//市
		var city=$("#city").val();
		//县
		var county=$("#county").val();
		
		$.ajax({
			type:'post',
			url:'/p2p_project/member_bankcards/BankCard',
			data:{
				id:$("#hid").val(),
				type:$("#type").val(),
				card_no:$("#card_no").val(),
				province:$("#province").val(),
				city:$("#city").val(),
				county:$("#county").val()
			},
			dataType:'json',
			success:function(data){
				if(data == true){
					$(".bk").hide();
					alert("绑卡成功!");
					window.location.reload();
				}else{
					alert("绑卡失败!");
				}
			}
		});
		
	}
	
	function checkBank(){
		$.ajax({
			type:'post',
			url:'/p2p_project/member_bankcards/checkBank',
			data:{
				id:$("#hid").val()
			},
			dataType:'json',
			success:function(data){
				var str="";
				var p="";
				if(data==1){
					p+="<p style='font-size: 1px; color:green'>已绑卡</p>";
					str+="<a href='#' class='renzheng' >已绑卡</a>";
				}
				if(data==0){
					p+="<p style='font-size: 1px; color:red'>未绑卡</p>";
					str+="<a href='#' class='renzheng' onclick='funbk()'>绑卡</a>";
				}
				$("#bk1").append(p);
				$("#bk2").append(str);
			}
		});
	}
	
</script>
<!-- 绑卡认证 -->
<div class="bk" style="display:none;position:absolute;left:40%;top:50%;width: 500px;height: 600px">
<form action="" method="post">
	<table width="100%" cellspacing="0" cellpadding="0" bgcolor="#F9F9F9" class="yj">
	<tr bgcolor="#333333"><td style="color:#FFFFFF;width: 230px"><font size="5">用户绑卡</font></td>
	<td align="right" style="color:#FFFFFF" colspan="2">
	<input type="button" onclick="bkClose()"style="background:#333333;color:#FFFFFF" value="&nbsp;X&nbsp;" class="but">
	</td></tr>
	
	<tr>
	<td align="right">银行卡类型：</td>
	<td>
	<select id="type" name="type">
		<option value="-1">请选择--</option>
		<option value="农业银行">农业银行</option>
		<option value="建设银行">建设银行</option>
		<option value="工商银行">工商银行</option>
		<option value="邮政储蓄">邮政储蓄</option>
		<option value="华夏银行">华夏银行</option>
		<option value="农商银行">农商银行</option>
		<option value="湖北银行">湖北银行</option>
		<option value="浦发银行">浦发银行</option>
	</select>
	</td>
	<td align="left"><font size="1" color="red"><span id="sp1"></span></font></td>
	</tr>
	
	<tr>
	<td align="right">卡号：</td>
	<td><input type="text" id="card_no" name="card_no"></td>
	<td align="left"><font size="1" color="red"><span id="kh"></span></font></td>
	</tr>

	<tr>
	<td align="right">开户行所在地：</td>
	<td>
	<div id="citySelect"  style="float:left;margin-left: 15px;">                     
         <select class="prov" id="province">
         <option value="-1">请选择</option>
         </select>  
         <select class="city" disabled="disabled" id="city"></select>  
         <select class="dist" disabled="disabled" id="county"></select>  
 	</div>
	</td>
	<td align="left"><font size="1" color="red"><span id="sp2"></span></font></td>
	</tr>

	<tr><td align="center" colspan="3">
	<input type="button" onclick="checkFormat()" value="确认">
	</td></tr>
	</table>
	</form>
</div>
 <!-- 绑卡认证 -->       
<!-- -------------------------------------------------------------绑定手机号------------------------------------------------------------- -->
<script type="text/javascript">
	function funPhone(){
   		$(".phone").show();
	}
	function closePhone(){
		$(".phone").hide();
	}

	function checkPhone(){
	//检查用户是否绑定手机号
	$.ajax({
		type:'post',
		url:'/p2p_project/member/checkPhone',
		data:{
			id:$("#hid").val()
		},
		dataType:'json',
		success:function(data){
			var p="";
			var a="";
			if(data == 1){//已绑定
				p+="<p style='font-size: 1px; color:green'>已绑定</p>";
				a+="<a href='#' class='renzheng' >已绑定</a>";
			}
			if(data == 0){//未绑定
				p+="<p style='font-size: 1px; color:red'>未绑定</p>";
				a+="<a href='#' class='renzheng' onclick='funPhone()'>绑定</a>";
			}
			$("#Pphone").append(p);
			$("#Aphone").append(a);
		}
	});
}
	//绑定手机号
	function bdPhone(){
		alert("bdPhone")
		alert($("#mobile_phone").val());
		if($("#mobile_phone").val().length != 11){
			$("#phone").html("必须等于11位");
		}
		if($("#mobile_phone").val() == null || $("#mobile_phone").val() == ''){
			$("#phone").html("不能为空");
		}
		
		$.ajax({
			type:'post',
			url:'/p2p_project/member/bdPhone',
			data:{
				id:$("#hid").val(),
				phone:$("#mobile_phone").val()
			},
			dataType:'json',
			success:function(data){
				if(data == 1){
					$(".phone").hide();
					alert("绑定手机号成功!");
					window.location.reload();
				}
				if(data == 0){
					alert("绑定手机号失败!");
				}
			}
		});
	}

</script>
<div class="phone" style="display:none;position:absolute;left:40%;top:50%;width: 500px;">
<form action="" method="post">
	<table width="100%" cellspacing="0" cellpadding="0" bgcolor="#F9F9F9" class="yj">
	<tr bgcolor="#333333"><td style="color:#FFFFFF;width: 230px"><font size="5">用户手机号绑定</font></td>
	<td align="right" style="color:#FFFFFF" colspan="2">
	<input type="button" onclick="closePhone()"style="background:#333333;color:#FFFFFF" value="&nbsp;X&nbsp;" class="but">
	</td></tr>
	
	<tr>
	<td align="right">手机号：</td>
	<td><input type="text" id="mobile_phone" name="mobile_phone"></td>
	<td align="left"><font size="1" color="red"><span id="phone"></span></font></td>
	</tr>
	
	<tr><td align="center" colspan="3">
	<input type="button" onclick="bdPhone()" value="确认">
	</td></tr>
	</table>
	</form>
</div>

<!-- -----------------------------------------------------------------修改密码----------------------------------------------------------------- -->
<script type="text/javascript">
	function funPwd(){
   	$(".pwd").show();
	}
	function closePwd(){
		$(".pwd").hide();
	}
	//验证旧密码
	function checkpwd(){
		if($("#password").val() == null || $("#password").val() == ''){
			$("#pwd").html("旧密码不能为空");
		}
		if($("#password").val().length != 6){
			$("#pwd").html("大于等于6位");
		}
	}
	//验证新密码
	function checkNewPwd(){
		if($("#newpassword").val() == null || $("#newpassword").val() == ''){
			$("#newpwd").html("新密码不能为空");
		}
		if($("#newpassword").val().length != 6){
			$("#newpwd").html("大于等于6位");
		}
	}
	//判断新密码两次输入的相同性
	function checkTwoNewPwd(){
		if($("#newpassword2").val() == null || $("#newpassword2").val() == ''){
			$("#newpwd2").html("不能为空");
		}
		if($("#newpassword2").val().length != 6){
			$("#newpwd2").html("大于等于6位");
		}
		if($("#newpassword").val() != $("#newpassword2").val()){
			alert("两次输入的新密码不一致！");
			return false;
		}
		if($("#password").val() == $("#newpassword2").val()){
			alert("新密码和旧密码不能一致！");
			return false;
		}
		$.ajax({
			type:'post',
			url:'/p2p_project/member/updatePwd',
			data:{
				id:$("#hid").val(),
				pwd:$("#newpassword2").val()
			},
			dataType:'json',
			success:function(data){
				if(data == 1){
					$(".pwd").hide();
					alert("密码修改完毕！");
					window.location.reload();
				}else{
					alert("密码修改失败！");
				}
			}
		});
		
	}
	
</script>
<div class="pwd" style="display:none;position:absolute;left:40%;top:50%;width: 500px;">
<form action="" method="post">
	<table width="100%" cellspacing="0" cellpadding="0" bgcolor="#F9F9F9" class="yj">
	<tr bgcolor="#333333"><td style="color:#FFFFFF;width: 230px"><font size="5">用户密码修改</font></td>
	<td align="right" style="color:#FFFFFF" colspan="2">
	<input type="button" onclick="closePwd()"style="background:#333333;color:#FFFFFF" value="&nbsp;X&nbsp;" class="but">
	</td></tr>
	
	<tr>
	<td align="right">旧密码：</td>
	<td><input type="password" id="password" name="password"></td>
	<td align="left"><font size="1" color="red"><span id="pwd"></span></font></td>
	</tr>
	
	<tr>
	<td align="right">新密码：</td>
	<td><input type="password" id="newpassword" name="newpassword" onclick="checkpwd()"></td>
	<td align="left"><font size="1" color="red"><span id="newpwd"></span></font></td>
	</tr>
	
		<tr>
	<td align="right">确认新密码：</td>
	<td><input type="password" id="newpassword2" name="newpassword2" onclick="checkNewPwd()"></td>
	<td align="left"><font size="1" color="red"><span id="newpwd2"></span></font></td>
	</tr>
	
	<tr><td align="center" colspan="3">
	<input type="button" onclick="checkTwoNewPwd()" value="确认">
	</td></tr>
	</table>
	</form>
</div>

<!-- -----------------------------------------------------------------设置提款密码--------------------------------------------------------------- -->       
 <script type="text/javascript">
	function funTkPwd(){
   	$(".tikuanpwd").show();
	}
	function CloseTkPwd(){
	$(".tikuanpwd").hide();
	}
	
	function funTkPwd2(){
	$(".tikuanpwd2").show();
	}
	function CloseTkPwd2(){
	$(".tikuanpwd2").hide();
	}
	
	function checkNull(){
		if($("#wp1").val() == null || $("#wp1").val() == ''){
			$("#tkpwd1").html("不能为空");
		}
		if($("#wp1").val().length != 6){
			$("#tkpwd1").html("大于等于6位");
		}
	}
	
	function checkWpNull(){
		if($("#wp").val() == null || $("#wp").val() == ''){
			$("#tkpwd").html("不能为空");
		}
		if($("#wp").val().length != 6){
			$("#tkpwd").html("大于等于6位");
		}
	}
	
	//判断新密码两次输入的相同性
	function checkTwoNewPwd(){
		if($("#wp").val() == $("#wp2").val()){
			alert("新密码和旧密码不能一致！");
			return false;
		}
		if($("#wp2").val() == null || $("#wp2").val() == ''){
			$("#tkpwd2").html("不能为空");
		}
		if($("#wp2").val().length != 6){
			$("#tkpwd2").html("大于等于6位");
		}
		if($("#wp1").val() != $("#wp2").val()){
			alert("两次输入的新密码不一致！");
			return false;
		}
		
		$.ajax({
			type:'post',
			url:'/p2p_project/member/updateTkPwd',
			data:{
				id:$("#hid").val(),
				pwd:$("#wp2").val()
			},
			dataType:'json',
			success:function(data){
				if(data == 1){
					$(".tikuanpwd").hide();
					alert("提款密码修改完毕！");
					window.location.reload();
				}else{
					alert("提款密码修改失败！");
				}
			}
		});		
	}

	//检查是否设置提款密码
	function checkPwd(){
		$.ajax({
			type:'post',
			url:'/p2p_project/member/checkTkpwd',
			data:{
				id:$("#hid").val()
			},
			dataType:'json',
			success:function(data){
				var p="";
				var a="";
				if(data == 1){//已绑定
					p+="<p style='font-size: 1px; color:green'>已设置</p>";
					a+="<a href='#' class='renzheng' onclick='funTkPwd2()'>修改</a>";
				}
				if(data == 0){//未绑定
					p+="<p style='font-size: 1px; color:red'>未设置</p>";
					a+="<a href='#' class='renzheng' onclick='funTkPwd()'>修改</a>";
				}
				$("#ptk").append(p);
				$("#atk").append(a);
			}
		});		
	}
	
</script>
<!-- 未设置提款密码的情况下 -->
<div class="tikuanpwd" style="display:none;position:absolute;left:40%;top:50%;width: 500px;">
<form action="" method="post">
	<table width="100%" cellspacing="0" cellpadding="0" bgcolor="#F9F9F9" class="yj">
	<tr bgcolor="#333333"><td style="color:#FFFFFF;width: 230px"><font size="5">设置提款密码</font></td>
	<td align="right" style="color:#FFFFFF" colspan="2">
	<input type="button" onclick="CloseTkPwd()"style="background:#333333;color:#FFFFFF" value="&nbsp;X&nbsp;" class="but">
	</td></tr>
	
	<tr>
	<td align="right">提款密码：</td>
	<td><input type="password" id="wp1" name="wp1"></td>
	<td align="left"><font size="1" color="red"><span id="tkpwd1"></span></font></td>
	</tr>
	<tr>
	<td align="right">确认提款密码：</td>
	<td><input type="password" id="wp2" name="wp2" onclick="checkNull()"></td>
	<td align="left"><font size="1" color="red"><span id="tkpwd2"></span></font></td>
	</tr>
	
	<tr><td align="center" colspan="3">
	<input type="button" onclick="checkTwoNewPwd()" value="确认">
	</td></tr>
	</table>
	</form>
</div>
<!-- 已设置提款密码的情况下 -->
<div class="tikuanpwd2" style="display:none;position:absolute;left:40%;top:50%;width: 500px;">
<form action="" method="post">
	<table width="100%" cellspacing="0" cellpadding="0" bgcolor="#F9F9F9" class="yj">
	<tr bgcolor="#333333"><td style="color:#FFFFFF;width: 230px"><font size="5">设置提款密码</font></td>
	<td align="right" style="color:#FFFFFF" colspan="2">
	<input type="button" onclick="CloseTkPwd2()"style="background:#333333;color:#FFFFFF" value="&nbsp;X&nbsp;" class="but">
	</td></tr>
		<tr>
	<td align="right">旧的提款密码：</td>
	<td><input type="password" id="wp" name="wp"></td>
	<td align="left"><font size="1" color="red"><span id="tkpwd"></span></font></td>
	</tr>
	<tr>
	<tr>
	<td align="right">提款密码：</td>
	<td><input type="password" id="wp1" name="wp1" onclick="checkWpNull()"></td>
	<td align="left"><font size="1" color="red"><span id="tkpwd1"></span></font></td>
	</tr>
	<tr>
	<td align="right">确认提款密码：</td>
	<td><input type="password" id="wp2" name="wp2" onclick="checkNull()"></td>
	<td align="left"><font size="1" color="red"><span id="tkpwd2"></span></font></td>
	</tr>
	
	<tr><td align="center" colspan="3">
	<input type="button" onclick="checkTwoNewPwd()" value="确认">
	</td></tr>
	</table>
	</form>
</div>
							

		<!-- --------------------------------------------我要提款----------------------------------------------------- -->
		<script type="text/javascript">
		//点击按钮触发  查询银行和银行卡号
		function tkCard(){
			ajaxTk();
		}
		function ajaxTk(){
			$.ajax({
				type:"post",
				url:"/p2p_project/member_bankcards/listmb",
				data:"id="+$("#hid").val(),
				dataType:"json",
				success:function(data){
					showTk(data);
				}
			});
		}
		function showTk(data){
			var str="";
			var meid="";
			for(var i=0;i<data.length;i++){
				str+="<strong>"+data[i].type+"-"+data[i].card_no+"</strong>";
				meid+="<p>"+data[i].member.id+"</p>";
			}
			$("#tkCard1").append(str);
			$("#tkCard2").append(meid);
		}
		
		function mytk(){
			alert("mytk");
			$.ajax({
				type:'post',
				url:'/p2p_project/member_account/tkAmountUpdate',
				data:{
					id:$("#hid").val(),
					amount:$("#wAmount").val(),
					pwd:$("#wPwd").val()
				},
				dataType:'json',
				success:function(data){
					if(data==1){
						alert("提款成功！");
						return false;
					}
					if(data==0){
						alert("提款密码验证错误！");
					}
				}
					
			});
		}
		
		</script>
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
								<td align="right">提款银行卡：</td>
								<td>
								<strong id="tkCard1"></strong>
								<div style="display: none"><p id="tkCard2"></p></div>
								</td>
							</tr>
							<tr>
								<td align="right">提款金额：</td>
								<td><input class="tytxt" type="number" id="wAmount"
									style="width: 250px"></td>
							</tr>
							<tr>
								<td align="right">提款密码：</td>
								<td><input class="tytxt" type="password" id="wPwd"
									style="width: 250px"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><button class="tybutton" id="withdrawConfirm" onclick="mytk()">提交</button></td>
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