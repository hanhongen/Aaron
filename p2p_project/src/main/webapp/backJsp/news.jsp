<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/p2p_project/backStyle/js/zDrag.js"></script>
<script type="text/javascript" src="/p2p_project/backStyle/js/zDialog.js"></script>
<script type="text/javascript">
function fun2(){
	parentDialog.close();
}
</script>
<body>
<div id="forlogin">
      <table width="100%" border="0" align="center" cellpadding="4" cellspacing="4" bordercolor="#666666">
        <tr>
          <td colspan="2" bgcolor="#eeeeee">这儿是弹出窗口中的表单</td>
        </tr>
        <tr>
          <td width="150" align="right">你的QQ：</td>
          <td><input type="text" id="qq" /></td>
        </tr>
        <tr>
          <td width="150" align="right">你的E-mail：</td>
          <td><input type="text" id="mail" /></td>
        </tr>
        <tr>
          <td align="right">你从哪儿获知本程序的？</td>
          <td><input type="text" id="track"  /></td>
        </tr>
        <tr>
          <td colspan="2" align="left" style="padding-left:160px;"><input type="button" onClick="fun3()" value="再弹" class="buttonStyle" /> <input onClick="fun2()" class="buttonStyle" type="button" value="关闭" /></td>
        </tr>
      </table>
</div>
</body>
</html>