<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>分享界面</title>
		<link href="/networkdisk/user/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="/networkdisk/user/css/bootstrap-theme.min.css" />
		<link href="/networkdisk/css/style.css" rel="stylesheet" />
		<link href="/networkdisk/css/share.css" rel="stylesheet" />
		<script src="/networkdisk/user/js/jquery-1.11.2.min.js"></script>		
		<script src="/networkdisk/user/js/bootstrap.min.js"></script>
		<script src="/networkdisk/js/index.js"></script>
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
								<a href="findAll?uid=12134">分享</a>
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
										<img src="/networkdisk/img/pic3.png" width="30px" style="border-radius: 30px;margin-bottom: 22px;" />
										<a href="#" style="display: inline-block;">
											<div class="username">我们的修改会事半功倍</div>
											<img src="/networkdisk/img/VIP1.png" style="display: inline;margin-bottom:22px ;" />
										</a>
										<em style="display: inline-block;"><img src="/networkdisk/img/downchoose.png" class="c" style="margin-bottom: 22px;"/></em>
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
														<img src="/networkdisk/img/VIP1.png" style="display: inline;margin-bottom:5px;" />
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
		<div class="share_all">
			<div class="share_content">
				<div class="share_content_left">
					<div class="moud">
						<ul id="share_tab" class="tabs">
							<li class="active">
								<a href="#session_content" data-toggle="tab"> <font size="3"> <span class="glyphicon glyphicon-user"></span> 会话</font> </a>
							</li>
							<li>
								<a href="#user_content" data-toggle="tab"> <font size="3"> <span class="glyphicon glyphicon-comment"></span> 好友</font></a>
							</li>
						</ul>
					</div>

					<div id="share_content" class="tab-content">
						<div class="tab-pane fade in active" id="session_content">
							<table class="session_table" >
									<tr>
										<td rowspan="2" class="session_user"><img src="img/pic3.png" /></td>
										<td class="session_other">lalall</td>
										<td class="session_time"><font size="1">09-16 10:47</font></td>
									</tr>
									<tr>
										<td class="session_other">分享文件</td>
										<td></td>
									</tr>

								</table>
						</div>
						<div class="tab-pane fade" id="user_content">
							<a href="new_friend.jsp" target="share_iframe">
								<table class="table_new_friend">
									<tr>
										<td rowspan="2" class="friend_user"><img src="/networkdisk/img/new_user.png" /></td>
										<td class="friend_new">新好友</td>
										<td class="friend_time"><font size="1">09-16 10:47</font></td>
									</tr>
									<tr>
										<td class="new_friend_name"><font size="1">慕名玉兰加你为好友</font></td>
										<td></td>
									</tr>
								</table>
							</a>

							<a href="friend_info.jsp" target="share_iframe">
								<table class="user_table">
									<tr>
										<td class="session_user" rowspan="2"><img src="img/pic3.png" /></td>
										<td rowspan="2" class="user_name">慕名玉兰</td>
									</tr>
								</table>
							</a>

							
						</div>

					</div>

					<div class="session_bottom">
						<ul>
							<li><a href="#">创建群组</a></li>
							<li>|</li>
							<li><a href="#myModal" data-toggle="modal">添加好友</a></li>
							<li>|</li>
							<li><a href="#">设置</a></li>
						</ul>
					</div>
					<!--模态框代码-->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
									</button>
									<h4 class="modal-title" id="myModalLabel">
										添加好友
									</h4>
								</div>
								<div class="modal-body">
									<div class="modal-body_item">
										<p><span>根据百度账号添加好友</span></p>
										<input type="text" placeholder="用户名/邮箱" />
										<button>搜索</button>
									</div>
									<div class="search_result" style="display: none;">
										<span>搜索结果：</span>
										<div class="result">
											<span>百度账号：</span>
										</div>
									</div>
								</div>
								<div class="modal-footer">

									<button type="button" data-dismiss="modal" class="btn_add">
										加好友
									</button>

								</div>
							</div>
						</div>
					</div>
					<script>
						$(function() {
							$('#myModal').modal('hide')
						});
					</script>

				</div>
				<div class="share_content_right">
					<iframe name="share_iframe" src="share_default.jsp" scrolling="auto" height="590px" width="710" border="0" frameborder="no"></iframe>
				</div>
			</div>
		</div>
	</body>

</body>

</html>
