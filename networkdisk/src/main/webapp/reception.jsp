<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
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
<link href="/networkdisk/css/share.css" rel="stylesheet" />
<link href="/networkdisk/css/component.css" rel="stylesheet" />
<link rel="stylesheet"
	href="/networkdisk/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/networkdisk/js/jquery-1.11.2.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/networkdisk/user/js/bootstrap.min.js"></script>
<script src="/networkdisk/js/index.js"></script>
<script src="/networkdisk/js/jquery.rotate.min.js"></script>
</head>
<script type="text/javascript">
	 $(document).ready(function(){
		var name = $(".username").text();
		
		if(name.length > 0){
			$(".login").hide();
		}else{
			$(".sev").hide();
		}
		
		
	});
</script>
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
				<div class="span1" style="display: inline;float:left;">
					<ul class="pull-left">
						<li class="active"><a href="index.jsp">网盘</a></li>
						<li><a href="share.jsp">分享</a></li>
						<li><a href="#">更多</a></li>
					</ul>
				</div>
				<div class="span2">
					<ul class="right">
						<li class="chos" style="width: 220px;" id="admin">
							<div class="sev" style='display:none'>
								<div class="admin">
									
									<img src="sharephoto?uid=${u.id }" width="30px"
										style="border-radius: 30px; position: absolute; top: 10px;" />
									<a href="#" style="display: inline-block; height: 50px;">
										<div class="username">${u.name }</div><input type="hidden" id="uid" value="${u.id }" >  <img
										src="/networkdisk/img/VIP1.png"
										style="display: inline-block; margin-bottom: 45px;" />
									</a>
									
									 <em style="display: inline-block;"><img
												src="/networkdisk/img/downchoose.png" class="c"
												style="margin-bottom: 40px;" /></em>
								</div>

								<div class="user">
									<span id="triangle-up"> </span>
									<div class="userpan">
										<div class="userpan_2">
											<div class="u1">
												<a href="#"><img src="sharephoto?uid=${u.id }"
													width="30px" class="userpic" /> </a> <a href="">${u.name }</a>
												<img src="/networkdisk/img/VIP1.png"
													style="display: inline; margin-bottom: 5px;" />
											</div>
										</div>
										<div class="userpan_3">
												<span>
												<a href="" style="color:#000;font-size: 12px;">超级会员专享特权：</a>
												<div class="svip">开通超级会员</div>
											</span>
											</div>
											<div class="userpan_4">
												<!-- <p><a href=""><span >切换账户</span></a></p> -->
												<p><a href=""><span>帮助中心</span></a></p>
												<p><a href=""><span>设置</span></a></p>
												<p><a href="sharelogout"><span>退出</span></a></p>
											</div>
									</div>
								</div>
							</div>
							<div class="login" style="text-align: right;font-size: 14px;">
								<a href="#" class="load">登录</a> <a href="#">注册</a>
							</div>
						</li>
						<li style="width: 100px;"><a href="#"
							style="font-size: 13px;">&nbsp;客户端下载</a></li>
						<li><a href="#"><img src="/networkdisk/img/notice.png"
								style="margin-top: 10px;" /></a></li>
						<li><a href="#"><img src="/networkdisk/img/serve.png"
								style="margin-top: 10px;" /></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="clean" style="clear: all; height: 50px;"></div>
	<div class="receivepage">
		<div class="col-lg-9 col-md-9 page2">
			<div class="page2_1">
				<div class="slide-show-left">
					<h2 class="file-name" title="jdk-8u73-windows-x64.exe">
						<em class="fa fa-file-zip-o"></em> 
						<c:forEach items="${catelist }" var="c">${c.name }</c:forEach> 
						<c:forEach items="${filelist }" var="f">${f.name }</c:forEach>
					</h2>
				</div>
				<div class="slide-show-right">
					<div class="module-share-top-bar g-clearfix">
						<div class="bar" style="white-space: nowrap; position: relative;">
							<div class="button-box"
								style="position: absolute; top: 0px; padding-top: 0px; line-height: normal;">
								<a class="g-button g-button-blue" href="javascript:void(0);"><span
									class="g-button-right"><em class="fa fa-save"
										title="保存到网盘"></em><span class="text"
										style="width: auto; margin-left: 5px;" id="pres">保存到网盘</span></span> </a> <a
									class="g-button" href="javascript:void(0);"><span
									class="g-button-right"><em class="fa fa-download"
										title="下载(186.8M)"></em><span class="text"
										style="width: auto;">下载</span></span> </a> <a class="g-button"
									href="javascript:void(0);"><span class="g-button-right"><span
										class="text" style="width: auto;">举报</span></span> </a>
							</div>
						</div>
					</div>
				</div>
				
				<script type="text/javascript">
					$("#pres").click(function(){
						var name = $(".username").text();
						if(name.length < 1){
							alert("请先登陆！");
							return ;
						}
						var fid = new Array();
						var fname = new Array();
						var cateid = new Array();
						var catename = new Array();
						var uid = $("#uid").val();
						$("input[name='filebox']:checked").each(
								function(key, value) {
									fid[key] = $(this).val();
									fname[key] = $(this).parent().find("span")
											.text();
								});
						$("input[name='catebox']:checked").each(
								function(key, value) {
									cateid[key] = $(this).val();
									catename[key] = $(this).parent().find("span")
											.text();
								});
						/* alert(fid);
						alert(fname);
						alert(cateid);
						alert(catename);  */
						
						if (fid == "" && cateid == "") {
							alert("请选择文件进行保存！");
						} else {
							$.ajax({
								url : "preservation?fidlist=" + fid
										+ "&fnamelist=" + fname+"&cateid="+cateid+"&catename="+catename+"&uid="+uid,
								dataType : 'json',	
								async : false,
								success : function(data) {
									if (data == 1) {
										alert("保存成功！");
										location.href="reception.jsp";
									} else if (data == 0) {
										alert("文件或文件夹已存在！");
									}
								},
								error : function() {
									alert("保存失败！");
								}
							});
						} 
					});
				</script>
				
				
				<div class="cb"></div>
				<div class="slide-show-other-infos">
					<div class="share-file-info" style="font-size: 14px;">
						<span class="fa fa-clock-o" style="font-size: 18px;"></span>&nbsp;2017-09-20
						15:09
					</div>
					<div class="share-valid-check">失效时间：永久有效</div>
					<div class="slide-show-other-cns clearfix">
						<span class="title-funcs"> <span class="funcs-share-area">
						</span>
						</span>
					</div>
					<div class="cb"></div>
				</div>
			</div>

			<div class="tw1_body"
				style="width: 100%; margin: 0px auto; height: 450px; overflow-y: auto; border: none;">
				<div class="Jdh">
					<table id="july_allFile" style="display: inline">
						<tr>
							<td><a id='null' class='aa'
								style='cursor: pointer; color: #333; text-decoration: none'>全部文件</a></td>
						</tr>
					</table>
					<span class="Sdh" style="float: right; display: inline-block;"></span>
				</div>
				<div class="Qdh">
					<ul>
						<li style="width: 50%; margin-left: -40px;"><input
							type="checkbox" class="" /><span id="n1">文件名</span></li>
						<li style="width: 25%;">大小</li>
						<li style="width: 30%;">修改日期</li>
					</ul>
					<div  id="qdh">
					<c:forEach items="${catelist }" var="c">
						<ul>
							<li style="width: 50%; margin-left: -40px;"><input
								type="checkbox" class="cateid" name="catebox" value="${c.id }" />
								<img src='/networkdisk/img/category.png' width='28px' style='margin:0 5px 5px 10px;'>
								<span id="n1" class="cate">${c.name }</span>
								<input type="hidden" value="${c.id }" />
								</li>
							<li style="width: 25%;">---</li>
							<li style="width: 30%;"><fmt:formatDate value="${c.addtime}"
									pattern="yyyy-MM-dd  HH:mm:ss" /></li>
						</ul>
					</c:forEach>
					<c:forEach items="${filelist }" var="f">
						<ul>
							<li style="width: 50%; margin-left: -40px;"><input
								type="checkbox" class="filebox" name="filebox" value="${f.id }" />
								
								<c:choose>
								    <c:when test="${f.type == 'zip' }">
								       <img src='/networkdisk/img/ZIP_2.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								    <c:when test="${f.type == 'mp4' || f.type == 'rmvb' || f.type=='avi' || f.type == 'mkv' || f.type=='wmv' || f.type=='wmv' ||  f.type=='mov'}">
								       <img src='/networkdisk/img/video.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								     <c:when test="${f.type == 'png'}">
								      <img src='/networkdisk/img/png.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								     <c:when test="${f.type == 'jpg'}">
								       <img src='/networkdisk/img/jpg.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								     <c:when test="${f.type == 'gif' || f.type == 'bmp' || f.type == 'psd'  || f.type == 'ai' || f.type == 'svg' }">
								       <img src='/networkdisk/img/picture1.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								     <c:when test="${f.type == 'docx' || f.type == 'doc' }">
								       <img src='/networkdisk/img/word.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								    <c:when test="${f.type == 'txt' }">
								       <img src='/networkdisk/img/text.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								    
								     <c:when test="${f.type == 'xls' }">
								       <img src='/networkdisk/img/xls.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								     <c:when test="${f.type == 'pdf' }">
								       <img src='/networkdisk/img/pdf.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								     <c:when test="${f.type == 'html' }">
										<img src='/networkdisk/img/html.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								    <c:when test="${f.type == 'mp3' || f.type == 'wav' || f.type == 'mod' }">
										<img src='/networkdisk/img/music.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:when>
								    <c:otherwise>
								       <img src='/networkdisk/img/others.png' width='28px' style='margin:0 5px 5px 0px;'>
								    </c:otherwise>
								</c:choose>
								
								<span id="n1">${f.name }</span></li>
							<li style="width: 25%;"><span><c:if test="${f.size/1024 < 1}">${f.size }B</c:if>
								<c:if test="${f.size/1024 >=1 && (f.size/1024)/1024 < 1}">
									<f:formatNumber type="number" value="${f.size/1024 }"
										pattern="0.00" maxFractionDigits="2" />K</c:if> <c:if
									test="${(f.size/1024)/1024 >= 1}">
									<f:formatNumber type="number" value="${f.size/1024/1024 }"
										pattern="0.00" maxFractionDigits="2" />M</c:if></span></li>
							<li style="width: 30%;"><fmt:formatDate value="${f.addtime}"
									pattern="yyyy-MM-dd  HH:mm:ss" /></li>
						</ul>
					</c:forEach>
					</div>
					<div id="str"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(".cate").click(function(){
				var cateid = $(this).next().attr("value");
				$("input[name='catebox']").removeAttr("checked");
				$("input[name='filebox']").removeAttr("checked");
				shownext(cateid); 
				$("#qdh").hide();
			});
			function shownext(cateid){
				$(".showcate").remove();
				$.ajax({
					url : "shownext?cateid=" + cateid,
					dataType : 'json',
					async : false,
					success : function(map) {
						$("#frist").remove();
						$(".showTr").remove();
						var listFile = map.filelist;
						var listCate = map.catelist;
						
						for(var i=0;i<listCate.length;i++){
							
							var time = listCate[i].addtime;
							var newTime = time.split("T");
							var $str = ("<ul class='showcate'>"
									+ "<li style='width: 50%; margin-left: -40px;'>"
									+ "<input type='checkbox' name='catebox' class='' value='"
									+ listCate[i].id
									+ "' />"
									+ "<img src='/networkdisk/img/category.png' width='28px' style='margin:0 5px 5px 10px;'>"
									+ "<span id='n1' class='cate' onclick='shownext("
									+ listCate[i].id
									+ ")'>"
									+ listCate[i].name
									+ "</span></li>"
									+ "<li style='width: 25%;'>---</li>"
									+ "<li  style='width: 30%;'>"
									+ newTime[0]+" "+newTime[1]
									+ "</li></ul>"
							)
							$("#str").append($str);
						}
						for(var i=0;i<listFile.length;i++){
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
							/* 文件图标 */
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
							
							var $str = ("<ul class='showcate'>"
									+ "<li style='width: 50%; margin-left: -40px;'>"
									+ "<input type='checkbox' name='filebox' class='filebox' value='"
									+ listFile[i].id
									+ "' />"
									+ "<img src='"
									+ type
									+ "'width='28px' style='margin:0 5px 5px 10px;'>"
									+ "<span id='n1' onclick='shownext("
									+ listFile[i].id
									+ ")'>"
									+ listFile[i].name
									+ "</span></li>"
									+ "<li style='width: 25%;'><span>"
									+ filesize + sizeflag
									+ "</span></li>"
									+ "<li  style='width: 30%;'>"
									+ newTime[0]+" "+newTime[1]
									+ "</li></ul>"
							)
							$("#str").append($str);
						}
					},
					error : function(){
						alert("false");
					}
				});
			}
		</script>
		<script type="text/javascript">
			$(document).ready(function(){
				var size = new Array();
				$("input[name='filebox']").each(
						function(key, value) {
							size[key] = $("input[name='filebox']").parent().next().find("span").text();
						});
						/* alert(size); */
			});
		</script>
		<div class="col-lg-3 col-md-3 page3">
			<div class="module-aside aside" id="layoutAside">
				<div node-type="module" class="module-share-person-info">
					<div class="share-person-inner global-clearfix haha">
						<div class="share-person-avatar">
							<a href="#" target="_blank" title="去Ta的分享主页" class="person-icon">
								<img alt="" src="${pageContext.request.contextPath}/showphoto?uid=${user.id}"
								width="60px">
							</a>
						</div>
						<div class="share-person-data">
							<div class="share-person-data-top">
								<a href="#" target="_blank" title="去Ta的分享主页"
									class="share-person-username">${user.name }</a> <em
									class="fa fa-vimeo"></em>
							</div>
							<a href="javascript: void(0)" class="share-follow-btn follow">
								<span class="fa fa-plus">立即订阅</span> <span class="fa fa-minus"
								style="display: none;">取消订阅</span>
							</a>
						</div>
					</div>
					<div class="share-person-intro" title="">${user.about }</div>
				</div>
			</div>
		</div>
		
	</div>
	<div class="md-modal md-effect-10" id="modal-10" style="width: 500px;">
		<form action="sharelogin" method="post">
			<div class="md-content" style="height: 310px;">
				<div class="dialog-header dialog-drag">
					<span class="dialog-header-title">登陆 </span>
				</div>
				<div class="dialog-tree" style="border: none;">
					<div style="width: 400px; margin-top: 30px;">
						<span style="color: black; font-size: 15px;">username：</span><input
							type="text" name="name"
							style="width: 200px; margin-left: 30px; border-radius: 3px;" />
					</div>
					<div style="width: 400px; margin-top: 30px;">
						<span style="color: black; font-size: 15px;">password：</span><input
							type="password" name="passWord"
							style="width: 200px; margin-left: 32px; border-radius: 3px;" />
					</div>
				</div>
				<div class="dialog-footer g-clearfix">
					<a class="g-button g-button-large cancel"
						href="javascript:void(0);" style="float: right;"> <span
						class="g-button-right" style="padding-right: 50px;"> <span
							class="text" style="width: auto;">取消</span>
					</span>
					</a>
					
					<a class="g-button g-button-blue-large" href="javascript:void(0);"
						style="float: right; background:none;border:none;"> 
						
						<span class="g-button-right"
						style="padding-right: 5px;"><input type="image" src="/networkdisk/img/sharelogin.png" />
						<!-- <span class="text" id="sharelogin" style="width: auto;">登陆</span> -->
						</span>
					</a>
				</div>
			</div>
		</form>
	</div>
</body>
<script src="js/classie.js"></script>
<script src="js/modalEffects.js"></script>
<script>
	$('.fa-plus').click(function() {
		$(this).hide();
		$('.fa-minus').show();
	});
	$('.fa-minus').click(function() {
		$(this).hide();
		$('.fa-plus').show();
	});
	$('body').on('click', '.load', function() {
		$('.md-effect-10').addClass('md-show');
	});
	$('.cancel').click(function() {
		$('.md-effect-10').removeClass('md-show');
	});
</script>
</html>