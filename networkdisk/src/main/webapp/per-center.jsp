<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心界面</title>
<link href="/networkdisk/user/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/networkdisk/user/css/bootstrap-theme.min.css" />
<link href="/networkdisk/user/css/per-center.css" rel="stylesheet" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/networkdisk/user/js/jquery-1.11.2.min.js"></script>
<script src="/networkdisk/js/index.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/networkdisk/user/js/jquery.validate.js"></script>
<script src="/networkdisk/user/js/jquery.validate.min.js"></script>
<script src="/networkdisk/js/index.js"></script>

<script src="/networkdisk/user/js/bootstrap.min.js"></script>
<script src="/networkdisk/user/js/messages_zh.js"></script>
<link href="/networkdisk/css/style.css" rel="stylesheet" />
<style>
.error {
	padding-left: 15px;
	padding-left: 15px;
	color: red;
}
</style>



</head>
<body>
	<div id="in-nav">
		<div class="container">
			<div class="row">
				<div class="logo">
					<a id="logo" href="/networkdisk/index.jsp"> <img
						src="/networkdisk/img/LOGO.png" /> <a class="logotitle" href="">July</a>
					</a>
				</div>
				<div class="span1" style="display: inline;">
					<ul class="pull-left">
						<li class="active"><a href="index.jsp">网盘</a></li>
						<li><a href="share.jsp">分享</a></li>
						<li><a href="#">更多</a></li>
					</ul>
				</div>
				<div class="span2">
					<ul class="right">
						<li class="chos" style="width: 220px;">
							<div class="sev">
								<div class="admin">
									<img src="${pageContext.request.contextPath}/showphoto"
										width="30px" style="border-radius: 30px; margin-bottom: 22px;" />
									<a href="#" style="display: inline-block;">
										<div class="username">${user.name }</div> <img
										src="/networkdisk/img/VIP1.png"
										style="display: inline; margin-bottom: 22px;" />
									</a> <em style="display: inline-block;"><img
										src="/networkdisk/img/downchoose.png" class="c"
										style="margin-bottom: 22px;" /></em>
								</div>
								<div class="user">
									<span id="triangle-up"> </span>
									<div class="userpan">
										<div class="userpan_2">
											<div class="u1">
												<a href="#"> <img
													src="${pageContext.request.contextPath}/showphoto"
													width="30px" class="userpic" /> <a href="">${user.name }</a>
													<img src="/networkdisk/img/VIP1.png"
													style="display: inline; margin-bottom: 5px;" />
												</a>
											</div>
										</div>
										<div class="userpan_3">
											<span> <a href=""
												style="color: #000; font-size: 12px;">超级会员专享特权：</a>
												<div class="svip">开通超级会员</div>
											</span>
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
												<a onclick="logout()"><span>退出</span></a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li style="width: 100px; margin-top: 5px;"><a href="#"
							style="font-size: 13px;">&nbsp;客户端下载</a></li>
						<li style="margin-top: 5px;"><a href="#"><img
								src="/networkdisk/img/notice.png" /></a></li>
						<li style="margin-top: 5px;"><a href="#"><img
								src="/networkdisk/img/serve.png" /></a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="person">
			<div class="person-content">
				<div class="person-left">
					<ol>
						<li><a class="change-head" data-toggle="modal"
							data-target="#edittouxiang"><div class="change-h">
									<img src="${pageContext.request.contextPath}/showphoto"
										class="img-head" />
									<div class="head-shade">
										<span class="head-content"><p>更改头像</p></span>
									</div>
								</div></a></li>
						<li class="time"><img
							src="/networkdisk/user/img/person-time.png"> <span
							class="time">注册时间: <font size="4" style="font-weight: bold;"><fmt:formatDate value="${user.addtime}"
									pattern="yyyy-MM-dd " /></font></span></li>
						<li class="real-name"><img
							src="/networkdisk/user/img/person-relName.png"> <span
							class="real-name">真实姓名: <font size="4" style="font-weight: bold;"> ${user.trueName }</font></span></li>
						<li class="re-pwd"><a data-toggle="modal"
							data-target="#editPwd"><img
								src="/networkdisk/user/img/person-pwd.png"><span
								class="re-pwd"> 修改密码</span></a></li>
					</ol>
				</div>
				<div class="person-right">
					<div class="right-info">
					
							<ol class="right-0l">

								<li><span class="glyphicon glyphicon-user">&nbsp;用户名:<font size="4" style="font-weight: bold;"> ${user.name }</font> </span></li>
								<li><span class="glyphicon glyphicon-envelope">&nbsp;邮&nbsp;箱:<font size="4" style="font-weight: bold;"> ${user.email}</font></span></li>
								<li><span class="glyphicon glyphicon-earphone">&nbsp;电&nbsp;话:<font size="4" style="font-weight: bold;"> ${user.phone}</font></span></li>
								<li><span class="glyphicon glyphicon-sunglasses">&nbsp;性&nbsp;别:<font size="4" style="font-weight: bold;"> ${user.sex==1?"男":"女" }</font></span></li>
								<li><span class="glyphicon glyphicon-pencil">&nbsp;描&nbsp;述:<font size="4" style="font-weight: bold;">  ${user.about }</font></span></li>
								<li><input class="btn btn-default" type="button"
									value="修 改" data-toggle="modal" data-target="#editInfo"
									style="font-size: 16px;"></li>
							</ol>
						
					</div>

				</div>
			</div>
		</div>



		<!--修改基本信息弹框-->
		<div class="modal fade" id="editInfo" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">
							<span class="glyphicon glyphicon-edit"></span> 修改信息
						</h4>
					</div>
					<form id="updateForm" action="userUpdate" method="post">
						<fieldset>
							<ol class="right-02">
								<li><span class="glyphicon glyphicon-user">&nbsp;用户名:</span><input
									type="text" id="u_name" value="${user.name }"
									readonly="readonly"></li>
								<li><span class="glyphicon glyphicon-envelope">&nbsp;邮&nbsp;箱:</span><input
									type="text" id="u_email" value="${user.email}" name="email"></li>
								<li><span class="glyphicon glyphicon-earphone">&nbsp;电&nbsp;话:</span><input
									type="text" id="u_phone" value="${user.phone }" name="phone"></li>
								<li><span class="glyphicon glyphicon-sunglasses">&nbsp;性&nbsp;别:</span><input
									type="radio" name="sex" value="1"
									style="width: 14px; height: 14px;"
									<c:if test="${user.sex==1}">checked="checked"</c:if>>男<input
									type="radio" name="sex" value="0"
									style="width: 14px; height: 14px;"
									<c:if test="${user.sex==0}">checked="checked"</c:if>>女</li>
								<li><span class="glyphicon glyphicon-pencil">&nbsp;描&nbsp;述:</span><input
									type="text" id="u_about" value="${user.about }" name="about" />
								<li>
							</ol>
						</fieldset>
						<br />
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<input type="submit" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
		</div>






		<!--修改密码弹框-->
		<div class="modal fade" id="editPwd" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">
							<span class="glyphicon glyphicon-lock"></span> 修改密码
						</h4>
					</div>
					<form action="updatePassAction" id="updatePassForm" method="post" >
						<ol class="right-03">
							<li class="pwd-li1">密码:</span><input type="password" id="u_pwd1"
								value="" name="passWord"><span class="msg1"></span></li>
							<li>确认密码:</span><input type="password" id="u_pwd2" value=""
								name="repassword"><span class="msg2"></span></li>
					</form>
					<br />
					<div class="modal-footer"  id="pass_btn">
						<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
						<input type="submit" class="btn btn-primary"  value="修改" onclick="ok()">
					</div>
				</div>
			</div>
		</div>


		<!-- 修改头像弹框 -->
		<div class="modal fade" id="edittouxiang" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">
							<span class="glyphicon glyphicon-user"></span> 修改头像
						</h4>
					</div>
					<form action="photoup" method="post" enctype="multipart/form-data">
						<div class="modal-body">
							<div class="modal_body_left">
								<img alt="" src="${pageContext.request.contextPath}/showphoto"
									class="img-head" id="img" />

							</div>
							<div class="modal_body_right">
								<a href="javascript:" class="update_btn"><input type="file"
									id="change" name="file"
									style="margin-top: 27px; margin-left: 10px;" /></a>

							</div>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<input type="submit" class="btn btn-primary" value="修改">
						</div>
					</form>

				</div>
			</div>
		</div>

	</div>


	<script type="text/javascript">
			function ok() {
				var pass=$("#u_pwd1").val();
				var repass=$("#u_pwd2").val();
				if(pass!="")
					{
					alert("修改成功,请重新登录！");
					
					}		
}
				

	</script>
	<script>	
        /*修改头像*/
		$('.change-head').hover(function(e){
			$('.head-content').animate({ "height":"75px"});
		},function(){
			$('.head-content').css("display","none");
		}); 
				
		/* 弹框*/
		$(function() {
				 $('#myModal').modal('hide')
		});	
			
