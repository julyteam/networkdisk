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
								<a href="index.jsp">网盘</a>
							</li>
							<li>
								<a href="share.jsp">分享</a>
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
										<img src="showphoto?uid=${user.id }" width="30px" style="border-radius: 30px;position: absolute;top:10px;" />
										<a href="#" style="display: inline-block;height:50px;">
											<div class="username">${user.name }</div>
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
														<img src="showphoto?uid=${user.id }"  width="30px"  class="userpic" />
														<a href="">${user.name }</a>
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
												<p><a href="${pageContext.request.contextPath}/per-center"><span>个人资料</span></a></p>
												<p><a href=""><span>帮助中心</span></a></p>
												<p><a href=""><span>设置</span></a></p>
												<p><a href="logout"><span>退出</span></a></p>
											</div>
										</div>
									</div>
								</div>
							
						</li>
						<li style="width: 100px;"><a href="#" style="font-size: 13px;">&nbsp;客户端下载</a></li>
						<li><a href="#"><img src="/networkdisk/img/notice.png" style="margin-top: 10px;"/></a></li>
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
						<li class="active"><a href="/networkdisk/index.jsp#tw1"
							class="act"><i class="batch home"></i><br>全部文件</a></li>
						<li><a href="/networkdisk/index.jsp#tw2"><i
								class="batch stream"></i><br>图片</a></li>
						<li><a href="/networkdisk/index.jsp#tw3"><i
								class="batch plane"></i><br>文档</a></li>
						<li><a href="/networkdisk/index.jsp#tw4"><i
								class="batch calendar"></i><br>视频</a></li>
						<li><a href="/networkdisk/index.jsp#tw7"><i
								class="batch settings"></i><br>其他</a></li>
						<li><a href="gomyshare"><i
								class="batch share"></i><br>我的分享</a></li>
						<li><a href="/networkdisk/recycle.jsp"><i
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
					<div class="tab-pane fade in active" id="tw1">
						<div class="row">
							<div class="span3">
								<form action="javascript:void(0)" method="post"
									style="width: 0px; display: block;">
									<div class="upfile" style="width: 84px; display: block;">
										<a href="" class="file" title="请选择文件" style="font-size: 15px;">
											<img src="/networkdisk/img/upload.png"
											style="margin-bottom: 3px;" />&nbsp;上传
											<input type="file" name="file" id="upfile" value="上传" style="cursor:pointer;"/>
										</a> 
										
									</div>
								</form>
								<a class="g_button" id="newonefile"><img
									src="/networkdisk/img/newfile.png" style="margin-bottom: 3px;" />&nbsp;新建文件夹</a>
								<a class="g_button" id="mydownload">
								<img src="/networkdisk/img/download.png" style="margin-bottom: 3px;" />&nbsp;我的上传</a>
								<div class="equip"
									style="width: 105px; display: inline-block; position: relative;">
									<a class="g_button g_1" id="g_button"><img
										src="/networkdisk/img/iphone.png" style="margin-bottom: 3px;" />&nbsp;我的设备</a>
									<ul class="equi">
										<li title="推送任务列表">推送任务列表</li>
										<li title="添加设备">添加设备</li>
									</ul>
								</div>
								<div class="equip_1">
									<ul class="equi_1">
										<li id="f1" class="sharefile">
										<a href="javascript:;" class="md-trigger" data-modal="modal-4">
										<img src="/networkdisk/img/share.png" style="margin-bottom: 3px" />分享</a></li>
										<li id='f3'><img src="/networkdisk/img/delete.png" style="margin-bottom:3px"/>删除</li>
										<li id='f4'>复制到</li>
										<li id="f2">移动到</li>
									</ul>
								</div>
								<div class="span5">
									<div class="cs" style="display: inline-block;">
										<form action="" method="post">
											<a class="search"> <input type="text" value=""
												placeholder="搜索您的文件" class="search_input"
												onfocus="this.placeholder=''"
												onblur="this.placeholder='搜索您的文件'" /> <span
												class="fa fa-search" id="ser"></span>
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
									<table id="july_allFile" style="display:inline">
										<tr>
										</tr>
									</table>
									<span class="Sdh" style="float:right;display:inline-block;"></span>
								</div>
								
								<div class="Qdh">
									<ul>
										<li style="width: 60%; margin-left: -40px;"><input
											type="checkbox" class="chk_1" /><span id="n1">文件名</span></li>
										<li>大小</li>
										<li>修改日期</li>
									</ul>
								</div>
								<div class="nullfile eefile">
									<p class="ggflie">
										您还没上传过文件哦，点击
										<span class="mlfile upload-wrapper">上传
											<form action="javascript:void(0);" style="position:absolute;opacity:0;top:0;left:0;width:100%;height:100%;cursor:pointer;">
												<input title="点击选择文件" multiple="" accept="*/*" type="file" name="uploader" style="position:absolute;opacity:0;top:0;left:0;width:100%;height:100%;cursor:pointer;">
											</form>
										</span>
									</p>
								</div>
								<form action="" method="post">
									<table class="table">
										<tbody id="mytbody">

										</tbody>
									</table>
								</form>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="tw2">
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
										type="checkbox" id="chall"
										style="position: relative; top: 2px;" />全选</span>
								</div>
								<div class="timelin_content">
									<span><i class="fa fa-check-square-o"></i></span><img
										src="img/v7.jpg" /> <span><i
										class="fa fa-check-square-o"></i></span><img src="img/v8.jpg" /> <span><i
										class="fa fa-check-square-o"></i></span><img src="img/v9.jpg" />
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
					<div class="tab-pane fade" id="tw3">
					</div>
					<div class="tab-pane fade" id="tw4">内容同上</div>
					<div class="tab-pane fade" id="tw5">内容同上</div>
					<div class="tab-pane fade" id="tw6">内容同上</div>
					<div class="tab-pane fade" id="tw7">内容同上</div>
				</div>
			</div>
		</div>
		<div class="md-modal md-effect-10" id="modal-10" >
    		<div class="md-content" style="height:310px;">
     			<div class="dialog-header dialog-drag">
					<span class="dialog-header-title">复制到 </span>
				</div>
      			<div class="dialog-tree">
        			<div id="menuTree" class="menuTree"></div>        			
      			</div>
      			<div class="dialog-footer g-clearfix">
      				<a class="g-button g-button-large cancel" href="javascript:void(0);" style="float: right;">
      				<span class="g-button-right" style="padding-right: 50px;">
      				<span class="text" style="width: auto;">取消</span>
      				</span>
      				</a>
      				<a class="g-button g-button-blue-large" href="javascript:void(0);" style="float: right;">
      				<span class="g-button-right" style="padding-right: 50px;">
      				<span class="text" style="width: auto;">确定</span>
      				</span>
      				</a>
      				<a class="g-button g-button-large" href="javascript:void(0);" style="float: left;">
      				<span class="g-button-right"><em class="fa fa-plus-square-o" title="新建文件夹"></em>
      				<span class="text" style="width: auto;">新建文件夹</span>
      				</span>
      				</a>
      			</div>
    		</div>
  		</div>
  		<div class="md-modal md-effect-4" id="modal-4">
			<div class="md-content">
				<div class="dialog-header dialog-drag">
					<span class="dialog-header-title">
						分享文件(夹):151209124312-1.jpg </span>
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
															<input type="radio" id="share-method-private" name="share-method" value="private" checked="true"style="margin-bottom:3px;">
															<b style="color: rgb(66, 78, 103);">加密</b><span>仅限拥有密码者可查看，更加隐私安全</span>
														</div>
														<div class="share-method-line share-public-panel" style="color: rgb(139, 144, 158);">
															<input type="radio" id="share-method-public" name="share-method" value="public" style="margin-bottom:3px;"> 
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
														<span class="text public" style="display: none">复制链接</span>
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
									$("#share-url").attr("value","http://localhost:8080/networkdisk/shareurl?url=<%=uuid%>");
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
									$("input[name='filebox']:checked").each(function(key,value){
									    btns[key] = $(this).val();
									});
									$("input[name='catebox']:checked").each(function(key,value){
									    cateid[key] = $(this).val();
									});
									
									
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
		<div id="msg">
			<span style="float: left; font-size: 16px; padding-left: 10px;">我的上传</span>
			<span class="fa fa-times"></span> <span class="fa fa-window-maximize"></span>
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
							<div class="file-name"
								title="[东京暗鸦].[DMG][Tokyo.Ravens][03][720P][GB](ED2000.COM).mp4">
								<span class="fa fa-file-movie-o"
									style="font-size: 24px; color: purple; position: relative; top: -15px;"></span>
								<span class="name-text">[东京暗鸦].[DMG][Tokyo.Ravens][03][720P][GB](ED2000.COM).mp4</span>
							</div>
							<div class="file_size">263.1M</div>
							<div class="file_path">
								<a title="/" class="server_path" href="#list/path=/">我的文件</a>
							</div>
							<div class="up_status"></div>
							<div class="probox" style="width: 100%; height:5px;padding-left:0px;display:none;">
								<div id="myprogress" style="background-color: hsl(100, 80%, 60%); height: 5px;"></div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script src="js/classie.js"></script>
	<script src="js/modalEffects.js"></script>
	<script type="text/javascript">
		var categorie =null;
		var recycle =null;
		var cateName = null;
		var caterid = null;
		function show(categorie_id, recycleflag ) {
			categorie = categorie_id;
			recycle = recycleflag;
			
			 if(cateName != null){
				var $head=$("<td><a id='"+caterid+"' class='aa'  style='cursor:pointer;'> >"+cateName+"</a></td>"); 
				$("#july_allFile tr").append($head)
			}else{
				var $head=$("<td><a id='null' class='aa' style='cursor:pointer;' >全部文件</a></td>"); 
				$("#july_allFile tr").append($head)
			} 			 
			 showchild(categorie_id,recycleflag)

		}
		
		function showchild(categorie_id,recycleflag){
			$(".showTr").remove();
			$.ajax({
				type : "post",
				dataType : "json",
				url : "${pageContext.request.contextPath}/showFileAndCate?Time="+new Date().getTime(),
				data : {
					categorie_id : categorie_id,
					recycleflag : recycleflag
				},
				success : function(map) {
					var listFile = map.listFiles;
					var listCate = map.listCategories;
					if(listCate=="" && listFile==""){
						$('.nullfile').show();
					}else{
						$('.nullfile').hide();
					}
			    var sum=parseInt(listCate.length+listFile.length);
				var $sumhead=$("<span class='j2'>已加载全部,共"+sum+"条</span>");
				$('.Sdh').html($sumhead);   
					for (var i = 0; i < listCate.length; i++) {
						//分割时间字符串
						var time = listCate[i].addtime;
						var newTime = time.split("T");
						
						var $str = $("<tr class='showTr'>"
								+ "<td>"
								+ "<input type='checkbox' name='catebox' value='"+listCate[i].id+"' class='chk_2'/>"
								+ "<img src='/networkdisk/img/category.png' width='28px' style='margin:0 5px 5px 10px;'>"
								+ "<input id='listCateID' class='reid' type='text' style='display:none' value="
								+ listCate[i].id
								+ ">"
								+ "<input id='listCateState' class='restate' type='text' style='display:none' value="
								+ listCate[i].state
								+ ">"
								+ "<input id='listCateName' class='rename' type='text' style='display:none' value="
								+ listCate[i].name
								+ ">"
								+ "<a id='showFile' class='july_cateName' >"
								+ listCate[i].name
								+ "</a>"
								+ "<div class='more'>"
								+ "<span class='fa fa-share-alt' title='分享'>"
								+ "</span>"
								+ "<span class='fa fa-ellipsis-h' title='更多'></span>"
								+ "<span class='menu' style='width: 96px;'>"
								+ "<a style='display: block;' data-menu-id='b-menu9' class='g-button-menu md-ren' href='javascript:void(0);'>重命名</a>"
								+ "<a style='display: block;' data-menu-id='b-menu10' class='g-button-menu md-copy' href='javascript:void(0);'>复制到</a>"
								+ "<a style='display: block;' data-menu-id='b-menu11' class='g-button-menu md-move' href='javascript:void(0);'>移动到</a>"
								+ "<a style='display: block;' data-menu-id='b-menu4' class='g-button-menu delelecate' id='"+listCate[i].id+"' >删除</a>"
								+ "</span></div></td>"
								+ "<td>--</td>"
								+ "<td>" 
								+ newTime[0]+" "+newTime[1]
								+ "</td>" 
								+ "</tr>");
						$("#mytbody").append($str);
					}
					for (var i = 0; i < listFile.length; i++) {
						var type;
						var filesize;
						var sizeflag;
						/* 修改时间格式 */
						var time = listFile[i].addtime;
						var newTime = time.split("T");
						
						/* 计算文件大小 */
						if(listFile[i].size/(1024*1024) < 1 ){
							filesize=(listFile[i].size/1024).toFixed(2);
							sizeflag="KB";
						}else
						{
							filesize=(listFile[i].size/(1024*1024)).toFixed(2);
							sizeflag="M";
						}
						
						switch(listFile[i].type){
							case("zip"):
								type="/networkdisk/img/ZIP_2.png";
							break;
							case("mp4"):
							case("rmvb"):
							case("avi"):
							case("mkv"):	
							case("wmv"):
							case("3gp"):	
							case("mov"):
								type="/networkdisk/img/video.png";
							break;
							case("png"):
								type="/networkdisk/img/png.png";
							break;
							case("jpg"):
								type="/networkdisk/img/jpg.png";
							break;
							case("gif"):
							case("bmp"):
							case("psd"):
							case("ai"):
							case("svg"):
								type="/networkdisk/img/picture1.png";
							break;
							case("doc"):
							case("docx"):
								type="/networkdisk/img/word.png";
							break;
							case("txt"):
								type="/networkdisk/img/text.png";
							break;
							case("xls"):
								type="/networkdisk/img/xls.png";
							break;
							case("pdf"):
								type="/networkdisk/img/pdf.png";
							break;
							case("html"):
								type="/networkdisk/img/html.png";
							break;
							case("mp3"):
							case("wav"):
							case("mod"):	
								type="/networkdisk/img/music.png";
							break;
							default:
								type="/networkdisk/img/others.png";
						}
						var $str = $("<tr class='showTr'>"
								+ "<td>"
								+ "<input type='checkbox' name='filebox' value='"+listFile[i].id+"' class='chk_2' />"
								+ "<img src='"
								+ type
								+ "'width='28px' style='margin:0 5px 5px 10px;'>"
								+ "<input id='listFileID' class='refileid' type='text' style='display:none' value="
								+ listFile[i].id
								+ ">"
								+ "<input id='listFileID' class='rename' type='text' style='display:none' value="
								+ listFile[i].name
								+ ">"
								+ "<a class='july_fileName'>"
								+ listFile[i].name
								+ "</a>"
								+ "<div class='more'>"
								+ "<span class='fa fa-share-alt' title='分享'>"
								+ "</span><span class='fa fa-download' title='下载' >"
								+ "</span>"
								+ "<span class='fa fa-ellipsis-h' title='更多'></span>"
								+ "</span>"
								+ "<span class='menu' style='width: 96px;'>"
								+ "<a style='display: block;' data-menu-id='b-menu9' class='g-button-menu md-ren' href='javascript:void(0);'>重命名</a>"
								+ "<a style='display: block;' data-menu-id='b-menu10' class='g-button-menu md-copy' href='javascript:void(0);'>复制到</a>"
								+ "<a style='display: block;' data-menu-id='b-menu11' class='g-button-menu md-move' href='javascript:void(0);'>移动到</a>"
								+ "<a style='display: block;' data-menu-id='b-menu4' class='g-button-menu delelefile' id='"+listFile[i].id+"' >删除</a>"
								+ "</span></div></td>" 
								+ "<td>"
								+ filesize + sizeflag
								+ "</td>" 
								+ "<td>"
								+ newTime[0]+" "+newTime[1]
								+ "</td>"
								+ "</tr>")
						$("#mytbody").append($str);
						
					}
				},
				error : function() {
					alert("查询失败")
				}						
			});
		}

		/*删除当前文件*/
		$('#mytbody').on('click','.delelefile',function(){
			var fileid=$(this).attr("id");
			layFileRecyle(fileid);
		});
		
		/*删除当前文件夹*/
		$('#mytbody').on('click','.delelecate',function(){
			var cateid=$(this).attr("id");
			layCateRecyle(cateid);
		});
		/*删除当前文件到回收站*/
		function layFileRecyle(fileID){
			$.ajax({
				url : "${pageContext.request.contextPath}/layFileRecyle?file_id="+fileID,
				dataType : 'json',
				success : function(data) {
					/* alert(data); */
				},
				error : function() {
					alert("文件放入回收站失败！");
				}
			});
			showchild(categorie,recycle);
		}
		/*删除当前文件夹*/
		function layCateRecyle(cateID){
			$.ajax({
				url : "${pageContext.request.contextPath}/layCateRecycle?categorieID="+cateID,
				dataType : 'json',
				success : function(data) {
					/* alert(data); */
				},
				error : function() {
					alert("文件夹放入回收站失败！");
				}
			});
			showchild(categorie,recycle);
		}
		
		/* 显示条形菜单 */
		$('#july_allFile').on('click','.aa',function(){
			var caterid=$(this).attr("id");
			if(caterid =="null"){
				show(null,recycle);
			}else{
			show(caterid,recycle);
			}
			$(this).parent('td').nextAll('td').remove();
		});
		
		/*跳下一级*/
		$('table').on('click','.july_cateName',function(){
			var cateid =$(this).parent('td').find('.reid').val();
			var catestate =$(this).parent('td').find('.restate').val();
			var catename =$(this).parent('td').find('.rename').val();
			cateName = catename;
			caterid = cateid;
			show(cateid,catestate);
		});
		
		
		/* 文件下载 */
		
		 $('table').on('click','.fa-download',function(){
		  var fileid =$(this).parent().parent('td').find('.refileid').val();
		  var filename =$(this).parent().parent('td').find('.rename').val();
		  window.location.href="fileDownload?fileFileName="+filename+"&netFileID="+fileid;
		});
		
		/* 显示文件和文件夹 */
		$(function() {
			show(null, 0);
		});
		
		
		/* 文件上传 */
		$("#upfile").change(function() {
			var file = this.files[0];
			july_fileReader(file);
		});
		function july_fileReader(file) {
			var flag = 0;
			$(".july_fileName").each(function() {
				if ($(this).text() == file.name) {
					flag = 1;
				}
			})
			if (flag != 1) {
				if (window.FileReader) {
					var reader = new FileReader();
					reader.readAsDataURL(file);
					//监听文件读取结束后事件    
					reader.onloadend = function(e) {
						ajaxFileUpload();
						$('#msg').show();
					};
				}
			} else {
				alert("文件夹中已经有相同名字的文件！")
			}
		}

		var time = 0;
		function ajaxFileUpload() {
			$("#myprogress").width(0);
			$('#msg').css('bottom', '0px');
			time = window.setInterval(progress, 100);
			$('.up_status').html("上传中···");
			$.ajaxFileUpload({
						url : '${pageContext.request.contextPath}/fileupload?categorie_id='+ categorie,
						secureuri : false,
						fileElementId : 'upfile',//upfile是input file 标签的id值  
						dataType : 'multipart/form-data',
						success : function(data) {
							//需要重新绑定事件
							$("#upfile").change(function() {
								var file = this.files[0];
								july_fileReader(file);
							});
							//刷新页面
							$('.up_status').html("上传成功");
							 $('.probox').hide();
							 $('#msg').css('bottom', '-300px');
							showchild(categorie,recycle);
						},
						error : function() {
							$('.up_status').html("上传失败");
							 $('.probox').hide();
						}

					})
			return false;
		}

		function progress() {
			$.ajax({
				url : "${pageContext.request.contextPath}/progress",
				dataType : 'json',
				success : function(data) {
					$('.probox').show();
					$("#myprogress").width(data.rate + "%");
					if (data.rate == 100) {
						clearInterval(time);
					}
				},
				error : function() {
					alert("error");
				}
			});
		}
	</script>
	<script type="text/javascript">
		$('table').on('click','.fa-ellipsis-h',function(){
			$(this).parent().parent('td').find('.menu').css('display','block');
		});
		$('table').on('mouseleave','.menu',function(){
			$('.menu').css('display','none');
		});
		$('table').on('click','.md-copy',function() {
			$('.md-effect-10').addClass('md-show');
		});
		$('.cancel').click(function(){
			$('.md-effect-10').removeClass('md-show');
		});
		/* 判断私密还是公开 */
		$("input[type=radio]").click(function(){
			$("input[name='share-method']:checked").each(function() {
				if ($(this).val() == 'public') {
					$('.share-public-panel').css('color','red');
				} else {
					$('.share-public-panel').css('color','rgb(139, 144, 158)');
				}
			});
		});
		/* 创建链接样式 */
		$('.create').click(function() {
			$("input[name='share-method']:checked").each(function() {
				if ($(this).val() == 'private') {
					$('.validity-section').hide();
					$('.create').hide();
					$('.share').show();
					$('.createlink').show();
				} else {
					$('.validity-section').hide();
					$('.create').hide();
					$('.share').show();
					$('.createlink').show();
					$('.create-success .private').hide();
					$('.create-success .public').show();
					$('.password').hide();
					$('.description .private').hide();
					$('.description .public').show();
					$('#copyShare .private').hide();
					$('#copyShare .public').show();
				}
			});
		});
		/* 鼠标滑过选中input-url */
		$('.share-url').mouseover(function(){
			this.select();
		})
		/* 关闭分享 */
		$('.close').click(function() {
			$('.validity-section').show();
			$('.create').show();
			$('.createlink').hide();
		})
		/* 重命名 */
		/* $('table').on('click','.md-ren',function() {
			var zz="<i class='fa fa-check-square sure'></i><i class='fa fa-times-rectangle dele'></i>";
			$(this).parents('tr').find('td').nextAll().hide();
			$(this).parents('tr').find('a').hide();		
			$(this).parents('tr').find('.rename').show();
			$(this).parents('tr').find('.rename').after(zz);
			$(this).parents('.more').remove();
			$(".dele").click(function() {
				$(this).parents('tr').find('.rename').hide();
				$(this).parents('tr').find('i').remove();
				$(this).parents('tr').find('a').show();				
			});
			$('.sure').click(function() {
				var newname=$(this).prev().val();
				alert($(this).parents('tr').children("a:eq(0)").prev().val());
				alert($(this).parents('tr').find('.rename').val());
				$(this).parents('tr').find('.rename').hide();
				$(this).parents('tr').children("a:eq(0)").html(newname).show();
				$('.rename').css('border', 'none');
				$('.rename').attr('readonly','true');
				$(this).parents('tr').find('i').remove();
			});
		}); */

	</script>
	<script type="text/javascript">
	function myCopy(){
		var url = document.getElementById("share-url");
		var password=document.getElementById("share-password");				
		var link="链接："+url.value+" 密码："+password.value;
		document.getElementById('sharelink').value = link;
		var share=document.getElementById('sharelink');
		alert(share.value);
		share.select();
		document.execCommand("Copy");
		document.getElementById("copy-tips").style.display ="block"; 
	}
	</script>
	<!-- 复制model的树形结构 -->
	<script type="text/javascript">
	var json = [
    	{
        "name": "1",
        "userLevel":"全部文件",
        "list": [
            {
            	//显示名称
                "name": "2",
                //跳转名称
                "url" :"url_herf",
                //用户等级
                "userLevel":"二级",
                //下级
                "list": [
                    {
                        "name": "3",
                        "userLevel":"三级",
                        "list": [
                                   {
                                       "name": "4",
                                       "userLevel":"四级"
                                   }
                                 ]
                    }
                ]
            },
            {
            	//显示名称
                "name": "2",
                //跳转名称
                "url" :"url_herf",
                //用户等级
                "userLevel":"二级",
                //下级
                "list": [
                    {
                        "name": "3",
                        "userLevel":"三级",
                        "list": [
                                   {
                                       "name": "4",
                                       "userLevel":"四级"
                                   }
                                 ]
                    }
                ]
            }
        ]
    }
]
/*递归实现获取无级树数据并生成DOM结构*/
	var str = "";
	var forTree = function(o){
	 	for(var i=0;i<o.length;i++){
	   		 var urlstr = "";
			 try{
	 				if(typeof o[i]["url"] == "undefined"){
			   	   		urlstr = "<div><i class='fa fa-plus-square-o'></i><img src='/networkdisk/img/category.png' width='20px' style='margin:0 5px 5px 10px;'><span class='treename'>"+o[i]["userLevel"]+"</span><input value='"+ o[i]["name"] +"' type='text' style='display:none'><ul>";
	 				}else{
	 					urlstr = "<div><i class='fa fa-plus-square-o'></i><img src='/networkdisk/img/category.png' width='20px' style='margin:0 5px 5px 10px;'><span class='treename'>"+o[i]["userLevel"]+"</span><input value='"+ o[i]["name"] +"' type='text' style='display:none'><ul>"; 
	 				}
	 			str += urlstr;
	 			if(o[i]["list"] != null){
	 				forTree(o[i]["list"]);
	 			}
	   		 str += "</ul></div>";
	 		}catch(e){}
	 }
	 return str;
	}
	/*添加无级树*/
	document.getElementById("menuTree").innerHTML = forTree(json);

	$(".treename").click(function(){
		alert($(this).next('input[type=text]').val());
	})
	/*树形菜单*/
	var menuTree = function(){
	 //给有子对象的元素加
		 $("#menuTree ul").each(function(index, element) {
	 		var ulContent = $(element).html();
	 		var spanContent = $(element).siblings("span").html();
	 		if(ulContent){
				 $(element).siblings("span").html(spanContent) 
	 		}
		 });

		 $("#menuTree").find("div span").click(function(){
		 	 var ul = $(this).siblings("ul");
			 var spanStr = $(this).html();
		 	 var spanContent = spanStr.substr(3,spanStr.length);
			 if(ul.find("div").html() != null){
				 if(ul.css("display") == "none"){
					 ul.show(300);
		 		 }else{
		 			 ul.hide(300);
		 		 }
		 	}
		 })
	}()	
</script>
</body>
</html>
