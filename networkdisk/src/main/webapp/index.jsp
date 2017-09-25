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
<link rel="stylesheet" type="text/css"
	href="/networkdisk/user/css/bootstrap-theme.min.css" />
<link href="/networkdisk/css/style.css" rel="stylesheet" />
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
										<img src="${pageContext.request.contextPath}/showphoto" width="30px" style="border-radius: 30px;position: absolute;top:10px;" />
										<a href="#" style="display: inline-block;height:50px;">
											<div class="username">${user.name }</div>
											<img src="/networkdisk/img/VIP1.png" style="display: inline-block;margin-bottom:45px;" />
										</a>
										<em style="display: inline-block;"><img src="/networkdisk/img/downchoose.png" class="c" style="margin-bottom: 40px;"/></em>
									</div>
									<div class="user">
									<span id="triangle-up"> </span>
									<div class="userpan">
										<div class="userpan_2">
											<div class="u1">
												<a href="#"> 
												<img src="${pageContext.request.contextPath}/showphoto" width="30px" class="userpic" />
												</a> 
												<a href="">${user.name }</a> 
												<img src="/networkdisk/img/VIP1.png" style="display: inline; margin-bottom: 5px;" />
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
							<div class="user">
								<span id="triangle-up"> </span>
								<div class="userpan">
									<div class="userpan_2">
										<div class="u1">
											<img src="/networkdisk/img/pic3.png" class="userpic" /> <a
												href="">admin</a> <img src="/networkdisk/img/VIP1.png"
												style="display: inline; margin-bottom: 5px;" />
										</div>
									</div>
									<div class="userpan_3">
										<a href="" style="color: #000; font-size: 12px;">超级会员专享特权：</a>
										<div class="svip">开通超级会员</div>
									</div>
									<div class="userpan_4">
										<p>
											<a href=""><span>个人资料</span></a>
										</p>
										<p>
											<a href=""><span>帮助中心</span></a>
										</p>
										<p>
											<a href=""><span>设置</span></a>
										</p>
										<p>
											<a href=""><span>退出</span></a>
										</p>
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
						<li><a href="/networkdisk/myshare.jsp"><i
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
								<img src="/networkdisk/img/download.png" style="margin-bottom: 3px;" />&nbsp;我的下载</a>
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
										<li id="f1"><img src="/networkdisk/img/share.png" style="margin-bottom:3px"/>分享</li>
										<li><img src="/networkdisk/img/delete.png" style="margin-bottom:3px"/>删除</li>
										<li>复制到</li>
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
		<div id="msg">
			<span style="float: left; font-size: 16px; padding-left: 10px;">上传完成</span>
			<span class="fa fa-times"></span> <span class="fa fa-window-maximize"></span>
			<div class="warn">
				有一个文件上传成功 <span class="fa fa-remove"
					style="float: right; font-size: 16px; color: #F5F5F5; line-height: 40px; cursor: pointer;"></span>
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
	<script src="/networkdisk/js/contextMenu.js"></script>
	<script type="text/javascript">
	$(".table").contextMenu({
		menu: [{
				text: "打开",
				callback: function() {
					alert("打开");
				}
			},
			{
				text: "下载",
				callback: function() {
					alert("下载");
				}
			},
			{
				text: "分享",
				callback: function() {
					alert("分享");
				}
			},
			{
				text: "复制到",
				callback: function() {
					alert("复制到");
				}
			},
			{
				text: "移动到",
				callback: function() {
					alert("移动到");
				}
			},
			{
				text: "删除",
				callback: function() {
					alert("删除");
				}
			}
		]
	});
	</script>
	<script type="text/javascript">
		var categorie;
		var recycle;
		function show(categorie_id, recycleflag) {
			categorie = categorie_id;
			recycle = recycleflag;
			$(".showTr").remove();
			$.ajax({
						type : "post",
						dataType : "json",
						url : "showFileAndCate",
						data : {
							categorie_id : categorie_id,
							recycleflag : recycleflag
						},
						success : function(map) {
							var listFile = map.listFiles;
							var listCate = map.listCategories;
							if(listCate==""||listFile==""){
								$('.nullfile').show();
							}
							var sum=parseInt(listCate.length+listFile.length);
							var $head=$("<span class='j1'>全部文件>"+listCate[1].name+"</span><span class='j2'>已加载全部,共"+sum+"条</span>");
							$('.Jdh').html($head);
							for (var i = 0; i < listCate.length; i++) {
								var $str = $("<tr class='showTr'>"
										+ "<td>"
										+ "<input type='checkbox' class='chk_2'/>"
										+ "<img src='/networkdisk/img/category.png' width='28px' style='margin:0 5px 5px 10px;'>"
										+ "<input id='listCateID' class='reid' type='text' style='display:none' value="
										+ listCate[i].id
										+ ">"
										+ "<input id='listCateName' class='rename' type='text' style='display:none' value="
										+ listCate[i].name
										+ ">"
										+ "<a id='showFile' class='july_fileName' onclick='show("
										+ listCate[i].id
										+ ","
										+ listCate[i].state
										+ ")'>"
										+ listCate[i].name
										+ "</a>"
										+ "<span class='more'>"
										+ "<span class='fa fa-share-alt' title='分享'>"
										+ "</span><span class='fa fa-download' title='下载'>"
										+ "</span>"
										+ "<span class='fa fa-ellipsis-h' title='更多'></span>"
										+ "</span></td>" 
										+ "<td>--</td>"
										+ "<td>" 
										+ listCate[i].addtime
										+ "</td>" 
										+ "</tr>");
								$("#mytbody").append($str);
							}
							for (var i = 0; i < listFile.length; i++) {
								var type;
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
										+ "<input type='checkbox' class='chk_2' />"
										+ "<img src='"
										+ type
										+ "'width='28px' style='margin:0 5px 5px 10px;'>"
										+ "<input id='listCateID' class='reid' type='text' style='display:none' value="
										+ listFile[i].id
										+ ">"
										+ "<a class='july_fileName'>"
										+ listFile[i].name
										+ "</a>"
										+ "<span class='more'>"
										+ "<span class='fa fa-share-alt' title='分享'>"
										+ "</span><span class='fa fa-download' title='下载'>"
										+ "</span>"
										+ "<span class='fa fa-ellipsis-h' title='更多'></span>"
										+ "</span>"
										+ "<span class='menu' style='width: 96px;'>"
										+ "<a style='display: block;' data-menu-id='b-menu9' class='g-button-menu' href='javascript:void(0);'>重命名</a>"
										+ "<a style='display: block;' data-menu-id='b-menu10' class='g-button-menu' href='javascript:void(0);'>复制到</a>"
										+ "<a style='display: block;' data-menu-id='b-menu11' class='g-button-menu' href='javascript:void(0);'>移动到</a>"
										+ "<a style='display: block;' data-menu-id='b-menu4' class='g-button-menu' href='javascript:void(0);'>删除</a>"
										+ "</span></td>" 
										+ "<td>"
										+ Math.round(listFile[i].size/(1024*1024)) 
										+ "M</td>" 
										+ "<td>"
										+ listFile[i].addtime 
										+ "</td>"
										+ "</tr>")
								$("#mytbody").append($str);
							}
							$('table').on('click','.fa-download',function(){
								alert($(this).parent().parent('td').find('.reid').val());
							});
						},
						error : function() {
							alert("查询失败")
						}						
					});

		}
		$(function() {
			var categorie_id = "";
			var recycleflag = 0;
			show(categorie_id, recycleflag);
		});
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
			time = window.setInterval(progress, 100);
			$
					.ajaxFileUpload({
						url : '${pageContext.request.contextPath}/fileupload?categorie_id='
								+ categorie,
						secureuri : false,
						fileElementId : 'upfile',//fileToUpload是input file 标签的id值  
						dataType : 'multipart/form-data',
						success : function(data) {
							alert(data);
							//刷新页面
							show(categorie, recycle);
							//需要重新绑定事件
							$("#upfile").change(function() {
								var file = this.files[0];
								july_fileReader(file);
							});
						}

					})
			return false;
		}

		function progress() {
			$.ajax({
				url : "${pageContext.request.contextPath}/progress",
				dataType : 'json',
				success : function(data) {
					$("#myprogress").width(data.rate + "%");
					if(data.rate>0){
						$('.probox').show();
						$('.up_status').html("上传中···");
					}
					if (data.rate == 100) {
						clearInterval(time);
						$('.probox').hide();
						$('.up_status').html("上传成功");
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
			$(this).parent().parent('td').find('.menu').css('visibility','visible');
		});
		$('table').on('mouseleave','.menu',function(){
			$('.menu').css('visibility','hidden');
		});
	</script>
</body>
</html>
