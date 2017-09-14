<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dsadsasdasda</title>
</head>
<script type="text/javascript" src="/p2p_project/backStyle/js/jquery.min.js"></script>
<script type="text/javascript">
function fun2(){
	parentDialog.close();
}
</script>
<body>
<form action="/p2p_project/news_type/news_typesave"  method="post" enctype="multipart/form-data" >
<table width="100%" border="0" align="center" cellpadding="4" cellspacing="4" bordercolor="#666666">
<br><br><br>
     <tr>
     <td>
     名称:<input type="text" name="name">
     </td>
     <td>
     简介:<input type="text"  name="info">
     </td>
 <td>内容:<input type="text" name="text"></td>    
     </tr>
        
        <tr>
     <td>
     页面类型:<input type="text" name="pagetype">
     </td>
  
 <td>封面图片:<input type="file" name="file" ></td>    
     </tr>

     <tr>
     <td>
     链接:<input type="text" name="link">
     </td>
     <td>
     备注:<input type="text"  name="note">
     </td>
 <td>排序:<input type="number" name="sort"></td>    
     </tr>

    <tr>
     <td>
     页面seo标题:<input type="text" name="seotitle">
     </td>
     <td>
     seo关键字:<input type="text"  name="seokey">
     </td>
 <td>seo描述:<input type="text" name="seodes"></td>    
     </tr>
     <tr>
     <td>
     修改人ID:<input type="number" name="updid">
     </td>
     <td>
    添加人ID:<input type="number"  name="addid">
    </td>
       <td>
     上级类别:<input type="number"  name="suptype">
     </td>
     </tr>

        <tr  align="center">
          <td><input type="submit"   value="保存"/>&nbsp;&nbsp;&nbsp; 
          <input onClick="fun2()"  type="button" value="关闭" /></td>
        </tr>
      </table>
    
      </form>
</body>
</html>