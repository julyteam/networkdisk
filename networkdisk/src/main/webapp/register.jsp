<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title></title>
<link rel="stylesheet" href="/networkdisk/user/css/register.css">
<link rel="stylesheet" href="/networkdisk/user/css/bootstrap.min.css" />
<link href="https:/pan.baidu.com/static/images/favicon.ico"
	rel="shortcut icon" type="images/x-icon" />
<script src="/networkdisk/user/js/jquery-1.11.2.min.js"></script>
<script src="/networkdisk/user/js/register.js"></script>
<script src="/networkdisk/user/js/bootstrap.min.js"></script>
<script src="/networkdisk/user/js/jquery.validate.js"></script>
<script src="/networkdisk/user/js/jquery.validate.min.js"></script>
<script src="/networkdisk/user/js/messages_zh.js"></script>
<script type="text/javascript">

</script>
<style>

.error {
padding-left:15px;
	color: red;
}
</style>


</head>
<body>
	<div id="head">
		<div id="head-left">
			<img src="/networkdisk/user/img/logo-2.png"> <span>|&nbsp;&nbsp;注册百度账号</span>
		</div>
		<div id="head-right">
			<span>我已注册，现在就</span>
			<div class="login-buttom">
				<a href="login.jsp"> 登录</a>
			</div>
		</div>
	</div>
	<div class="hr">
		<hr />
	</div>
	<div class="reg_content">
		<!-- <form action="register.action" method="post">
			<input type="submit" value="submit" />
		</form> -->
	
	
	
		<form action="register.action" method="post" id="registerForm" class="register_form" >
			<fieldset>
				<div class="reg_username">
					&nbsp;&nbsp;&nbsp;<label>用户名</label><input type="text" name="name" placeholder="   手机/邮箱/用户名" id="username" value="${user.name }" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"  />
				</div>
				<!-- <input onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"  /> -->
				<div class="reg_realname">
					<label>真实姓名</label><input type="text" name="trueName" id="realname" value="${user.trueName }" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"  />
				</div>
				<div class="reg_sex">
				&nbsp;&nbsp;&nbsp;&nbsp;<label>性&nbsp;&nbsp;&nbsp;别</label>  &nbsp; &nbsp;&nbsp;&nbsp; <input type="radio" name="sex" value="1"  id="sex" />男  &nbsp; &nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="0" id="sex" checked="checked" /> 女
				</div>
				<div class="reg_tel">
					&nbsp;&nbsp;&nbsp;<label>手机号</label><input type="text" name="phone" id="telphone" value="${user.phone }" onkeyup="value=value.replace(/[^0-9]/g,'')"/>
				</div>
				<div class="reg_email">
					&nbsp;&nbsp;&nbsp;&nbsp;<label>邮&nbsp;&nbsp;&nbsp;箱</label><input type="email" name="email" value="${user.email }"
						id="email" />
						<label style="color:red;height:10px;"><s:fielderror></s:fielderror></label>
				</div>
				<div class="reg_code">
					&nbsp;&nbsp;&nbsp;<label>验证码</label><input type="text" name="code" id="code" />
				</div>
				<div class="reg_password">
					&nbsp;&nbsp;&nbsp;&nbsp;<label>密&nbsp;&nbsp;&nbsp;码</label><input type="password" name="passWord" value="${user.passWord }"
						id="password" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"/>
				</div>
				<div class="reg_check">
					<input type="checkbox" id="agree" name="agree"/><font size="2">阅读并接受<a
						href="#">《百度用户协议》</a> 及<a href="#">《百度隐私权保护生命》</a></font>
				</div>
				<div class="reg_btn">
					<input type="submit" value="注册" />
				</div>
			</fieldset>
		</form>
		
	</div>
</body>
</html>
