<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title></title>
		<link rel="stylesheet" href="/networkdisk/user/css/register.css">
		<link rel="stylesheet" href="/networkdisk/user/css/bootstrap.min.css"/> 
		<link href="https:/pan.baidu.com/static/images/favicon.ico" rel="shortcut icon" type="images/x-icon"/>
		<script src="/networkdisk/user/js/jquery-1.11.2.min.js"></script>
		<script src="/networkdisk/user/js/login.js"></script>
	    <script src="/networkdisk/user/js/bootstrap.min.js"></script>
	</head>
	<body>
	
	<div id="head">
			<div id="head-left">
				<img src="/networkdisk/user/img/logo-2.png">
				<span>|&nbsp;&nbsp;注册百度账号</span>
			</div>
			<div id="head-right">
				<span>我已注册，现在就</span>
				<div class="login-buttom"><a href="login.jsp"> 登录</a></div>		
			</div>
		</div>
		<div class="hr"><hr/></div>
		
		<s:fielderror></s:fielderror>
		<div class="reg_content">
			<form class="register_form" action="register.action" method="post">
				<div class="reg_username">
					<label>用户名</label><input type="text"  name="user.name" id="username"/><span  id="userInfo"  style="visibility:hidden;"><font size="2" color="darkgray">设置后不可更改,中英文均可，最长14个英文或7个汉字</font></span>
				</div>
				<div class="reg_email">
					<label>邮&nbsp;&nbsp;&nbsp;箱</label><input type="text"  name="user.email"/>
				</div>
				<div class="reg_password">
					<label>手&nbsp;&nbsp;&nbsp;机</label><input type="password"  name="user.phone" id="password"/><span  id="passwordInfo" style="visibility:hidden;"><font size="2" color="darkgray">长度为6—14个字符,支持数字和大小写字母和标点符号，不允许有空格</font></span>
				</div>
				<div class="reg_password">
					<label>真实姓名</label><input type="password"  name="user.trueName" id="password"/><span  id="passwordInfo" style="visibility:hidden;"><font size="2" color="darkgray">长度为6—14个字符,支持数字和大小写字母和标点符号，不允许有空格</font></span>
				</div>
				<div class="reg_code">
					<label>验证码</label><input type="text"  name=""/>
				</div>
				<div class="reg_password">
					<label>密&nbsp;&nbsp;&nbsp;码</label><input type="password"  name="user.passWord" id="password"/><span  id="passwordInfo" style="visibility:hidden;"><font size="2" color="darkgray">长度为6—14个字符,支持数字和大小写字母和标点符号，不允许有空格</font></span>
				</div>
				<div class="reg_password">
					<label>性&nbsp;&nbsp;&nbsp;别</label><input type="password"  name="user.sex" id="password"/><span  id="passwordInfo" style="visibility:hidden;"><font size="2" color="darkgray"></font></span>
				</div>
				<s:actionerror />
				<div class="reg_password">
					<label>签&nbsp;&nbsp;&nbsp;名</label><input type="password"  name="user.about" id="password"/><span  id="passwordInfo" style="visibility:hidden;"><font size="2" color="darkgray">长度为6—14个字符,支持数字和大小写字母和标点符号，不允许有空格</font></span>
				</div>
				<div class="reg_check">
					<input type="checkbox" /><font size="2">阅读并接受<a href="#">《百度用户协议》</a>及<a href="#">《百度隐私权保护生命》</a></font>
				</div>
				<div class="reg_btn">
					<input type="submit" value="注册" />
				</div>
			</form>
			
		</div>
	</body>
</html>
