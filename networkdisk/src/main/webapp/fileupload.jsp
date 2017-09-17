<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/jquery-1.8.2.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		function test() {
			var form = new FormData(document.getElementById("tf"));
		
			$.ajax({
				url : "${pageContext.request.contextPath}/fileupload",
				type : "post",
				data : form,
				processData : false,
				contentType : false,
				success : function(data) {
					alert(data.message);
				},
			});
			/* get();//此处为上传文件的进度条 */
		}
	</script>

	<form action="${pageContext.request.contextPath}/findAllByUser"
		method="post">

		<input type="submit" value="查找" />

	</form>
</body>
</html>
