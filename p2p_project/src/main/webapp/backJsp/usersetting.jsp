<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>用户管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" aria-expanded="false"><i
					class="fa fa-comments-o"></i><span class="badge">4</span></a>
				<ul class="dropdown-menu">
					<li class="dropdown-menu-header"><strong>Messages</strong>
						<div class="progress thin">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
								style="width: 40%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/1.png" alt="" />
							<div>New message</div> <small>1 minute ago</small> <span
							class="label label-info">NEW</span>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/2.png" alt="" />
							<div>New message</div> <small>1 minute ago</small> <span
							class="label label-info">NEW</span>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/3.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/4.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/5.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/pic1.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="dropdown-menu-footer text-center"><a href="#">View
							all messages</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle avatar"
				data-toggle="dropdown"><img
					src="/p2p_project/backStyle/images/1.png" alt="" /><span
					class="badge">9</span></a>
				<ul class="dropdown-menu">
					<li class="dropdown-menu-header text-center"><strong>Account</strong>
					</li>
					<li class="m_2"><a href="#"><i class="fa fa-bell-o"></i>
							Updates <span class="label label-info">42</span></a></li>
					<li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i>
							Messages <span class="label label-success">42</span></a></li>
					<li class="m_2"><a href="#"><i class="fa fa-tasks"></i>
							Tasks <span class="label label-danger">42</span></a></li>
					<li><a href="#"><i class="fa fa-comments"></i> Comments <span
							class="label label-warning">42</span></a></li>
					<li class="dropdown-menu-header text-center"><strong>Settings</strong>
					</li>
					<li class="m_2"><a href="#"><i class="fa fa-user"></i>
							Profile</a></li>
					<li class="m_2"><a href="#"><i class="fa fa-wrench"></i>
							Settings</a></li>
					<li class="m_2"><a href="#"><i class="fa fa-usd"></i>
							Payments <span class="label label-default">42</span></a></li>
					<li class="m_2"><a href="#"><i class="fa fa-file"></i>
							Projects <span class="label label-primary">42</span></a></li>
					<li class="divider"></li>
					<li class="m_2"><a href="#"><i class="fa fa-shield"></i>
							Lock Profile</a></li>
					<li class="m_2"><a href="#"><i class="fa fa-lock"></i>
							Logout</a></li>
				</ul></li>
		</ul>
		
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
							<span class="glyphicon glyphicon-play" style="margin-right: 5px"></span>账户管理
						</h2>
					</div>
				</div>
				<!--开头-->
				<script type="text/javascript">
				  $(function(){
					  $("#btn1").click(function(){
						  location="/p2p_project/usersetting/toadd";
					  });
				  });
				</script>
				
				<div class="tablelist">
					<form name="form1" id="form1" method="post">
						<table class="table">
							<tr>
								<td style="width: 150px; padding-left: 30px;">
								  <button type="button" id="btn1" name="btn1" class="btn btn-primary btn-sm">添加用户</button>
								</td>
								<td style="padding-left: 30px;">&nbsp;</td>
								<td style="width: 150px; padding-left: 30px;"><h4>用户名：</h4></td>
								<td style="width: 180px">
								<input type="text" name="qname"
									class="form-control" placeholder="用户名" value="${qname}"></td>

								<td style="width: 150px; padding-left: 30px"><h4>注册时间：</h4></td>
								<td>
									<div class="form-group" style="width: 150px">
										<!-- 时间样式 -->
										<input type="date" class="form-control time"
											ng-model="model.date" name="qtime">
									</div>
								</td>
								<td class="pull-right" style="padding-right: 10px">
									<button type="submit" id="btn2" name="btn2" class="btn btn-primary btn-sm">查询</button>
								</td>
								<td>
									<button type="button" class="btn btn-primary btn-sm"
										onclick="$('#form1').find(':input').not(':button, :submit, :reset').val('').removeAttr('checked').removeAttr('selected');">重置</button>
								</td>
							</tr>
						</table>

						<table border="1" class="table table-bordered tablebox">
							<tr class="text-center" bgcolor="#f7f7f7">
								<td>序 号</td>
								<td>用户名</td>
								<td>手机号码</td>
								<td>账号状态</td>
								<td>删除标志</td>
								<td>身 份</td>
								<td>注册时间</td>
								<!--<td>修改时间</td>-->
								<td>操 作</td>
							</tr>
							<c:forEach items="${list }" var="u" varStatus="stat">
								<tr class="text-center" bgcolor="#f7f7f7">
									<td>${stat.index+1}</td>
									<td>${u.user_name }</td>
									<td>${u.mobile_phone }</td>
									<td><c:if test="${u.status==2}"><font color="red">删除</font></c:if>
									<c:if test="${u.status==1}">正常</c:if> <c:if
											test="${u.status==0}">禁用</c:if></td>
											
									<td><c:if test="${u.del_flag==1}"><font color="red">以删除</font></c:if>
									  <c:if test="${u.del_flag==0}">未删除</c:if>
									 </td>
									<td><c:if test="${u.identity==0}">超级管理员</c:if> <c:if
											test="${u.identity==1}">普通管理员</c:if> <c:if
											test="${u.identity==2}">普通用户</c:if></td>
									<td>${u.create_date }</td>
									<!-- <td>${u.update_date }</td> -->
									<td>
									<c:if test="${u.del_flag==1}">修改</c:if>
									<c:if test="${u.del_flag!=1}">
									<a href="/p2p_project/usersetting/bfupdate/${u.id}">修改</a></c:if> |
									<c:if test="${u.del_flag==1}">删除</c:if>
									<c:if test="${u.del_flag!=1}">
									    <a href="/p2p_project/usersetting/delete/${u.id}" onclick="confirm('确认删除  ${u.user_name} 吗？')">删除</a></td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
					</form>
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