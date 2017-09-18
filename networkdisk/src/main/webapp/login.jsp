<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
		<link rel="stylesheet" href="/networkdisk/user/css/login.css">
		<link rel="stylesheet" href="/networkdisk/user/css/bootstrap.min.css"/> 
		<link href="https:/pan.baidu.com/static/images/favicon.ico" rel="shortcut icon" type="images/x-icon"/>
		<script src="/networkdisk/user/js/jquery-1.11.2.min.js"></script>
		<script src="/networkdisk/user/js/login.js"></script>
	    <script src="/networkdisk/user/js/bootstrap.min.js"></script>
	
	</head>
<body>
<div class="login-container">
    <div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active" >
			<a><img src="/networkdisk/user/img/bg1.jpg" alt="First slide"></a>
			<div class="body-content">
			<p>
		    <span ><img src="/networkdisk/user/img/leftquote.png"></span>
			<span>安全存储</span>
			</p>
			<p>
    		<span>生活仅仅有条</span>
			<span><img src="/networkdisk/user/img/rightquote.png"></span>
			</p>
			</div>
		</div>
		<div class="item" >
			<a><img src="/networkdisk/user/img/bg2.jpg" alt="Second slide"></a>
			<div class="body-content">
			<p>
			<span ><img src="/networkdisk/user/img/leftquote.png"></span>
			<span>在线预览</span>
			</p>
			<p>
			<span>文件即开即看</span>
			<span><img src="/networkdisk/user/img/rightquote.png"></span>
			</p>
			</div>
		</div>
		<div class="item" >
			<a><img src="/networkdisk/user/img/bg3.jpg" alt="Third slide"></a>
			<div class="body-content">
			<p>
			<span><img src="/networkdisk/user/img/leftquote.png"></span>
			<span>多端并用</span>
			</p>
			<p>
			<span>数据随身携带</span>
			<span><img src="/networkdisk/user/img/rightquote.png"></span>
			</p>
			</div>
		</div>
		<div class="item" >
			<a><img src="/networkdisk/user//img/bg3.jpg" alt="Third slide"></a>
			<div class="body-content">
			<p>
			<span><img src="/networkdisk/user/img/leftquote.png"></span>
			<span>好友分享</span>
			</p>
			<p>
			<span>共度幸福时光</span>
			<span><img src="/networkdisk/user/img/rightquote.png"></span>
			</p>
			</div>		
		</div>
	</div>
</div> 
  <div class="logo"><img src="/networkdisk/user/img/logo.png"></div>

			<div id="login-middle">
			<div class="login_title">
				<h4>账号密码登录</h4>
			</div>
			<div class="login_form">
			  <form action="userAction" method="post">
				<div class="form_user">
					<input type="text" placeholder="   手机/邮箱/用户名" name="user.name"/>
				</div>
				<div class="form_password">
					<input type="text" placeholder="   密 码"  name="user.passWord"/>
				</div>
				<div class="form_check">
					<input type="checkbox" />
					<span>下次自动登陆</span>
				</div>
				<div class="form_login">
					<input type="submit" value="登录" />
				</div>
				<div class="form_href" id="question">
					<a href="#">登录遇到问题</a>
				</div>
				<div class="form_href" id="number">
					<a href="#">海外手机号</a>
				</div>
              </form>
			</div>
			<div class="login_bottom">
				<div class="bottom_href">
					<ul>	
				    	<li><input type="submit" value="扫一扫登录" id="scan_login"/></a></li>
				    	<li> <a href="#"><img src="/networkdisk/user/img/weibo.png"/></a></li>
				    	<li> <a href="#"><img src="/networkdisk/user/img/qq.png"/></a></li>
				    	<li><a href="register.jsp"><input type="submit" value="立即注册"/></a></li>
					</ul>
				</div>
			</div>

		</div>
</div>
</body>
</html>