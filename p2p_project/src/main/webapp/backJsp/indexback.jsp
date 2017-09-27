<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Widgets :: w3layouts</title>
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
               <a class="navbar-brand" href="/p2p_project/backJsp/indexback.jsp">YJ Finance</a>
            </div>
            <!-- /.navbar-header -->
          
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search...';}">
            </form>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                                    <ul class="nav" id="side-menu">
                        <li>
                             <a href=""><i class="fa fa-dashboard fa-fw nav_icon"></i>回到首页</a>
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
                                    <a href="/p2p_project/backJsp/grids.jsp">私募/股权类</a>
                                </li>
                            </ul>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/backJsp/grids.jsp">海外配置</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                             <a href="#"><i class="fa fa-indent nav_icon"></i>钱包管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/backJsp/graphs.jsp">钱包缴费记录</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/backJsp/typography.jsp">Typography</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>学院管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/news_type/news_typelist">资讯分类</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/news/listnews">资讯管理</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="/p2p_project/backJsp/widgets.jsp"><i class="fa fa-flask nav_icon"></i>Widgets</a>
                        </li>
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
                         <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="#"><i class="fa fa-table nav_icon"></i>盈加统计<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/backJsp/basic_tables.jsp">财务统计</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/backJsp/basic_tables.jsp">用户综合统计</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="#"><i class="fa fa-flask nav_icon"></i>盈加设置<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/test/test1">公告管理</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/backJsp/feedback.jsp">意见反馈</a>
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
                                    <a href="/p2p_project/backJsp/login.jsp">密码设置</a>
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
	     ${user.id } + ${user.user_name }
      </div>
      <!-- /#page-wrapper -->
   </div>
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
<script src="/p2p_project/backStyle/js/custom.js"></script>
</body>
</html>
