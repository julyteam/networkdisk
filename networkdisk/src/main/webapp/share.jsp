<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>分享界面</title>
		<link href="/networkdisk/user/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="/networkdisk/user/css/bootstrap-theme.min.css" />
		<link href="/networkdisk/css/style.css" rel="stylesheet" />
		<link href="/networkdisk/css/share.css" rel="stylesheet" />
		<script src="/networkdisk/manager/js/jquery-3.2.1.min.js"></script>		
		<script src="/networkdisk/user/js/bootstrap.min.js"></script>
		<script src="/networkdisk/js/index.js"></script>
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
							<li>
								<a href="index.jsp">网盘</a>
							</li>
							<li class="active">
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
							<a href="friend_info.jsp" target="share_iframe"></a>
							<table class="user_table" align="left">
   									<c:forEach items="${map.listfriends }" var="friend">							
									<tr>
										<td><img src="${pageContext.request.contextPath}/showphoto?id=${friend.id}" width="50px" /></td>
										<td>${friend.name}</td>
									</tr>
									
								</c:forEach>
							</table>							
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
									<h5 class="modal-title" id="myModalLabel">
										添加好友
									</h5>
								</div>
								<div class="modal-body">
									<div class="modal-body_item">
										<p><span>根据July账号添加好友</span></p>
										<form>
										<input type="text" placeholder="  用户名/邮箱" 
										onfocus="this.placeholder=''" onblur="this.placeholder='  用户名/邮箱'" name="name" class="b1" style="width:410px;border-radius:0px;height:30px"/>
										<a class="bn">搜索</a>
										</form>
									</div>
									<div class="search_result" style="display: none;">
										<span>搜索结果：</span>
										<div class="result">
											<span>百度账号：</span>
										</div>
									</div>
								</div>
								<div class="friends">
								</div>
								<div class="modal-footer">
									<a class="bn1">加为好友</a>								
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="share_content_right">
					<iframe name="share_iframe" src="share_default.jsp" scrolling="auto" height="590px" width="710" border="0" frameborder="no"></iframe>
				</div>
			</div>
		</div>
	</body>
	<script>
		$(".bn").click(function(){
			var name = $(".b1").val();		
		  	$.ajax({
				type : "POST", //设置请求发送的方式  
				url : "findOne", //提交的地址  		   
				data : {'user.name':name},
				dataType: 'json',
				beforeSend: function(){}, 
				success: function(data) {//提交成功的时候执行的函数  
					$(".friends").show();
					$('.friends').append("<img src='${pageContext.request.contextPath}/showphoto?id="+data.friend[0].id+"'width='90px'>"+"<a>"+"July账号："+data.friend[0].name+"</a>");//jquery解析map数据						        				       					  	
			}  
		});	
		});
	 	$(function(){
			$('#myModal').modal('hide')
		}); 
	 	$('.close').click(function(){
	 		$(".friends").html("");
	 		$(".b1").val("");
	 		$(".friends").hide();
	 	})
		function logout()
		{
			if(confirm("确定退出？"))
				{
				  window.location.href="logout";
				}
		}
	</script>
</body>
</html>