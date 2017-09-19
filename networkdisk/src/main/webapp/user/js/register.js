$(document).ready(function(){
				$("input#username").focus(function(){
					$("#userInfo").css('visibility','visible');
				});
				$("input#username").blur(function(){
					$("#userInfo").css('visibility','hidden');
				});
				$("input#password").focus(function(){
					$("#passwordInfo").css('visibility','visible');
				});
				$("input#password").blur(function(){
					$("#passwordInfo").css('visibility','hidden');
				});		
				$("input#telphone").focus(function(){
					$("#telInfo").css('visibility','visible');
				});
				$("input#telphone").blur(function(){
					$("#telInfo").css('visibility','hidden');
				});		
				

				 $("#registerForm").validate({
					   debug:true,
					  rules: {
					    	username: {
					        required: true,
					        maxlength:14
					        
					      },
					      realname: {
						        required: true,
						        rangelength:[2,4]
						      },
					     sex:"required",
					      telphone: {
						        required: true,
						        rangelength:[11,11]
						      
						      },
					      password: {
					        required: true,
					        rangelength:[6,14]
					      },
					      code: {
					        required: true,
					       
					      },
					      email: {
					        required: true,
					         email: true
					      },
					      agree: "required"
					    },
					  
					    messages: {
					      username: {
					        required: "请输入用户名",
					        minlength: "用户名最长为14个英文组成"
					      },
					      realname: {
						        required: "请填写真实姓名",
						        rangelength: "姓名为2-4个中文"
						      },
					      password: {
					        required: "请输入密码",
					        rangelength: "密码长度为6-14个字符"
					      },
					      code: {
						        required: "请输入验证码",
						      },
					      telphone:{
					        required: "请输入手机号",
					        rangelength: "电话号码为11位数"
  
					      },
					      email:{
						        required: "请输入邮箱",
						        email: "请输入一个正确的邮箱",
						      },
					      agree: "请接受协议",
					      sex: "请选择性别",
						      						      
					    }
					});			
	
			})
