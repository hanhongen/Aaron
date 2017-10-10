<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>提现管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<!-- Custom CSS -->
<link href="/p2p_project/backStyle/css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css"> 
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>

<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script type="text/javascript">

	function getTime()
	{
	    var time = new Date();
	    $("#times").html(time.toLocaleString());
	}
	
	
	$(function(){
	    setInterval("getTime()",1000);
	});


</script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
          <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <a class="navbar-brand" href="/p2p_project/user/index/${user.id}">回到首页</a>
            </div>
            <!-- /.navbar-header -->
           
             <span class="navbar-right" ><br>
             	
	        	<p style="color: white;">用户：${user.user_name} | 时间：<span id="times"></span></p>
	        	
	      		</span>
          
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                                    <ul class="nav" id="side-menu">
                        <li>
                             <a href=""><i class="fa fa-dashboard fa-fw nav_icon"></i>后台首页</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-laptop nav_icon"></i>理财产品<span class="fa arrow"></span></a>
                          <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/product/showSolid">固收类</a>
                                </li>
                            </ul>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="#">私募/股权类</a>
                                </li>
                            </ul>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">海外配置</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                             <a href="#"><i class="fa fa-indent nav_icon"></i>钱包管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/test/members">钱包缴费记录</a>
                                </li>
                                <li>
                                    <a href="#">Typography</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>学院管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/news_type/news_typelist/${user.id }">资讯分类</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/news/listnews/${user.id }">资讯管理</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                       
                         <!-- ----------------------------------------------------- -->
                         <li>
                            <a href="#"><i class="fa fa-check-square-o nav_icon"></i>会员管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/member/listMember">账号管理</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/member_bankcards/listMember_Bankcards">绑卡管理</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/subject/listSubject">付息计划</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/member_deposit_record/listMember_deposit_record">充值管理</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/member_withdraw_record/listMember_withdraw_record">提现管理</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/award_records/listAward_records">邀请奖励</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-flask nav_icon"></i>盈加设置<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/test/test1">公告管理</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/test/list">意见反馈</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>系统设置<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                 <li>
                                    <a href="/p2p_project/usersetting/showuser">账户设置</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/back/showRole">角色设置</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/backJsp/updatePwd.jsp">密码设置</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        
        
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	    <!-- --------------------------------------------------------------------------------------------------------------------------- -->       
			 <div class="box-right-main">
                        <h2><span class="glyphicon glyphicon-play" style="margin-right:5px"></span>账号详情</h2>
                      <div class="tablelist">
<!--    <p class="active-tab"><strong>激活的标签页</strong>：<span></span></p> -->
<!--    <p class="previous-tab"><strong>前一个激活的标签页</strong>：<span></span></p><hr> -->
   
   <ul id="myTab" class="nav nav-tabs">
   <li><a href="#zj" data-toggle="tab">资金信息</a></li>
   <li><a href="#zh" data-toggle="tab">账号信息</a></li>
<!--    <li><a href="#lc" data-toggle="tab">理财师信息</a></li> -->
   <li><a href="#tz" data-toggle="tab">投资记录</a></li>
   <li><a href="#tx" data-toggle="tab">提现记录</a></li>
   <li><a href="#cz" data-toggle="tab">充值记录</a></li>
   <li><a href="#qb" data-toggle="tab">钱包记录</a></li>
   </ul>
   
   <div id="myTabContent" class="tab-content">
   
      <div class="tab-pane fade in active" id="zj">
      <table class="table table-condensed">
   <caption>资金信息</caption><!-- 资金信息 -->
   <thead>
      <tr>
         <th>可用余额</th>
         <th>冻结金额</th>
         <th>累计收益</th>
         <th>投资总额</th>
         <th>红包金额</th>
         <th>体验金</th>
      </tr>
   </thead>
   <tbody>
   <c:forEach items="${lista }" var="lm" varStatus="stat">
      <tr>
         <td>${lm.useable_balance }</td>
         <td>${lm.imuseale_balance }</td>
         <td>${lm.totl_profit }</td>
         <td>${lm.invest_amount }</td>
         <td>${lm.bonus_amount }</td>
         <td>${lm.bbin_amount }</td>
      </tr>
      </c:forEach>
   </tbody></table>
   </div>
   
     <div class="tab-pane fade" id="zh">
     <table class="table table-condensed">
   <caption>账号信息</caption><!-- 账号信息 -->
   <thead>
      <tr>
         <th>用户名</th>
         <th>手机号</th>
         <th>真实姓名</th>
         <th>身份证</th>
         <th>邀请码</th>
         <th>被邀请码</th>
         <th>添加时间</th>
      </tr>
   </thead>
   <tbody>
    <c:forEach items="${listMemberId }" var="lm" varStatus="stat">
      <tr>
         <td>${lm.name }</td>
         <td>${lm.mobile_phone }</td>
         <td>${lm.name }</td>
         <td>${lm.identity }</td>
         <td>${lm.invitationcode }</td>
         <td>${lm.invitedcode }</td>
         <td>${lm.create_date }</td>
      </tr>
      </c:forEach>
   </tbody></table>
   </div>
   