</script>

	<script>
		/*退出确认*/
		function logout()
		{
			if(confirm("确认退出？"))
				{
				window.location.href="logout";
				}
		}
	
		/*修改头像*/
		$('.change-head').hover(function(e) {
			$('.head-content').animate({
				"height" : "75px"
			});
		}, function() {
			$('.head-content').css("display", "none");
		});

		$(document).ready(
				function() {

					/* 弹框*/
					$(function() {
						$('#myModal').modal('hide')
					});
					/* 当没有头像时，为默认头像*/
					if ($('.img-head').attr("src") == "") {
						$('.img-head').attr("src",
								"/networkdisk/user/img/person-bhead.png");
					}
					
					var str = document.getElementsByName("radiobutton");
					for (var i = 0; i < str.length; i++) {
						str[i].style.margin = '10px';
					}

				});
		$("#change").change(function(){   
			 var file = this.files[0];
			   if (window.FileReader) {    
			            var reader = new FileReader();    
			            reader.readAsDataURL(file);    
			            //监听文件读取结束后事件    
			          reader.onloadend = function (e) {
			            $("#img").attr("src",e.target.result);    //e.target.result就是最后的路径地址
			            };    
			       }
			});
		
		

		//密码修改验证	
		$("#updatePassForm").validate({
			rules:{
				 passWord: {
				        required: true,
				        rangelength:[6,14]
				      },
				      repassword: {
					        required: true,
					        rangelength:[6,14],
					        equalTo:"#u_pwd1"
					      }
			 },
			 messages: {
				  passWord: {
				        required: "请输入密码",
				        rangelength: "密码长度为6-14个字符"
				      },
				      repassword: {
					        required: "请输入密码",
					        rangelength:"密码长度为6-14个字符",
					        equalTo:"两次密码不一致"
					      }
			 }
			 
		 });
		//邮箱验证
		$("#updateForm").validate({
			rules : {
				phone : {
					required : true,
					rangelength : [ 11, 11 ],
					remote : {
						url : "checkPhone",
						type : "post",
						dataType : "json",
						data : {
							phone : function() {
								return $("#u_phone").val();
							}
						}
					}
				},
				email : {
					required : true,
					email : true,
					remote : {
						url : "checkEmail",
						type : "post",
						dataType : "json",
						data : {
							email : function() {
								return $("#u_email").val();
							}
						}
					}
				}
			      },
			      messages : {
						phone : {
							remote : "手机号已注册",
							required : "请输入手机号",
							rangelength : "电话号码为11位数"
						},
			     
			      email:{
			    	    remote: "邮箱已注册",
				        required: "请输入邮箱",
				        email: "请输入一个正确的邮箱"
				      }
	 			}
		})

</script>
</body>
</html>

