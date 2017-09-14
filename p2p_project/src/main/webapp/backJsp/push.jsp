<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增公告</title>
<style type="text/css">
	 .form-control{
	   width:240px;
	   border-color:blue;
	</style>
</head>
<body>
  <form method="post" action="/p2p_project/test/test2"> 
  <div style="background-image:url(../backStyle/images/timg.jpg);height:600px">
  <h3 class="panel-title">新增公告</h3>
 公告类别<input type="text" class="form-control" name="category" placeholder="新增公告类别"/><br><br>
 公告标题<input type="text" class="form-control" name="title" placeholder="新增公告标题"/><br><br>
 公告内容<input type="text" class="form-control" name="content"  placeholder="新增公告容"/><br>
  <input type="submit" value="提交" />
 </div>
  </form>
</body>
</html>