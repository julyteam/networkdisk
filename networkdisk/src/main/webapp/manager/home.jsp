<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/networkdisk/manager/css/home.css" />
<script type="text/javascript" src="/networkdisk/manager/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/networkdisk/manager/js/my.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="head">
		<div class="head_left">云盘后台管理中心</div>
		<div class="head_right">
			<span>您好</span> <a href="#"><span>${user.name }</span></a> <a
				href="/networkdisk/manager/adminlogin.jsp"><span>退出</span></a>
		</div>
	</div>
	<div class="cont">
		<div class="cont_left">
			<div class="bot" id="p1">首页</div>
			<div class="bot" id="p2">用户管理</div>
			<div class="bot" id="p3">文件管理</div>
			<div class="bot" id="p5">个人中心</div>
			<div class="bot" id="p7">网站公告管理</div>
			<div class="bot" id="p9">分享链接管理</div>
			<div class="bot" id="p10"><a href="/networkdisk/manager/adminlogin.jsp">退出系统</a></div>
		</div>
		<div class="cont_right">
			<iframe src="/networkdisk/manager/frist.jsp" id="page" class="page" scrolling="no"></iframe>
		</div>
	</div>
</body>
</html>