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
<link rel="Shortcut Icon" href="/networkdisk/img/julyicon.png">
<link href="/networkdisk/user/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/networkdisk/user/css/bootstrap-theme.min.css" />
<link href="/networkdisk/css/style.css" rel="stylesheet" />
<link href="/networkdisk/css/share.css" rel="stylesheet" />
<link rel="stylesheet"
	href="/networkdisk/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/networkdisk/js/jquery-1.11.2.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/networkdisk/user/js/bootstrap.min.js"></script>
<script src="/networkdisk/js/index.js"></script>
<script src="/networkdisk/js/jquery.rotate.min.js"></script>
<style type="text/css">
a, button, input {
	outline: none;
}
</style>
</head>

<body>
	<div id="in-nav">
		<div class="logo">
			<a id="logo" href="/networkdisk/index.jsp"> <img
				src="/networkdisk/img/LOGO.png"
				style="position: absolute; top: 3px;" />
			</a>
		</div>
		<div class="container1">
			<div class="row1">
				<div class="span1" style="display: inline;">
					<ul class="pull-left">
						<li class="active"><a href="goindex">网盘</a></li>
						<li><a href="findAll">分享</a></li>
						<li><a href="#">更多</a></li>
					</ul>
				</div>
				<div class="span2">
					<ul class="right">
						<li class="chos" style="width: 220px;">
							<div class="sev">
								<div class="admin">
									<img
										src="${pageContext.request.contextPath}/showphoto?uid=${sessionScope.user.id }"
										width="30px"
										style="border-radius: 30px; position: absolute; top: 10px;" />
									<a href="#" style="display: inline-block; height: 50px;">
										<div class="username">${sessionScope.user.name }</div> <img
										src="/networkdisk/img/VIP1.png"
										style="display: inline-block; margin-bottom: 45px;" />
									</a> <em style="display: inline-block;"><img
										src="/networkdisk/img/downchoose.png" class="c"
										style="margin-bottom: 40px;" /></em>
								</div>
								<div class="user">
									<span id="triangle-up"> </span>
									<div class="userpan">
										<div class="userpan_2">
											<div class="u1">
												<a href="#"> <img
													src="${pageContext.request.contextPath}/showphoto?uid=${sessionScope.user.id }"
													width="30px" class="userpic" />
												</a> <a href="">${sessionScope.user.name }</a> <img
													src="/networkdisk/img/VIP1.png"
													style="display: inline; margin-bottom: 5px;" />
											</div>
										</div>
										<div class="userpan_3">
											<a href="" style="color: #000; font-size: 12px;">超级会员专享特权：</a>
											<div class="svip">开通超级会员</div>
										</div>
										<div class="userpan_4">
											<p>
												<a href="${pageContext.request.contextPath}/per-center"><span>个人资料</span></a>
											</p>
											<p>
												<a href=""><span>帮助中心</span></a>
											</p>
											<p>
												<a href=""><span>设置</span></a>
											</p>
											<p>
												<a href="logout"><span>退出</span></a>
											</p>
										</div>
									</div>
								</div>

							</div>
						</li>
						<li style="width: 100px;"><a href="#"
							style="font-size: 13px;">&nbsp;客户端下载</a></li>
						<li><a href="noticeList"><img
								src="/networkdisk/img/notice.png" style="margin-top: 10px;" /></a></li>
						<li><a href="#"><img src="/networkdisk/img/serve.png"
								style="margin-top: 10px;" /></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="clean" style="clear: all;"></div>
	<div id="in-sub-nav">
		<div class="container2">
			<div class="row2">
				<div class="span12">
					<ul style="padding: 0px;" id="tabs">
						<li><a href="goindex"
							class="act"><i class="batch home"></i><br>全部文件</a></li>
						<li class="active"><a href="picture"><i
								class="batch stream"></i><br>图片</a></li>
						<li><a href="word"><i
								class="batch plane"></i><br>文档</a></li>
						<li><a href="video"><i
								class="batch calendar"></i><br>视频</a></li>
						<li><a href="others"><i
								class="batch settings"></i><br>其他</a></li>
						<li><a href="gomyshare"><i
								class="batch share"></i><br>我的分享</a></li>
						<li><a href="gorecycle"><i
								class="batch barbage"></i><br>回收站</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page">
		<div class="page-container">
			<div class="row" style="width: 95%; float: left;">
				<div class="moudle">
					<ul id='mou_1' class="tab">
						<li class="active"><a href="#tb1">最近上传</a></li>
						<li><a href="#tb2">时光轴</a></li>
					</ul>
				</div>
				<div class="donetimeline">
					<span style="float: left; display: block;"> <input
						type="checkbox" style="position: relative; top: 2px;" /> <span
						id="c1"></span>
					</span>
					<div class="equip_2" style="display: inline-block;">
						<ul class="equi_2">
							<li id="f1"><img src="/networkdisk/img/share.png" />分享</li>
							<li><img src="/networkdisk/img/download.png" />下载</li>
							<li><img src="/networkdisk/img/delete.png" />删除</li>
							<li>复制到</li>
							<li id="f2">移动到</li>
						</ul>
					</div>
				</div>
				<div class="tab-pane fade in active" id="tb1">
					<div class="timeline">
						<span class="timeline_day1">2017年9月16号</span> <span
							class="fa fa-chevron-down" id="down"></span> <span
							class="timeline_day3">3张</span> <span style="float: right;"><input
							type="checkbox" id="chall" style="position: relative; top: 2px;" />全选</span>
					</div>
					<div class="timelin_content">
						<span><i class="fa fa-check-square-o"></i></span><img
							src="img/v7.jpg" /> <span><i class="fa fa-check-square-o"></i></span><img
							src="img/v8.jpg" /> <span><i class="fa fa-check-square-o"></i></span><img
							src="img/v9.jpg" />
					</div>
					<div class="timeline">
						<span class="timeline_day1">2017年8月16号</span> <span
							class="fa fa-chevron-down" id="down_1"></span> <span
							class="timeline_day3">3张</span>
						<div class="equip_1">
							<ul class="equi_1">
								<li id="f1"><img src="/networkdisk/img/share.png" />分享</li>
								<li><img src="/networkdisk/img/download.png" />下载</li>
								<li><img src="/networkdisk/img/delete.png" />删除</li>
								<li>复制到</li>
								<li id="f2">移动到</li>
							</ul>
						</div>
						<span style="float: right;"><input type="checkbox"
							style="position: relative; top: 2px;" />全选</span>
					</div>
					<div class="timelin_content_1">
						<span><i class="fa fa-check-square-o"></i></span><img
							src="/networkdisk/img/v7.jpg" /> <span><i
							class="fa fa-check-square-o"></i></span><img
							src="/networkdisk/img/v8.jpg" /> <span><i
							class="fa fa-check-square-o"></i></span><img
							src="/networkdisk/img/v9.jpg" />
					</div>
				</div>
				<div class="tab-pane fade" id="tb2"></div>
			</div>
		</div>
		<div class="recyclebin-empty">
			<p class="img records records-17"></p>
			<p class="empty-word">您的相册为空噢～</p>
		</div>
	</div>
</body>
</html>