<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<!--前台意见反馈 -->

  <style type="text/css">
   body, div, h1, form, fieldset, input, textarea {
	margin: 0; padding: 0; border: 0; outline: none;
}

html {
	height: 100%;
}

body {
	background: #728eaa;
	background: -moz-linear-gradient(top, #25303C 0%, #728EAA 100%); /* firefox */	
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#25303C), color-stop(100%,#728EAA)); /* webkit */
	font-family: sans-serif; 
}

#contact {
	width: 430px; margin: 60px auto; padding: 60px 30px;
	background: #c9d0de; border: 1px solid #e1e1e1;
	-moz-box-shadow: 0px 0px 8px #444;
	-webkit-box-shadow: 0px 0px 8px #444;
}

h1 {
	font-size: 35px; color: #445668; text-transform: uppercase;
	text-align: center; margin: 0 0 35px 0; text-shadow: 0px 1px 0px #f2f2f2;
}

label {
	float: left; clear: left; margin: 11px 20px 0 0; width: 95px;
	text-align: right; font-size: 16px; color: #445668; 
	text-transform: uppercase; text-shadow: 0px 1px 0px #f2f2f2;
}

input {
	width: 260px; height: 35px; padding: 5px 20px 0px 20px; margin: 0 0 20px 0; 
	background: #5E768D;
	background: -moz-linear-gradient(top, #546A7F 0%, #5E768D 20%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#546A7F), color-stop(20%,#5E768D)); /* webkit */
	border-radius: 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px;
	-moz-box-shadow: 0px 1px 0px #f2f2f2;-webkit-box-shadow: 0px 1px 0px #f2f2f2;
	font-family: sans-serif; font-size: 16px; color: #f2f2f2; text-transform: uppercase; text-shadow: 0px -1px 0px #334f71; 
}
	input::-webkit-input-placeholder  {
    	color: #a1b2c3; text-shadow: 0px -1px 0px #38506b;  
	}
	input:-moz-placeholder {
	    color: #a1b2c3; text-shadow: 0px -1px 0px #38506b; 
	}

textarea {
	width: 260px; height: 170px; padding: 12px 20px 0px 20px; margin: 0 0 20px 0; 
	background: #5E768D;
	background: -moz-linear-gradient(top, #546A7F 0%, #5E768D 20%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#546A7F), color-stop(20%,#5E768D)); /* webkit */
	border-radius: 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px;
	-moz-box-shadow: 0px 1px 0px #f2f2f2;-webkit-box-shadow: 0px 1px 0px #f2f2f2;
	font-family: sans-serif; font-size: 16px; color: #f2f2f2; text-transform: uppercase; text-shadow: 0px -1px 0px #334f71; 
}
	textarea::-webkit-input-placeholder  {
    	color: #a1b2c3; text-shadow: 0px -1px 0px #38506b;  
	}
	textarea:-moz-placeholder {
	    color: #a1b2c3; text-shadow: 0px -1px 0px #38506b; 
	}
	
input:focus, textarea:focus {
	background: #728eaa;
	background: -moz-linear-gradient(top, #668099 0%, #728eaa 20%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#668099), color-stop(20%,#728eaa)); /* webkit */
}

input[type=submit] {
	width: 185px; height: 52px; float: right; padding: 10px 15px; margin: 0 15px 0 0;
	-moz-box-shadow: 0px 0px 5px #999;-webkit-box-shadow: 0px 0px 5px #999;
	border: 1px solid #556f8c;
	background: -moz-linear-gradient(top, #718DA9 0%, #415D79 100%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#718DA9), color-stop(100%,#415D79)); /* webkit */
	cursor: pointer;
}
  </style>
</head>
<body>
 <div id="contact">
	<h1>意见反馈</h1>
	<form action="/p2p_project/test/savefeed" method="post">
		<fieldset>
		<input type="hidden" id="user_id" name="user_id" value="${user.id }">
	  	<label for="message">意见内容:</label>
		<textarea id="message" name="content" placeholder="请输入内容"></textarea>

	
		<input type="submit" value="提交" />
			
		</fieldset> 
	</form>
</div> 
</body>
</html>