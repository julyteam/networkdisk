<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.july.networkdisk.util.CommonUtil" %>
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
<link href="/networkdisk/css/component.css" rel="stylesheet" />
<link href="/networkdisk/css/context.css" rel="stylesheet" />
<link rel="stylesheet"
	href="/networkdisk/font-awesome-4.7.0/css/font-awesome.min.css">
<script src="/networkdisk/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/networkdisk/js/ajaxfileupload.js"></script>
<script src="/networkdisk/user/js/bootstrap.min.js"></script>
<script src="/networkdisk/js/index.js"></script>
<script src="/networkdisk/js/jquery.rotate.min.js"></script>
</head>

<body>
	<div id="overlay" class="overlay"></div>
		<div id="in-nav">
			<div class="logo">
				<a id="logo" href="/networkdisk/index.jsp">
					<img src="/networkdisk/img/LOGO.png" style="position: absolute;top:3px;"/>
				</a>
			</div>
			<div class="container1">
				<div class="row1">
					<div class="span1" style="display: inline;">
						<ul class="pull-left">
							<li class="active">
								<a href="goindex">网盘</a>
							</li>
							<li>
								<a href="findAll">分享</a>
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
										<img src="showphoto?uid=${sessionScope.user.id }" width="30px" style="border-radius: 30px;position: absolute;top:10px;" />
										<a href="#" style="display: inline-block;height:50px;">
											<div class="username">${sessionScope.user.name }</div>
											<img src="/networkdisk/img/VIP1.png" style="display: inline-block;margin-bottom:45px;" />
										</a>
										<em style="display: inline-block;"><img src="/networkdisk/img/downchoose.png" class="c" style="margin-bottom: 40px;"/></em>
									</div>
									<div class="user">
									<span id="triangle-up">								
									</span>
										<div class="userpan">
											<div class="userpan_2">
												<div class="u1">
													<a href="#">
														<img src="showphoto?uid=${sessionScope.user.id }"  width="30px"  class="userpic" />
														<a href="">${sessionScope.user.name }</a>
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
												<p><a href="per-center"><span>个人资料</span></a></p>
												<p><a href=""><span>帮助中心</span></a></p>
												<p><a href=""><span>设置</span></a></p>
												<p><a href="logout"><span>退出</span></a></p>
											</div>
										</div>
									</div>
								</div>
							
						</li>
						<li style="width: 100px;"><a href="#" style="font-size: 13px;">&nbsp;客户端下载</a></li>
						<li><a href="noticeList"><img src="/networkdisk/img/notice.png" style="margin-top: 10px;"/></a></li>
						<li><a href="#"><img src="/networkdisk/img/serve.png" style="margin-top: 10px;"/></a></li>
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
						<li><a href="picture"><i
								class="batch stream"></i><br>图片</a></li>
						<li><a href="word"><i
								class="batch plane"></i><br>文档</a></li>
						<li class="active"><a href="video"><i
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
			<div class="container">
				<div class="tab-content">
					<div>
						<div class="row">
							<div class="span3">
								<span>全部视频</span>
								<span style="float: right;">已加载几个</span>
							</div>
							<div id="tb1" style="margin-top:10px;">
								<div class="open-enable" style="display: block;">
									<div class="open-video" title="">
										<img class="video-img" src="/networkdisk/img/v7.jpg">
										<span class="v-bl"></span>
									</div>
									<div class="file-name">
										<a class="v-name" href="javascript:void(0);" title="08.mp4">07.mp4</a>
									</div>
									<span class="video-check">
										<i class='fa fa-share-alt' title='分享'></i>
										<i class='fa fa-download' title='下载' ></i>
										<i class="fa fa-trash" title='删除'></i>
									</span>
								</div>
								<div class="open-enable" style="display: block;">
									<div class="open-video" title="">
										<img class="video-img" src="/networkdisk/img/v8.jpg">
										<span class="v-bl"></span>
									</div>
									<div class="file-name">
										<a class="v-name" href="javascript:void(0);" title="08.mp4">08.mp4</a>
									</div>
									<span class="video-check">
										<i class='fa fa-share-alt' title='分享'></i>
										<i class='fa fa-download' title='下载' ></i>
										<i class="fa fa-trash" title='删除'></i>
									</span>
								</div>
								<div class="open-enable" style="display: block;">
									<div class="open-video" title="">
										<img class="video-img" src="/networkdisk/img/v9.jpg">
										<span class="v-bl"></span>
									</div>
									<div class="file-name">
										<a class="v-name" href="javascript:void(0);" title="08.mp4">09.mp4</a>
									</div>
									<span class="video-check">
										<i class='fa fa-share-alt' title='分享'></i>
										<i class='fa fa-download' title='下载' ></i>
										<i class="fa fa-trash" title='删除'></i>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
  		<div class="md-modal md-effect-4" id="modal-4">
			<div class="md-content">
				<div class="dialog-header dialog-drag">
					<span class="dialog-header-title"></span>
				</div>
				<div class="dialog-body">
					<div class="share-dialog">
						<div class="content" id="_disk_id_1">
							<ul class="tab">
								<li class="share-link current" _idx="0"><em
									class="fa fa-link"></em>链接分享</li>
								<li class="share-friend" _idx="1"><em class="fa fa-users"></em>发给好友</li>
								<li class="share-mail" _idx="2"><em class="fa fa-envelope"></em>发到邮箱</li>
							</ul>
							<div class="cb"></div>
							<div class="tips-placeholder">
								<div class="tips" style="display: none;">
									<em class="icon"></em><span></span><em class="close icon"></em>
								</div>
							</div>
							<ul class="content" style="width: 520px; margin-left: -25px;">
								<li class="share-link" style="display: block;">
									<div class="create-link">
										<table class="validity-section">
											<tbody>
												<tr>
													<td class="first-child">分享形式</td>
													<td>
														<div class="share-method-line">
															<input type="radio" id="share-method-private" name="share-method" value="private" checked="true" style="margin-bottom:-3px;">
															<b style="color: rgb(66, 78, 103);">加密</b><span>仅限拥有密码者可查看，更加隐私安全</span>
														</div>
														<div class="share-method-line share-public-panel" style="color: rgb(139, 144, 158);">
															<input type="radio" id="share-method-public" name="share-method" value="public" style="margin-bottom:-3px;"> 
																<b>公开</b><span>任何人可查看或下载，同时出现在您的
																<a class="share-home-href" href="" target="_blank" style="color: rgb(59, 140, 255);">个人主页</a>
															</span> <span class="share-public-tip" style="display: none;"></span>
														</div>
													</td>
												</tr>
												<tr>
													<td class="first-child">有效期</td>
													<td class="choose-panel">
														<button class="g-button g-button-large-gray choose-value">
															<span class="text" id="datetype">永久有效</span> <em
																class="fa fa-sort-desc"></em>
														</button>
														<ul class="choose-list" style="display: none;">
															<li class="choose-checked" value="0"><em>永久有效</em><span
																class="fa fa-check"></span></li>
															<li value="7"><em>7天</em><span class="fa fa-check"></span></li>
															<li value="1"><em>1天</em><span class="fa fa-check"></span></li>
														</ul>
													</td>
												</tr>
											</tbody>
										</table>
										<div class="createlink" style="display: none">
											<div class="create-success" style="padding-bottom: 10px;">
												<span class="public" style="display: none;"> <em
													class="fa fa-check-circle"></em> 成功创建公开链接
												</span> <span class="private"> <em
													class="fa fa-check-circle"></em> 成功创建私密链接
												</span>
											</div>
											<div class="link-info">
												<div class="copy-button-section">
													<a class="copy-button" id="copyShare"> 
														<span class="g-button-right"> 
														<span class="text public" style="display: none" onclick="Copy()">复制链接</span>
														<span class="text private" onclick="myCopy()">复制链接及密码</span>
														</span>
													</a>
													<div class="copy-tips" id="copy-tips">复制链接成功</div>
												</div>
												
												<div class="url">
													<input type="text" spellingcheck="false" readonly="readonly" class="share-url" id="share-url" value="">
													<span class="share-validity-tip">链接永久有效</span>
												</div>
												<div class="password">
													<a>提取密码</a> 
													<input type="text" class="share-password" id="share-password" spellingcheck="false" readonly="readonly" value="">
												</div>
												<div class="description">
													<span class="private">可以将链接发送给你的QQ等好友 </span>
													<span class="public" style="display:none"> 
														1.生成文件下载链接 <br>
														2.把链接通过QQ、微博、人人网、QQ空间等方式分享给好友
													</span>
												</div>
												<input type="text" class="sharelink" id="sharelink" spellingcheck="false" readonly="readonly" value="" style="opacity:0;">
											</div>
										</div>
									</div>
								</li>
							</ul>
							<div class="footer">
								<a class="md-close close" id="end">关闭</a><a href="javascript:;"
									class="create"> <span class="g-button-right"> <span
										class="text" id="create">创建链接</span>
								</span>
								</a>
								<!-- <a href="javascript:;" class="create share" style="display:none"> <span class="g-button-right"> <span
										class="text" id="create">确认分享</span>
								</span>
								</a> -->
							</div>
							<%String uuid = CommonUtil.createUUID(); String pwd = CommonUtil.getUUID(4);%>
							<script type="text/javascript">
								$("#end").click(function(){
									/* location.href="index.jsp"; */
								});
								$("#create").click(function(){
									$("#share-url").attr("value","http://47.95.213.42:8080/networkdisk/shareurl?url=<%=uuid%>");
									$("#share-password").attr("value","<%=pwd%>");									
									var btns = new Array();
									var cateid = new Array();
									var uuid = $("#share-url").val();
									var time = $("#datetype").text();
									var method = $('input[name="share-method"]:checked').val();
									if(method == "private"){
										var pwd = $("#share-password").val();
									}else{
										var pwd = "";
									}
									if($('.table').find('input:checked').length!=0){
										$("input[name='filebox']:checked").each(function(key,value){
										    btns[key] = $(this).val();
										});
										$("input[name='catebox']:checked").each(function(key,value){
										    cateid[key] = $(this).val();
										});
									}else{
										if(iscate){
											cateid[0]=shareid;
										}else{
											btns[0]=shareid;	
										}
									}																											
									if(btns == "" && cateid == ""){
										alert("请选择文件或文件夹进行分享！");
									}else{
										$.ajax({  
								            url:"share?fidlist="+btns+"&cateid="+cateid+"&uuid="+uuid+"&pretime="+time+"&sharepwd="+pwd,
								            dataType: 'json',
								            async: false,
								            success:function(data){  
								               
								            },  
								            error:function(){  
								                alert("分享失败！");  
								            }  
								        });  
									}	
									
								});
							</script>
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>  
</body>
<script type="text/javascript">
	$('.open-enable').mouseenter(function(){
		$(this).css('background-color','rgba(241, 245, 250,0.5)');
		$(this).css('border','1px solid #90c3fd');
		$(this).find('.open-video .v-bl').show();
		$(this).find('.video-check').show();
	});
	$('.open-enable').mouseleave(function(){
		$(this).css('background','none');
		$(this).css('border','1px solid #fff');
		$(this).find('.open-video .v-bl').hide();
		$(this).find('.video-check').hide();
	});
	$('.video-check i').mouseenter(function(){
		$(this).css('color','#000');
	})
	$('.video-check i').mouseleave(function(){		
		$(this).css('color','rgb(59, 140, 255)');
	});
	$('.video-check i').click(function(){
		var name=$(this).parents('.open-enable').find('.v-name').text();
		if($(this).hasClass('fa-share-alt')){
			alert("分享"+name);
		}else if($(this).hasClass('fa-download')){
			alert("下载"+name);
		}else{
			alert("删除"+name);
		}
		
		
		
	})
</script>
</html>
