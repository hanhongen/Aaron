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
									<c:if test="${u.status==1}">禁用</c:if> <c:if
											test="${u.status==0}">正常</c:if></td>
											
									<td><c:if test="${u.del_flag==1}"><font color="red">以删除</font></c:if>
									  <c:if test="${u.del_flag==0}">未删除</c:if>
									 </td>
									<td><c:if test="${u.identity==1}">系统管理员</c:if> <c:if
											test="${u.identity==2}">普通管理员</c:if> <c:if
											test="${u.identity==3}">普通用户</c:if></td>
									<td>${u.create_date }</td>
									<!-- <td>${u.update_date }</td> -->
									<td>
									<c:if test="${u.del_flag==1}">修改</c:if>
									<c:if test="${u.del_flag!=1}">
									<a href="/p2p_project/usersetting/bfupdate/${u.id}">修改</a></c:if> |
									<c:if test="${u.del_flag==1}">
									删除</c:if>
									<c:if test="${u.del_flag!=1}">
									    <a href="/p2p_project/usersetting/delete/${u.id}" onclick="return confirm('确认删除  ${u.user_name} 吗？')">删除</a></td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
					</form>
				</div>
			</div>
		</div></div>
		
		
	
		<!-- Nav CSS -->
		<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">
		<!-- Metis Menu Plugin JavaScript -->
		<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
		<script src="/p2p_project/backStyle/js/custom.js"></script>
</body>
</html>