$(document).ready(function() {
	
	$("#registerForm").validate({
		rules : {
			name : {
				required : true,
				maxlength : 14

			},
			trueName : {
				required : true,
				rangelength : [ 2, 4 ]
			},
			sex : "required",
			phone : {
				required : true,
				rangelength : [ 11, 11 ]

			},
			passWord : {
				required : true,
				rangelength : [ 6, 14 ]
			},
			code : {
				required : true,

			},
			email : {
				required : true,
				email : true
			},
			agree : "required"
		},

		messages : {
			name : {
				required : "请输入用户名",
				minlength : "用户名最长为14个英文组成"
			},
			trueName : {
				required : "请填写真实姓名",
				rangelength : "姓名为2-4个中文"
			},
			passWord : {
				required : "请输入密码",
				rangelength : "密码长度为6-14个字符"
			},
			code : {
				required : "请输入验证码",
			},
			phone : {
				required : "请输入手机号",
				rangelength : "电话号码为11位数"

			},
			email : {
				required : "请输入邮箱",
				email : "请输入一个正确的邮箱",
			},
			agree : "请接受协议",
			sex : "请选择性别",

		}
	});

})