<!--    <div class="tab-pane fade" id="lc"> -->
<!--        <table class="table table-condensed"> -->
<%--    <caption>理财师信息</caption><!-- 理财师信息 --> --%>
<!--    <thead> -->
<!--       <tr> -->
<!--          <th>真实姓名</th> -->
<!--          <th>机构名称</th> -->
<!--          <th>我的名片</th> -->
<!--          <th>邮寄地址</th> -->
<!--          <th>添加时间</th> -->
<!--       </tr> -->
<!--    </thead> -->
<!--    <tbody> -->
<!--       <tr> -->
<!--          <td></td> -->
<!--          <td></td> -->
<!--          <td></td> -->
<!--          <td></td> -->
<!--          <td></td> -->
<!--       </tr> -->
<!--    </tbody></table> -->
<!--    </div> -->
   
   <div class="tab-pane fade" id="tz"><!-- 投资记录 -->
       <table class="table table-condensed">
   <caption>投资记录</caption><!-- 投资记录 -->
   <thead>
      <tr><!-- subject_purchase_record(标的购买表) -->
         <th>序号</th>
         <th>投资编号</th>
         <th>投资金额</th>
         <th>投资状态</th> 
         <th>投资标的名称</th>
          <th>投资收益</th><!--amount` decimal(16,4)  购买金额',*year_rate` decimal(16,4)  年化率'*购买天数  -->
         <th>投资时间</th>
      </tr>
   </thead>
   <tbody>
   <c:forEach items="${listSPR }" var="lm" varStatus="stat">
      <tr>
         <td>${stat.index+1 }</td>
         <td>${lm.serial_number }</td>
         <td>${lm.amount }</td>
         <td>
            <c:if test="${lm.subject.status ==0}">未开始</c:if>
            <c:if test="${lm.subject.status ==1}">募集中</c:if>
            <c:if test="${lm.subject.status ==2}">已结束</c:if>
         </td>
         <td>${lm.subject.name }</td>
<%--          <td>${lm.amount*lm.subject.year_rate/365*dayCount }</td><!-- 投资金额*年化率/365*perior --> --%>
		<td>${result }</td>
         <td>${lm.create_date }</td>
      </tr>
      </c:forEach>
   </tbody></table>
   </div>
   
   <div class="tab-pane fade" id="tx"><!-- 提现记录 -->
     <table class="table table-condensed">
   <caption>提现记录</caption><!-- 提现记录  -->
   <thead>
      <tr>
         <th>序号</th>
         <th>提现编号</th>
         <th>提现金额</th>
         <th>提现状态</th>
         <th>提现银行</th>
         <th>提现卡号</th>
         <th>提现时间</th>
      </tr>
   </thead>
   <tbody>
    <c:forEach items="${listmwr }" var="lm" varStatus="stat">
      <tr>
         <td>${stat.index+1 }</td>
         <td>${lm.serial_number }</td>
         <td>${lm.amount }</td>
         <td>
         <c:if test="${lm.status == 0}">待审核</c:if>
         <c:if test="${lm.status == 1}">已打款</c:if>
         <c:if test="${lm.status == 2}">打款中</c:if>
         <c:if test="${lm.status == 3}">打款失败</c:if>
         </td>
         <td>${lm.bank_name }</td>
         <td>${lm.bank_card }</td>
         <td>${lm.create_date }</td>
      </tr>
      </c:forEach>
   </tbody></table>
   </div>
   
   <div class="tab-pane fade" id="cz"><!-- 充值记录 -->
      <table class="table table-condensed">
   <caption>充值记录</caption><!-- 充值记录  -->
   <thead>   
      <tr>
         <th>序号</th>
         <th>充值编号</th>
         <th>充值金额</th>
         <th>充值状态</th>
         <th>充值渠道</th>
         <th>充值渠道编号</th>
         <th>充值时间</th>
      </tr>      
   </thead>
   <tbody>
   <c:forEach items="${listmdr }" var="lm" varStatus="stat">
      <tr>
         <td>${stat.index+1 }</td>
         <td>${lm.seril_number }</td>
         <td>${lm.amount }</td>
         <td>
         <c:if test="${lm.status == 0}">待付款</c:if>
         <c:if test="${lm.status == 1}">完成</c:if>
         </td>
         <td>${lm.pay_channel_name }</td>
         <td>${lm.pay_channel_order_no }</td>
         <td>${lm.create_date }</td>
      </tr>
      </c:forEach>
   </tbody></table>
   </div>
   
   <div class="tab-pane fade" id="qb"><!-- 钱包记录 -->
      <table class="table table-condensed">
   <caption>钱包记录</caption><!-- 钱包记录  -->
   <thead>
      <tr>
         <th>序号</th>
         <th>交易编号</th>
         <th>交易金额</th>
         <th>交易状态</th>
         <th>交易分类</th>
         <th>交易名称</th>
         <th>交易时间</th>
      </tr>
   </thead>
   <tbody>
   <c:forEach items="${listmtr }" var="lm" varStatus="stat">
      <tr>
         <td>${stat.index+1 }</td>
         <td>${lm.trade_no }</td>
         <td>${lm.amount }</td>
         <td>
         <c:if test="${lm.trade_status == 0}">交易结束</c:if>
         <c:if test="${lm.trade_status == 1}">交易异常</c:if>
         </td>
         <td>
         <c:if test="${lm.trade_type == 0}">固收类</c:if>
         <c:if test="${lm.trade_type == 1}">p2p房贷</c:if>
         <c:if test="${lm.trade_type == 2}">p2p车贷</c:if>
         </td>
         <td>${lm.trade_name }</td>
         <td>${lm.create_date }</td>
      </tr>
      </c:forEach>
   </tbody></table>
   </div>
   </div>
   
   
  	 <!-- --------------------------------------------------------------------------------------------------------------------------- -->   
    <div class="copy_layout">
      <p>Copyright Â© 2015 Modern. All Rights Reserved | Design by  </p>
   </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
<script src="/p2p_project/backStyle/js/custom.js"></script>
<script type="text/javascript">
function fun(){
		window.location.reload();//刷新页面
}
</script>
</body>
</html>
