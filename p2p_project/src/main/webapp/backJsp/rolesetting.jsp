<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>角色管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
<script src="/p2p_project/backStyle/js/bootstrap.js"></script>
<script src="/p2p_project/backStyle/js/bootstrap.min.js"></script>


<link href="/p2p_project/backStyle/css/bootstrap.css" type='text/css' />
<link href="/p2p_project/backStyle/css/bootstrap.min.css"
	type='text/css' />

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
							<span class="glyphicon glyphicon-play" style="margin-right: 5px"></span>角色管理
						</h2>
					</div>
				</div>

				<!--开头-->
				<script type="text/javascript">
					$(function() {
						$("#btn1").click(function() {
							$('#mymodel').modal("show");
						});
						
						$("#btn3").click(function(){
							$("#form1").attr("action","/p2p_project/back/addRole");
							$("#form1").submit();
						});
					});
				</script>

				<!--  model 窗口 开始 -->
				<div style="top: 150px; left: 200px;" class="modal fade"
					id="mymodel" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">

					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h3 class="modal-title" id="myModalLabel"><b>添加角色</b></h3>
							</div>
							<div class="modal-body">
								<form name="form1" id="form1" method="post">
									<div class="tablelist">
										<table class="table  tablebox">
											<tr class="text-center" bgcolor="#f7f7f7">
												<td>角色名：<input type="text" name="cname" required></td>
											</tr>
											<tr class="text-center" bgcolor="#f7f7f7">
												<td>英文名：<input type="text" name="ename" required></td>
											</tr>
											<tr class="text-center" bgcolor="#f7f7f7">
												<td>描&nbsp;&nbsp;述：<input type="text" name="remark" required></td>
											</tr>
										</table>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button id="btn3" type="button" class="btn btn-primary">提交</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>

			<!--  model 窗口 结束 -->


			<div class="tablelist">
			<table class="table">
					<tr>
					<td width="25%">&nbsp;</td>
					<td width="20%">&nbsp;</td>
					<td width="20%">&nbsp;</td>
					<td width="20%">&nbsp;</td>
					<td align="center">
					  <button type="button" id="btn1" name="btn1"
					    class="btn btn-primary btn-sm">添加角色</button></td>
					</tr>
			</table>
 
				<table border="1" class="table table-bordered tablebox">
					<tr class="text-center" bgcolor="#f7f7f7">
						<td>序 号</td>
						<td>角色名</td>
						<td>英文名</td>
						<td>角色描述</td>
						<td>创建时间</td>
						<td>操 作</td>
					</tr>
					<c:forEach items="${list}" var="r" varStatus="stat">
						<tr class="text-center" bgcolor="#f7f7f7">
							<td>${stat.index+1}</td>
							<td>${r.cname}</td>
							<td>${r.ename}</td>
							<td>${r.remark}</td>
							<td>${r.create_date}</td>
							<td>
								<button type="button" id="btn2" name="btn1"
									class="btn btn-primary btn-sm">权限配置</button>
							</td>
						</tr>
					</c:forEach>
				</table>

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