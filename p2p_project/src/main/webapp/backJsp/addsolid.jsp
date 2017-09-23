<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>添加用户</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<!-- Custom CSS -->
<link href="/p2p_project/backStyle/css/style.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>

<!---//webfonts--->
<!-- Bootstrap Core JavaScript -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>


<script type="text/javascript" charset="utf-8"
	src="/p2p_project/backStyle/editor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/p2p_project/backStyle/editor/ueditor.all.min.js">
	
</script>
<script type="text/javascript" charset="utf-8"
	src="/p2p_project/backStyle/editor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" charset="utf-8">
	var ue = UE.getEditor("myUeditor1", {
		initialFrameWidth : 1200,
		initialFrameHeight : 300
	});
	var ue = UE.getEditor("myUeditor2", {
		initialFrameWidth : 1200,
		initialFrameHeight : 300
	});
	var ue = UE.getEditor("myUeditor3", {
		initialFrameWidth : 1200,
		initialFrameHeight : 300
	});
</script>


</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="top1 navbar navbar-default navbar-static-top"
			role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/p2p_project/backJsp/indexback.jsp">YJ
				Finance</a>
		</div>
		<!-- /.navbar-header -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href=""><i class="fa fa-dashboard fa-fw nav_icon"></i>回到首页</a>
					</li>
					<li><a href="#"><i class="fa fa-laptop nav_icon"></i>理财产品<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/grids.jsp">固收类</a></li>
						</ul>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/grids.jsp">私募/股权类</a></li>
						</ul>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/grids.jsp">海外配置</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-indent nav_icon"></i>钱包管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/graphs.jsp">钱包缴费记录</a></li>
							<li><a href="/p2p_project/backJsp/typography.jsp">Typography</a>
							</li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-envelope nav_icon"></i>学院管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/inbox.jsp">资讯分类</a></li>
							<li><a href="/p2p_project/backJsp/compose.jsp">资讯管理</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="/p2p_project/backJsp/widgets.jsp"><i
							class="fa fa-flask nav_icon"></i>Widgets</a></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-check-square-o nav_icon"></i>会员管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/member/listMember">账号管理</a></li>
							<li><a
								href="/p2p_project/member_bankcards/listMember_Bankcards">绑卡管理</a>
							</li>
							<li><a href="/p2p_project/subject/listSubject">付息计划</a></li>
							<li><a
								href="/p2p_project/member_deposit_record/listMember_deposit_record">充值管理</a>
							</li>
							<li><a
								href="/p2p_project/member_withdraw_record/listMember_withdraw_record">提现管理</a>
							</li>
							<li><a href="/p2p_project/award_records/listAward_records">邀请奖励</a>
							</li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-table nav_icon"></i>盈加统计<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/basic_tables.jsp">财务统计</a>
							</li>
							<li><a href="/p2p_project/backJsp/basic_tables.jsp">用户综合统计</a>
							</li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-flask nav_icon"></i>盈加设置<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/media.jsp">公告管理</a></li>
							<li><a href="/p2p_project/backJsp/login.jsp">意见反馈</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>系统设置<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/usersetting.jsp">账户设置</a>
							</li>
							<li><a href="/p2p_project/backJsp/login.jsp">角色设置</a></li>
							<li><a href="/p2p_project/backJsp/login.jsp">密码设置</a></li>
						</ul> <!-- /.nav-second-level --></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>
		<div id="page-wrapper">
			<div class="graphs">
				<div class="widget_head">
					<div class="box-right-main">
						<h2>
							<span class="glyphicon glyphicon-play" style="margin-right: 5px"></span>添加产品
						</h2>
					</div>
				</div>
				<hr>
				<!--开头-->

				<div class="tablelist">
					<form class="form-group" name="form1"
						action="/p2p_project/product/saveSolid" id="form1" method="post">
						<!-- table1 开始 -------------------------------------------------------------------------------->
						<table class="table table-condensed" border="0">
							<tr class="text-center">
								<td width="10%">名 称：</td>
								<td align="left"><input style="height: 30px; width: 260px;"
									type="text" name="name" required placeholder="请输入文本"></td>
								<td width="10%">类 型：</td>
								<td align="left"><select
									style="height: 30px; width: 260px;" name="type">
										<option value="-1">请选择</option>
										<option value="0" ${s2==0?"selected":""}>固收类</option>
										<option value="1" ${s2==1?"selected":""}>P2P车贷</option>
										<option value="2" ${s2==2?"selected":""}>P2P房贷</option>
								</select></td>
							</tr>
							<tr class="text-center">
								<td width="10%">合同编号：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="text"
									name="serial_no" required placeholder="请输入文本"></td>
								<td width="10%">借款用途：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="text" name="purpose"
									required placeholder="请输入文本"></td>
							</tr>
							<tr class="text-center">
								<td width="10%">起投金额(元)：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="number"
									name="floor_amount" required placeholder="请输入文本"></td>
								<td width="10%">保障方式：</td>
								<td width="20%" align="left"><select
									style="height: 30px; width: 260px;" name="safeguard_way">
										<option value="-1">请选择</option>
										<option value="0" ${s2==0?"selected":""}>企业担保</option>
										<option value="1" ${s2==1?"selected":""}>银行监管</option>
								</select></td>
							</tr>
							<tr class="text-center">
								<td width="10%">年化收益(%)：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="number"
									name="year_rate" required placeholder="请输入文本"></td>
								<td width="10%">可使用体验金：</td>
								<td width="20%" align="left"><select
									style="height: 30px; width: 260px;" name="exper_status">
										<option value="-1">请选择</option>
										<option value="0" ${s2==0?"selected":""}>否</option>
										<option value="1" ${s2==1?"selected":""}>是</option>
								</select></td>
							</tr>
							<tr class="text-center">
								<td width="10%">投资期限(天)：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="number" name="period"
									required placeholder="请输入文本"></td>
								<td width="10%">借款人姓名：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="text"
									name="borrowername" required placeholder="请输入文本"></td>
							</tr>
						</table>

						<!-- table1 结束 ---------------------------------------------------------------------------------->
						<hr>

						<!-- 特定属性 开始 --------------------------------------------------------------------->
						<div class="widget_head">
							<div class="box-right-main">
								<h2>
									<span class="glyphicon glyphicon-play"
										style="margin-right: 5px"></span>特定属性
								</h2>
							</div>
						</div>

						<table class="table table-condensed" border="0">
							<tr class="text-center">
								<td width="10%">责权编号：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="text" name=""
									placeholder="请输入文本"></td>
								<td width="10%">企业认证：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="text"
									name=""  placeholder="请输入文本"></td>
							</tr>
							<tr class="text-center">
								<td width="10%">责权人：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="text" name="period"
									 placeholder="请输入文本"></td>
								<td width="10%">保障平台：</td>
								<td width="20%" align="left"><input
									style="height: 30px; width: 260px;" type="text"
									name=""  placeholder="请输入文本"></td>
							</tr>
						</table>
						<!-- 特定属性 结束-------------------------------------------------------------------- -->
						<hr>
						<!-- 产品速揽  开始-------------------------------------------------------------------- -->

						<div class="widget_head">
							<div class="box-right-main">
								<h2>
									<span class="glyphicon glyphicon-play"
										style="margin-right: 5px"></span>产品速揽
								</h2>
							</div>
						</div>

						<table class="table table-condensed" border="0">
							<tr class="text-center">
								<td><textarea id="myUeditor1" name="comment"></textarea></td>
							</tr>
						</table>
						<!-- 产品速揽 结束-------------------------------------------------------------------- -->

						<hr>
						<!-- 项目详情  开始-------------------------------------------------------------------- -->

						<div class="widget_head">
							<div class="box-right-main">
								<h2>
									<span class="glyphicon glyphicon-play"
										style="margin-right: 5px"></span>项目详情
								</h2>
							</div>
						</div>

						<table class="table table-condensed" border="0">
							<tr class="text-center">
								<td><textarea id="myUeditor2" name="projectDetails"></textarea></td>
							</tr>
						</table>
						<!-- 项目详情 结束-------------------------------------------------------------------- -->

						<hr>
						<!-- 安全保障    开始-------------------------------------------------------------------- -->

						<div class="widget_head">
							<div class="box-right-main">
								<h2>
									<span class="glyphicon glyphicon-play"
										style="margin-right: 5px"></span>安全保障
								</h2>
							</div>
						</div>

						<table class="table table-condensed" border="0">
							<tr class="text-center">
								<td><textarea id="myUeditor3" name="safetyControl"></textarea></td>
							</tr>
							<tr class="text-center">
								<td>
									<button style="width: 150px; height: 50px;" type="submit"
										id="btn1" name="btn1" class="btn btn-primary btn-sm">
										<font size="4">保 &nbsp;存</font>
									</button>
								</td>
							</tr>
						</table>
						</form>
				</div>
			</div>
		</div>
	</div>



	<!-- Nav CSS -->
	<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">
	<!-- Metis Menu Plugin JavaScript -->
	<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
	<script src="/p2p_project/backStyle/js/custom.js"></script>
</body>
</html>