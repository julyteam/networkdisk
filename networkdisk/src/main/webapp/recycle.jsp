<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>July</title>
		<link href="/networkdisk/user/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="/networkdisk/user/css/bootstrap-theme.min.css" />
		<link href="/networkdisk/css/style.css" rel="stylesheet" />
		<link href="/networkdisk/css/share.css" rel="stylesheet" />
		<link rel="stylesheet" href="/networkdisk/font-awesome-4.7.0/css/font-awesome.min.css">
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="/networkdisk/js/jquery-1.11.2.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="/networkdisk/user/js/bootstrap.min.js"></script>
		<script src="/networkdisk/js/index.js"></script>
		<script src="/networkdisk/js/jquery.rotate.min.js"></script>
	</head>

	<body>
		<div id="in-nav">
			<div class="container">
				<div class="row">
					<div class="logo">
						<a id="logo" href="/networkdisk/index.jsp">
							<img src="/networkdisk/img/LOGO.png" />
							<a class="logotitle" href="">July</a>
						</a>
					</div>
					<div class="span1" style="display: inline;">
						<ul class="pull-left">
							<li class="active">
								<a href="#">网盘</a>
							</li>
							<li>
								<a href="#">分享</a>
							</li>
							<li>
								<a href="#">更多</a>
							</li>
						</ul>
					</div>
					<div class="span2">
						<ul class="right">
							<li class="chos" style="width: 220px;">
								<div class="sev">
									<div class="admin">
										<img src="/networkdisk/img/pic3.png" width="30px" style="border-radius: 30px;margin-bottom: 20px;" />
										<a href="#" style="display: inline-block;">
											<div class="username">我们的修改会事倍功半</div>
											<img src="/networkdisk/img/VIP1.png" style="display: inline;margin-bottom:20px ;" />
										</a>
										<em style="display: inline-block;"><img src="/networkdisk/img/downchoose.png" class="c" style="margin-bottom: 20px;"/></em>
									</div>
									<div class="user">
										<span id="triangle-up">								
										</span>
										<div class="userpan">
											<div class="userpan_2">
												<div class="u1">
													<a href="#">
														<img src="/networkdisk/img/pic3.png" class="userpic" />
														<a href="">admin</a>
														<img src="/networkdisk/img/VIP1.png" style="display: inline;margin-bottom:5px ;" />
													</a>
												</div>
											</div>
											<div class="userpan_3">
												<span>
												<a href="" style="color:#000;font-size: 12px;">超级会员专享特权：</a>
												<div class="svip">开通超级会员</div>
												</span>
											</div>
											<div class="userpan_4">
												<p><a href=""><span>个人资料</span></a></p>
												<p><a href=""><span>帮助中心</span></a></p>
												<p><a href=""><span>设置</span></a></p>
												<p><a href=""><span>退出</span></a></p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li style="width: 100px; margin-top:5px;">
								<a href="#" style="font-size: 13px;">&nbsp;客户端下载</a>
							</li>
							<li style="margin-top:5px;">
								<a href="#"><img src="/networkdisk/img/notice.png" /></a>
							</li>
							<li style="margin-top:5px;">
								<a href="#"><img src="/networkdisk/img/serve.png" /></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clean" style="clear: all;"></div>
		<div id="in-sub-nav">
			<div class="container">
				<div class="row">
					<div class="span12">
						<ul style="padding: 0px;" id="tabs">
							<li>
								<a href="/networkdisk/index.jsp#tw1" class="act"><i class="batch home"></i><br>全部文件</a>
							</li>
							<li>
								<a href="/networkdisk/index.jsp#tw2"><i class="batch stream"></i><br>图片</a>
							</li>
							<li>
								<a href="/networkdisk/index.jsp#tw3"><i class="batch plane"></i><br>文档</a>
							</li>
							<li>
								<a href="/networkdisk/index.jsp#tw4"><i class="batch calendar"></i><br>视频</a>
							</li>
							<li>
								<a href="/networkdisk/index.jsp#tw5"><i class="batch quill"></i><br>种子</a>
							</li>
							<li>
								<a href="/networkdisk/index.jsp#tw6"><i class="batch forms"></i><br>音乐</a>
							</li>
							<li>
								<a href="/networkdisk/index.jsp#tw7"><i class="batch settings"></i><br>其他</a>
							</li>
							<li>
								<a href="/networkdisk/myshare.jsp"><i class="batch share"></i><br>我的分享</a>
							</li>
							<li class="active">
								<a href="/networkdisk/recycle.jsp"><i class="batch barbage"></i><br>回收站</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="page">
			<div class="page-container">
				<div class="module_link">
					<span>提示：回收站不占用网盘空间，文件保存10天后将被自动清除。<a style="color:#28A4C9 ;">开通会员</a> 延长至15天，<a style="color:#28A4C9 ;">开通超级会员</a>延长至30天</span>
					<div class="cleanbox">
						<span class="fa fa-trash">清空回收站</span>
					</div>
				</div>
				<div class="sharebox">
					<div class="name">
						<input type="checkbox" id="checkbox_a1" class="chk" />
						<label for="checkbox_a1"></label>
						<span style="color: #5E5E5E;">文件名</span>
					</div>
					<div class="fufH">
						<span style="color: #5E5E5E;">大小</span>
					</div>
					<div class="fufHs">
						<span style="color: #5E5E5E;">删除时间</span>
					</div>
					<div class="fufH">
						<span style="color: #5E5E5E;">有效时间</span>
					</div>
				</div>
			</div>
			<div class="listshare">
				<div class="name">
					<input type="checkbox" id="checkbox_a1"/>
					<span class="fa fa-folder" style="color: #D58512;font-size: 26px;position:relative;bottom: -5px;"></span>
					<span>2017全网最新PPT</span>
				</div>
				<div class="fufH">
					<span style="color: #5E5E5E;">69kb</span>
				</div>
				<div class="fufHs">
					<span style="color: #5E5E5E;">2017-08-13 17:29</span>
				</div>
				<div class="fufH">
					<span style="color: #5E5E5E;">永久有效</span>
				</div>
			</div>
		</div>
	</body>

</html>