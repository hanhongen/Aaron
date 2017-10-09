<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="/p2p_project/backStyle/css/bootstrap.css">
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

<script>
function fun2(){
window.location.href="/p2p_project/backJsp/compose.jsp";
}
</script>

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
		<div id="page-wrapper" >
			<div class="graphs" >
				<div class="xs">
     <div class="box-right-main" >
     <!-- -----------这开始-------------------- -->

<form action="/p2p_project/news/savennews"  method="post" enctype="multipart/form-data" >
<table class="table table-striped"  border="0"  cellpadding="4"  bordercolor="#666666">
<tbody>
<tr>
<td>
 所属类别:<select name="tid" style="width: 110px;height:20px">
 <option value="-1">请选择</option>
 <c:forEach items="${list}" var="list">
 <option value="${list.id}">${list.name}</option>
 </c:forEach>
 </select>
 </td>
 <td>
 标题:<input type="text" name="title">
 </td>
 <td>
 副标题:<input type="text" name="subtitle">
 </td>
 <td>
 排序:<input type="text" name="sort"  onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');"  >
 </td>
 </tr> 
<tr>
<td>封面图片:<input type="file" name="file"></td>
<td>来源:<input type="text" name="source"></td>
<td>标签:<input type="text" name="label"></td>
</tr>
 <tr>
 <td>简介:<input type="text" name="info"></td>
 <td>seo描述:<input type="text" name="seodes"></td>
 <td>页面seo标题:<input type="text" name="seotitle"></td>
 <td>seo关键字:<input type="text" name="seokey"></td>
 </tr>
 <tr>
 <td>
是否置顶:<select name="plactop">
<option value="0">是</option>
<option value="1">否</option>
</select>
 </td>
 <td>
 是否推荐:<select name="recommend">
<option value="0">是</option>
<option value="1">否</option>
</select>
 </td>
 <td>
 是否审核:<select name="audit">
<option value="0">是</option>
<option value="1">否</option>
</select>
 </td>
 </tr>
 <tr>
 <td>链接地址:<input type="text" name="link"></td>
 <td>附件地址:<input type="text" name="filelink"></td>
 <td>作者:<input type="text" name="author"></td>
 <td>添加人ID:<input type="text" name="addld"  value="${users}" readonly="readonly"></td>
 </tr>
 </tbody>
<tr>
<td colspan="5"><textarea id="myUeditor1" name="text"></textarea>
</td>     
</tr>
 <tr align="center">
 <td colspan="4">
  <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="取消 " onclick="fun2()">
</td>
</tr>
</table>
     </form> 
     
	<!-- ----------------这结束-------------------- -->				
					</div>
				</div>
			</div>
		</div>
		<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->


<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
<script src="/p2p_project/backStyle/js/custom.js"></script>
<script type="text/javascript" src="/p2p_project/backStyle/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="/p2p_project/backStyle/js/bootstrap.min.js"></script>
 
  <script type="text/javascript" charset="utf-8" src="/p2p_project/backStyle/editor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/p2p_project/backStyle/editor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="/p2p_project/backStyle/editor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" charset="utf-8">
var ue = UE.getEditor("myUeditor1",{initialFrameWidth : 1000,
        initialFrameHeight: 300});
</script>
</body>
</html>
