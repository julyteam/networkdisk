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
			})
