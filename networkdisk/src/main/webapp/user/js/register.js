
$(document).ready(function(){
				 $("#registerForm").validate({
					  rules: {
					    	name: {
					        required: true,
					        maxlength:14,
					        remote: {
					            url: "checkUserName",     //后台处理程序
					            type: "post",               //数据发送方式
					            dataType: "json",           //接受数据格式   
					            data: {                     //要传递的数据
					                name: function() {
					                    return $("#username").val();
					                }
					            }
					        }
					        
					      },
					      trueName: {
						        required: true,
						        rangelength:[2,4]
						      },
					     sex:"required",
					      phone: {
						        required: true,
						       rangelength:[11,11],
						        remote: {
						            url: "checkPhone",     
						            type: "post",              
						            dataType: "json",              
						            data: {                     
						            	phone: function() {
						                    return $("#telphone").val();
						                }
						            }
						        }

						      },
					      passWord: {
					        required: true,
					        rangelength:[6,14]
					      },
					      repassword: {
						        required: true,
						        rangelength:[6,14],
						        equalTo:"#password"
						      },
					      code: {
					        required: true
					       
					       
					      },
					      email: {
					        required: true,
					         email: true,
					        remote: {
					            url: "checkEmail",     
					            type: "post",              
					            dataType: "json",              
					            data: {                     
					            	email: function() {
					                    return $("#email").val();
					                }
					            }
					        }
					      },
					      agree: "required"
					    },
					  
					    messages: {
					      name: {
					    	  remote: "用户名已存在",
					        required: "请输入用户名",
					        minlength: "用户名最长为14个英文组成"
					        
					      },
					      trueName: {
						        required: "请填写真实姓名",
						        rangelength: "姓名为2-4个中文"
						      },
					      passWord: {
					        required: "请输入密码",
					        rangelength: "密码长度为6-14个字符"
					      },
					      repassword: {
						        required: "请输入密码",
						        rangelength:"密码长度为6-14个字符",
						        equalTo:"两次密码不一致"
						      },
					      code: {
						        required: "请输入验证码",
						      },
					      phone:{
					    	remote: "手机号已注册",
					        required: "请输入手机号",
					       rangelength: "电话号码为11位数"
  
					      },
					     
					      email:{
					    	    remote: "邮箱已注册",
						        required: "请输入邮箱",
						        email: "请输入一个正确的邮箱"
						      },
					      agree: "请接受协议",
					      sex: "请选择性别",
						      						      
					    }
					});			

});
