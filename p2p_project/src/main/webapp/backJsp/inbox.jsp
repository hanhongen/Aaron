<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">
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
<script type="text/javascript"
	src="/p2p_project/backStyle/js/jquery.min.js"></script>
<script type="text/javascript"
	src="/p2p_project/backStyle/js/bootstrap.min.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<link href="/p2p_project/backStyle/css/bootstrap.css" rel='stylesheet'>
<link id="bs-css"
	href="/p2p_project/backStyle/css/bootstrap-cerulean.min.css"
	rel="stylesheet">
<link href="/p2p_project/backStyle/css/charisma-app.css"
	rel="stylesheet">
<link href='/p2p_project/backStyle/css/jquery.noty.css' rel='stylesheet'>
<link href='/p2p_project/backStyle/css/noty_theme_default.css'
	rel='stylesheet'>
<link href='/p2p_project/backStyle/css/elfinder.min.css'
	rel='stylesheet'>
<link href='/p2p_project/backStyle/css/elfinder.theme.css'
	rel='stylesheet'>
<link href='/p2p_project/backStyle/css/jquery.iphone.toggle.css'
	rel='stylesheet'>
<link href='/p2p_project/backStyle/css/uploadify.css' rel='stylesheet'>
<link href='/p2p_project/backStyle/css/animate.min.css' rel='stylesheet'>
<link rel="shortcut icon" href="/p2p_project/backStyle/img/favicon.ico">

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

		<script type="text/javascript">
			$(function() {
				$("#btn1").click(function() {
					$('#myModal').modal("show");
				});
			});
		</script>

		<!--           sssss             -->
		<div id="page-wrapper">
			<div class="graphs">
			
<!-- model开始 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<a class="close" data-dismiss="modal"></a>
								<h4 class="modal-title" id="myModalLabel">新闻分类添加</h4>
							</div>
							<div class="modal-body">
								<form action="/p2p_project/news_type/news_typesave"
									method="post" enctype="multipart/form-data">
									<table border="0" cellpadding="4" bordercolor="#666666">
										<tr>
											<td>名称:<input type="text" name="name">
											</td>
											<td>简介:<input type="text" name="info">
											</td>
											<td>内容:<input type="text" name="text"></td>
										</tr>

										<tr>
											<td>页面类型:<input type="text" name="pagetype">
											</td>

											<td>封面图片:<input type="file" name="file"></td>
										</tr>
										<tr>
											<td>链接:<input type="text" name="link">
											</td>
											<td>备注:<input type="text" name="note">
											</td>
											<td>排序:<input type="text" name="sort"
												onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');">
											</td>
										</tr>

										<tr>
											<td>页面seo标题:<input type="text" name="seotitle">
											</td>
											<td>seo关键字:<input type="text" name="seokey">
											</td>
											<td>seo描述:<input type="text" name="seodes"></td>
										</tr>
										<tr>
											<td>添加人ID:<input type="text" name="addid" value="${users.id}" readonly="readonly"
												onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');">
											</td>
											<td>上级类别:<select name="suptype"
												style="width: 90px; height: 25px">
													<option value="0">根目录</option>
													<option value="1">子目录</option>
											</select>
											</td>
										</tr>
									</table>
									<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
								</form>

							</div>

						</div>
					</div>

				</div>

<!-- model结束 -->
				
				<div class="tablelist">


					
						
							<button type="button"
								class="navbar-toggle pull-left animated flip">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>

							<a class="navbar-brand" href="index.html"> <img
								alt="Charisma Logo"
								src="/p2p_project/backStyle/images/logo20.png" class="hidden-xs" />
								<span>hello</span></a>

							<!--用户开始-->

							<div class="btn-group pull-right">
								<button class="btn btn-info" id="btn1">
									<i class="glyphicon glyphicon-user"></i><span
										class="hidden-sm hidden-xs">添加</span>
								</button>
								<button class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									<i class="glyphicon glyphicon-user"></i><span
										class="hidden-sm hidden-xs">${users.user_name}</span> <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li class="divider"></li>
									<a href="/p2p_project/frontJsp/login.jsp">切换用户</a>
								</ul>
							</div>

						



						<div class="row">
							<div class="box col-md-12">
								<div class="box-inner">
									<div class="box-header well" data-original-title="">
										<h2>
											<i class="glyphicon glyphicon-user"></i>资讯分类
										</h2>

										<div class="box-icon">
											<a href="#" class="btn btn-setting btn-round btn-default"><i
												class="glyphicon glyphicon-cog"></i></a> <a href="#"
												class="btn btn-minimize btn-round btn-default"><i
												class="glyphicon glyphicon-chevron-up"></i></a> <a href="#"
												class="btn btn-close btn-round btn-default"><i
												class="glyphicon glyphicon-remove"></i></a>
										</div>
									</div>

									<div class="box-content">
										<table
											class="table table-striped table-bordered bootstrap-datatable datatable responsive">
											<thead>
												<tr>

													<th>序号</th>
													<th>封面图片</th>
													<th>名称</th>
													<th>上级类别</th>
													<th>修改时间</th>
													<th>添加时间</th>
													<th>修改人ID</th>
													<th>添加人ID</th>
													<th>排序</th>
													<th>操作</th>
												</tr>
											</thead>
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td class="center"><span
														class="label-success label label-default">${status.index+1}</span>
													</td>
													<td><img width="100px" height="60px"
														src="/p2p_project/upload/${list.cphoto}"></td>
													<td class="center">${list.name }</td>
													<td class="center">${list.suptype==0?"根目录":"子目录"}</td>
													<td class="center">${list.updtime}</td>
													<td class="center">${list.addtime}</td>
													<td class="center">${list.updid}</td>
													<td class="center">${list.addid}</td>
													<td class="center">${list.sort}</td>
													<td class="center"><a class="btn btn-info"
														href="/p2p_project/news_type/updatelist/${list.id}/${users.id}"> <i
															class="glyphicon glyphicon-edit icon-white"></i> Edit
													</a></td>
												</tr>
											</c:forEach>

											</tbody>
										</table>
									</div>
								</div>
						
						</div>
					</div>
				</div>
			</div>
	</div>
</div>

	<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">

	<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
	<script src="/p2p_project/backStyle/js/custom.js"></script>
	<script src="/p2p_project/backStyle/js/bootstrap.min.js"></script>
	
</body>
</html>
