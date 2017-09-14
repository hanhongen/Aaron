<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE HTML>
<html>
<head>

    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">
    
    	
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


    
   <link id="bs-css" href="/p2p_project/backStyle/css/bootstrap-cerulean.min.css" rel="stylesheet">
    <link href="/p2p_project/backStyle/css/charisma-app.css" rel="stylesheet">
    <link href='/p2p_project/backStyle/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='/p2p_project/backStyle/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/css/jquery.noty.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/css/noty_theme_default.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/css/elfinder.min.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/css/elfinder.theme.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/css/uploadify.css' rel='stylesheet'>
    <link href='/p2p_project/backStyle/css/animate.min.css' rel='stylesheet'>
    <link rel="shortcut icon" href="/p2p_project/backStyle/img/favicon.ico">

<script type="text/javascript">
function open1(){
	var diag = new Dialog();
	diag.Width = 400;
	diag.Height = 400;
	diag.Title = "添加新闻分类的窗口";
	diag.URL = "/p2p_project/backJsp/news.jsp";
	diag.show();
}
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
		<form class="navbar-form navbar-right">
			<input type="text" class="form-control" value="Search..."
				onFocus="this.value = '';"
				onBlur="if (this.value == '') {this.value = 'Search...';}">
		</form>
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
							<li><a href="/p2p_project/backJsp/forms.jsp">账号管理</a></li>
							<li><a href="/p2p_project/backJsp/validation.jsp">绑卡管理</a></li>
							<li><a href="/p2p_project/backJsp/validation.jsp">付息计划</a></li>
							<li><a href="/p2p_project/backJsp/validation.jsp">充值管理</a></li>
							<li><a href="/p2p_project/backJsp/validation.jsp">提现管理</a></li>
							<li><a href="/p2p_project/backJsp/validation.jsp">邀请奖励</a></li>
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
							<li><a href="/p2p_project/backJsp/media.jsp">账户设置</a></li>
							<li><a href="/p2p_project/backJsp/login.jsp">角色设置</a></li>
							<li><a href="/p2p_project/backJsp/login.jsp">密码设置</a></li>
						</ul> <!-- /.nav-second-level --></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>



<!--           sssss             -->
  <div id="page-wrapper">
  <div class="graphs">
  <div class="xs">
  
  
    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-inner">
            <button type="button" class="navbar-toggle pull-left animated flip">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
           <a class="navbar-brand" href="index.html">  <img alt="Charisma Logo" src="/p2p_project/backStyle/images/logo20.png" class="hidden-xs"/>
                <span>hello</span></a>

           <!--用户开始-->
            <div class="btn-group pull-right">
            <button class="btn btn-default dropdown-toggle" onclick="open1();">
                    <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs">添加</span>
                     </button>
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs">用户名称</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                     <a href="/p2p_project/frontJsp/login.jsp">切换用户</a>
                </ul>
            </div>

    </div>



    <div class="row">
    <div class="box col-md-12">
    <div class="box-inner">
    <div class="box-header well" data-original-title="">
        <h2><i class="glyphicon glyphicon-user"></i>资讯分类</h2>

        <div class="box-icon">
            <a href="#" class="btn btn-setting btn-round btn-default"><i class="glyphicon glyphicon-cog"></i></a>
            <a href="#" class="btn btn-minimize btn-round btn-default"><i
                    class="glyphicon glyphicon-chevron-up"></i></a>
            <a href="#" class="btn btn-close btn-round btn-default"><i class="glyphicon glyphicon-remove"></i></a>
        </div>
    </div>
    
    <div class="box-content">
	<table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
      
  <th>序号</th>
       <th>封面图片</th>
        <th>名称</th>
        <th>上级类别</th>
        <th>简介</th>
        <th>排序</th>
        <th>添加时间</th>
        <th>操作</th>
    </tr>
    </thead>
    <c:forEach items="${list}" var="list" varStatus="status">
     <tr>
     <td class="center">
            <span class="label-success label label-default">${status.index+1}</span>
        </td>
        <td class="center">${list.cphoto}</td>
        <td class="center">${list.name }</td>
        <td class="center">${list.suptype}</td>
        <td class="center">${list.info}</td>
        <td class="center">${list.sort}</td>
        <td class="center">${list.addtime}</td>
        <td class="center">
          <a class="btn btn-info" href="#">
                Edit
            </a>
            <a class="btn btn-danger" href="#">
                Delete
            </a>
        </td>
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
    <div class="row">
        <div class="col-md-9 col-lg-9 col-xs-9 hidden-xs">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
          
            <ins class="adsbygoogle"
                 style="display:inline-block;width:728px;height:90px"
                 data-ad-client="ca-pub-5108790028230107"
                 data-ad-slot="3193373905"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
    
    </div>
    </div>
    </div>
    </div>
    
    <link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">

<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
<script src="/p2p_project/backStyle/js/custom.js"></script>
    
    
<script src="/p2p_project/backStyle/bower_components/jquery/jquery.min.js"></script>
<script src="/p2p_project/backStyle/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/p2p_project/backStyle/js/jquery.cookie.js"></script>
<script src='/p2p_project/backStyle/bower_components/moment/min/moment.min.js'></script>
<script src='/p2p_project/backStyle/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<script src='/p2p_project/backStyle/js/jquery.dataTables.min.js'></script>
<script src="/p2p_project/backStyle/bower_components/chosen/chosen.jquery.min.js"></script>
<script src="/p2p_project/backStyle/bower_components/colorbox/jquery.colorbox-min.js"></script>
<script src="/p2p_project/backStyle/js/jquery.noty.js"></script>
<script src="/p2p_project/backStyle/bower_components/responsive-tables/responsive-tables.js"></script>
<script src="/p2p_project/backStyle/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<script src="/p2p_project/backStyle/js/jquery.raty.min.js"></script>
<script src="/p2p_project/backStyle/js/jquery.iphone.toggle.js"></script>
<script src="/p2p_project/backStyle/js/jquery.autogrow-textarea.js"></script>
<script src="/p2p_project/backStyle/js/jquery.uploadify-3.1.min.js"></script>
<script src="/p2p_project/backStyle/js/jquery.history.js"></script>
<script src="/p2p_project/backStyle/js/charisma.js"></script>
<script type="text/javascript" src="/p2p_project/backStyle/js/zDrag.js"></script>
<script type="text/javascript" src="/p2p_project/backStyle/js/zDialog.js"></script>

</body>
</html>
