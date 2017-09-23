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
											<div class="username">${user.name }</div>
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
														<a href="">${user.name }</a>
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
												<p><a href="per-center"><span>个人资料</span></a></p>
												<p><a href=""><span>帮助中心</span></a></p>
												<p><a href=""><span>设置</span></a></p>
												<p><a  onclick="logout()"><span>退出</span></a></p>
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
							<li class="active">
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
							<li>
								<a href="/networkdisk/recycle.jsp"><i class="batch barbage"></i><br>回收站</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="page">
			<div class="page-container">
				<div class="container">
					<div id="creditData">
						<canvas id="cvs" width="380" height="380"></canvas>
						<div id="creditContent">
							<a style="color: #000000;font-size:12px ;">当前占用</a>
							<h1>12%</h1>
						</div>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade in active" id="tw1">
							<div class="row">
								<div class="span3">
									<form action="javascript:void(0)" method="post" style="width: 0px;display: block;">
										<div class="upfile" style="width:84px;display: block;">
											<a href="" class="file" title="请选择文件" style="font-size: 15px;">
												<img src="/networkdisk/img/upload.png" style="margin-bottom: 3px;" />&nbsp;上传
												<input type="file" id="up" value="上传" />
											</a>
											<ul class="upload">
												<li title="请上传文件">上传文件</li>
												<li title="请上传文件夹">上传文件夹</li>
											</ul>
										</div>
									</form>
									<a class="g_button" id="newonefile"><img src="/networkdisk/img/newfile.png" style="margin-bottom: 3px;" />&nbsp;新建文件夹</a>
									<a class="g_button"><img src="/networkdisk/img/download.png" style="margin-bottom: 3px;" />&nbsp;离线下载</a>
									<div class="equip" style="width:105px;display:inline-block;position: relative;">
										<a class="g_button g_1" id="g_button"><img src="/networkdisk/img/iphone.png" style="margin-bottom: 3px;" />&nbsp;我的设备</a>
										<ul class="equi">
											<li title="推送任务列表">推送任务列表</li>
											<li title="添加设备">添加设备</li>
										</ul>
									</div>
									<div class="equip_1">
										<ul class="equi_1">
											<li id="f1"><img src="/networkdisk/img/share.png" />分享</li>
											<li><img src="/networkdisk/img/download.png" />下载</li>
											<li><img src="/networkdisk/img/delete.png" />删除</li>
											<li>复制到</li>
											<li id="f2">移动到</li>
										</ul>
									</div>
									<div class="span5">
										<div class="cs" style="display: inline-block;">
											<form action="" method="post">
												<a class="search">
													<input type="text" value="" placeholder="搜索您的文件" class="search_input" onfocus="this.placeholder=''" onblur="this.placeholder='搜索您的文件'" />
													<span class="fa fa-search" id="ser"></span>
												</a>
											</form>
										</div>
										<div class="ch">
											<div class="lp">
												<a class="list"><img src="img/list.png" /></a>
												<ul class="listpal">
													<li><img src="/networkdisk/img/OK.png" class="active" />&nbsp;文件名</li>
													<li><img src="/networkdisk/img/OK.png" />&nbsp;大小</li>
													<li><img src="/networkdisk/img/OK.png" />&nbsp;修改日期</li>
												</ul>
											</div>
											<a class="large"><img src="/networkdisk/img/other.png" /></a>
										</div>
									</div>
								</div>
								<div class="tw1_body">
									<div class="Jdh">
										<span class="j1">全部文件</span>
										<span class="j2">已加载全部，共8条</span>
									</div>
									<div class="Qdh">
										<ul>
											<li style="width: 60%;margin-left: -40px;">
												<input type="checkbox" class="chk_1" /><span id="n1">文件名</span>
											</li>
											<li>大小</li>
											<li>修改日期</li>
										</ul>
									</div>
									<form action="" method="post">
										<table class="table">
											<tbody>
												<tbody>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />
															<a>产品1</a>
															<span id="more">
															<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">23/11/2013</td>
														<td id="t3">待发货</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品2
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">10/11/2013</td>
														<td id="t3">发货中</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品3
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">待确认</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品4
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">已退货</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品3
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">待确认</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品4
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">已退货</td>
													</tr>
												</tbody>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tw2">
							<div class="row" style="width: 95%;float: right;">
								<div class="moudle">
									<ul id='mou_1' class="tab">
										<li class="active">
											<a href="#tb1">最近上传</a>
										</li>
										<li>
											<a href="#tb2">时光轴</a>
										</li>
									</ul>
								</div>
								<div class="donetimeline">
									<span style="float: left;display: block;">
										<input type="checkbox"style="position:relative;top: 2px;"/>
										<span id="c1"></span>
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
										<span class="timeline_day1">2017年9月16号</span>
										<span class="fa fa-chevron-down" id="down"></span>
										<span class="timeline_day3">3张</span>
										<span style="float: right;"><input type="checkbox" id="chall"style="position:relative;top: 2px;"/>全选</span>
									</div>
									<div class="timelin_content">
										<span><i class="fa fa-check-square-o"></i></span><img src="img/v7.jpg" />
										<span><i class="fa fa-check-square-o"></i></span><img src="img/v8.jpg" />
										<span><i class="fa fa-check-square-o"></i></span><img src="img/v9.jpg" />
									</div>
									<div class="timeline">
										<span class="timeline_day1">2017年8月16号</span>
										<span class="fa fa-chevron-down" id="down_1"></span>
										<span class="timeline_day3">3张</span>
										<div class="equip_1">
											<ul class="equi_1">
												<li id="f1"><img src="/networkdisk/img/share.png" />分享</li>
												<li><img src="/networkdisk/img/download.png" />下载</li>
												<li><img src="/networkdisk/img/delete.png" />删除</li>
												<li>复制到</li>
												<li id="f2">移动到</li>
											</ul>
										</div>
										<span style="float: right;"><input type="checkbox"style="position:relative;top: 2px;"/>全选</span>
									</div>
									<div class="timelin_content_1">
										<span><i class="fa fa-check-square-o"></i></span><img src="/networkdisk/img/v7.jpg" />
										<span><i class="fa fa-check-square-o"></i></span><img src="/networkdisk/img/v8.jpg" />
										<span><i class="fa fa-check-square-o"></i></span><img src="/networkdisk/img/v9.jpg" />
									</div>
								</div>
								<div class="tab-pane fade" id="tb2">
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tw3">
							<div class="row">
								<div class="span3">
									<form action="javascript:void(0)" method="post" style="width: 0px;display: block;">
										<div class="upfile" style="width:84px;display: block;">
											<a href="" class="file" title="请选择文件" style="font-size: 15px;">
												<img src="/networkdisk/img/upload.png" style="margin-bottom: 3px;" />&nbsp;上传
												<input type="file" id="up" value="上传" />
											</a>
											<ul class="upload">
												<li title="请上传文件">上传文件</li>
												<li title="请上传文件夹">上传文件夹</li>
											</ul>
										</div>
									</form>
									<a class="g_button"><img src="/networkdisk/img/download.png" style="margin-bottom: 3px;" />&nbsp;离线下载</a>
									<div class="equip" style="width:105px;display:inline-block;position: relative;">
										<a class="g_button g_1"><img src="/networkdisk/img/iphone.png" style="margin-bottom: 3px;" />&nbsp;我的设备</a>
										<ul class="equi">
											<li title="推送任务列表">推送任务列表</li>
											<li title="添加设备">添加设备</li>
										</ul>
									</div>
									<div class="equip_1">
										<ul class="equi_1">
											<li id="f1"><img src="/networkdisk/img/share.png" />分享</li>
											<li><img src="/networkdisk/img/download.png" />下载</li>
											<li><img src="/networkdisk/img/delete.png" />删除</li>
											<li>复制到</li>
											<li id="f2">移动到</li>
										</ul>
									</div>
									<div class="span5">
										<div class="cs" style="display: inline-block;">
											<form action="" method="post">
												<a class="search">
													<input type="text" value="" placeholder="搜索您的文件" class="search_input" onfocus="this.placeholder=''" onblur="this.placeholder='搜索您的文件'" />
													<span class="glyphicon glyphicon-search" id="ser"></span>
												</a>
											</form>
										</div>
										<div class="ch">
											<div class="lp">
												<a class="list"><img src="img/list.png" /></a>
												<ul class="listpal">
													<li><img src="/networkdisk/img/OK.png" class="active" />&nbsp;文件名</li>
													<li><img src="/networkdisk/img/OK.png" />&nbsp;大小</li>
													<li><img src="/networkdisk/img/OK.png" />&nbsp;修改日期</li>
												</ul>
											</div>
											<a class="large"><img src="/networkdisk/img/other.png" /></a>
										</div>
									</div>
								</div>
								<div class="tw1_body">
									<div class="Jdh">
										<span class="j1">全部文件</span>
										<span class="j2">已加载全部，共8条</span>
									</div>
									<div class="Qdh">
										<ul>
											<li style="width:60%;margin-left: -40px;">
												<input type="checkbox" class="chk_1" /><span id="n1">文件名</span>
											</li>
											<li>大小</li>
											<li>修改日期</li>
										</ul>
									</div>
									<form action="" method="post">
										<table class="table">
											<tbody>
												<tbody>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品1
															<span id="more">
															<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">23/11/2013</td>
														<td id="t3">待发货</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品2
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">10/11/2013</td>
														<td id="t3">发货中</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品3
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">待确认</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品4
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">已退货</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品3
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">待确认</td>
													</tr>
													<tr>
														<td id="t1">
															<input type="checkbox" class="chk_2" />产品4
															<span id="more">
														<span class="fa fa-share-alt" title="分享"></span>
															<span class="fa fa-download" title="下载"></span>
															<span class="fa fa-ellipsis-h" title="更多"></span>
															</span>
														</td>
														<td id="t2">20/10/2013</td>
														<td id="t3">已退货</td>
													</tr>
												</tbody>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tw4">
							内容同上
						</div>
						<div class="tab-pane fade" id="tw5">
							内容同上

						</div>
						<div class="tab-pane fade" id="tw6">
							内容同上
						</div>
						<div class="tab-pane fade" id="tw7">
							内容同上
						</div>
					</div>
				</div>
			</div>
			<div id="msg">
				<span style="float: left;font-size: 16px;padding-left: 10px;">上传完成</span>
				<span class="fa fa-times"></span>
				<span class="fa fa-window-maximize"></span>
				<div class="warn">
					有一个文件上传成功
					<span class="fa fa-remove" style="float: right;font-size: 16px;color: #F5F5F5;line-height: 40px;cursor: pointer;"></span>
				</div>
				<div class="upmagbox">
					<div class="upload_header">
						<div class="file_name">文件（夹）名</div>
						<div class="file_size">大小</div>
						<div class="file_path">上传目录</div>
						<div class="file_status">状态</div>
					</div>
					<div class="upload_body">
						<ul class="container" id="uploaderList">
							<li class="file-list">
								<div class="file-name" title="[东京暗鸦].[DMG][Tokyo.Ravens][03][720P][GB](ED2000.COM).mp4">
									<span class="fa fa-file-movie-o" style="font-size: 24px; color: purple; position: relative;top: -15px;"></span>
									<span class="name-text">[东京暗鸦].[DMG][Tokyo.Ravens][03][720P][GB](ED2000.COM).mp4</span>
								</div>
								<div class="file_size">263.1M</div>
								<div class="file_path">
									<a title="/" class="server_path" href="#list/path=/">我的文件</a>
								</div>
								<div class="file_status"><span class="uploading"><em class="precent">0.19%</em><em class="speed">(341KB/s)</em></span></div>
								<div class="file_operate">
									<em class="fa fa-pause"></em>
									<em class="fa fa-play"></em>
								</div>
							</li>
							<li class="file-list">
								<div class="file-name" title="[东京暗鸦].[DMG][Tokyo.Ravens][11][720P][GB](ED2000.COM).mp4">
									<span class="fa fa-file-movie-o" style="font-size: 24px; color: purple; position: relative;top: -15px;"></span>
									<span class="name-text">[东京暗鸦].[DMG][Tokyo.Ravens][11][720P][GB](ED2000.COM).mp4</span>
								</div>
								<div class="file_size">157.9M</div>
								<div class="file_path">
									<a title="/" class="server_path" href="#list/path=/">我的文件</a>
								</div>
								<div class="file_status">
									<span class="uploading">
										<em class="precent">2%</em><em class="speed">(341KB/s)</em>
									</span>
								</div>
								<div class="file_operate">
									<em class="fa fa-pause"></em>
									<em class="fa fa-play"></em>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<script src="/networkdisk/js/canvas.js"></script>
		<script src="/networkdisk/js/jquery.contextify.js"></script>
		<script>
		function logout()
		{
			if(confirm("确定退出？"))
				{
				  window.location.href="logout";
				}
		}
			var options = {
				items: [{
						text: '打开',
						href: '#'
					},
					{
						text: '下载',
						onclick: function() {
							alert("你点击了第2个链接")
						}
					},
					{
						text: '复制到',
						onclick: function() {
							alert("你点击了第3个链接")
						}
					},
					{
						text: '移动到',
						onclick: function() {
							alert("你点击了第4个链接")
						}
					},
					{
						text: '重命名',
						onclick: function() {
							alert("你点击了第5个链接")
						}
					},
					{
						text: '删除',
						onclick: function() {
							alert("你点击了第6个链接")
						}
					}
				]
			}
			$('table').contextify(options);
		</script>
	</body>

</html>
