<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="Shortcut Icon" href="/networkdisk/img/julyicon.png">
<link href="/networkdisk/user/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/networkdisk/user/css/bootstrap-theme.min.css" />
<link href="/networkdisk/css/noticeList.css" rel="stylesheet" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="/networkdisk/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="/networkdisk/user/js/jquery-1.11.2.min.js"></script>
<script src="/networkdisk/js/index.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/networkdisk/user/js/jquery.validate.js"></script>
<script src="/networkdisk/user/js/jquery.validate.min.js"></script>
<script src="/networkdisk/user/js/bootstrap.min.js"></script>
<script src="/networkdisk/user/js/messages_zh.js"></script>

	</head>

	<body>
		<div id="in-nav">
			<div class="container">
				<div class="row">
					<div class="logo">
						<a id="logo" href="index.html">
							<img src="img/LOGO.png" />
							<a class="logotitle" href="">July</a>
						</a>
					</div>
					<div class="span1" style="display: inline;">
						<ul class="pull-left">
							<li class="active">
								<a href="goindex">网盘</a>
							</li>
							<li>
								<a href="goshare">分享</a>
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
								<div class="admin" style="width: 220px; height: 30px;">
									<img src="img/pic3.png" width="30px" style="border-radius: 30px;" />
									<a href="#" style="display: inline;">admin12345123124&nbsp;<img src="img/VIP1.png" style="display: inline;margin-bottom:5px ;" /></a>
									<em style="display: inline-block;"><img src="img/downchoose.png" class="c"/></em>
								</div>
								<div class="user">
									<span id="triangle-up">								
									</span>
									<div class="userpan">
										<div class="userpan_2">
											<div class="u1">
												<a href="#">
													<img src="img/pic3.png" class="userpic" />
													<a href="">admin12345123124</a>
													<img src="img/VIP1.png" style="display: inline;margin-bottom:5px ;" />
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
											<p href="per-center">个人资料</p>
											<p href="">帮助中心</p>
											<p href="">设置</p>
											<p href="logout">退出</p>
										</div>
									</div>
								</div>
							</div>
							</li>
							<li style="width: 100px;">
								<a href="#" style="font-size: 13px;">&nbsp;客户端下载</a>
							</li>
							<li>
								<a href="noticeList"><img src="img/notice.png" /></a>
							</li>
							<li>
								<a href="#"><img src="img/serve.png" /></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			
	    	<div class="clean" style="clear: all;height:40px;"></div>
		      <div class="noticePage">
		      	<div class="clean" style="height:15px;"></div>
		       <div class="row">
		       <form action="noticeDel"  method="post">
		       	<a onclick="return(confirm('確定刪除?'))">
		       	<span class="rowDelete">
		       		<i class="fa fa-trash"></i>删除
		       	</span>
		       	</a>
		       	<input type="submit" style="opacity:0;position: relative;font-size: 20px;left: -60px;top: 0px;">
		       	<a href="noticePage?currentPage=${currentPage+1}" class="nextPage">下一页</a>
		        <a href="noticePage?currentPage=${currentPage-1}" class="proPage">上一页</a>
		        <a href="#" class="page">${notice2.nowPage }/${notice2.sumPage}页</a>
		       </div>		      	
		      <table>		          
		      		<tr>
		      			<th style="width:20%">主题</td>
		      			<th style="width:70%">内容</td>
		      			<th style="width:10%">时间  <i class="fa fa-arrow-down" aria-hidden="true"></i></td>
		      		</tr>
		      		<c:forEach items="${notice}" var="notice">
		      		<tr>
		      			<td style="width:20%"><input type="checkbox" class="checkbox" name="checkbox" value="${notice.id}"> <a href="notice.jsp?title=${notice.title}&text=${notice.text}" class="noticeTitle">${notice.title}</a></td>
		      			<td style="width:50%"><div class="tdcontent"><a href="notice.jsp?text=${notice.text}&title=${notice.title}">${notice.text}</a></div></td>
		      			<td style="width:30%"><fmt:formatDate value="${notice.time}"
									pattern="yyyy-MM-dd " /></td>
		      		</tr>
		      		</c:forEach> 
		      	</table>
		      </div>
		    	  
		</div>
	<script>
	    
		$(document).ready(function() { 		
			/* 弹框*/
			$(function() {
   				 $('#myModal').modal('hide')
			});
			      
			//子导航展开收缩
			$(".admin").mouseenter(function() {
				$(this).find(".c").removeClass("lbaxztop2").addClass("lbaxztop");
				$(this).next(".user").toggle().parents(".sev").siblings().find(".user").hide();
			});

			/*鼠标离开下拉框关闭*/
			$(".sev").mouseleave(function() {
				$(".user").hide();
				$(this).children(".admin").find(".c").addClass("lbaxztop2");
			});
			/* 当没有头像时，为默认头像*/
			
});	

</script>
		
</body>
