<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/networkdisk/manager/css/users.css" />
<script type="text/javascript" src="/networkdisk/manager/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#update").hide();
		$("#edite").click(function(){
			 $(".aaa").removeAttr("readonly");
			 $(".aaa").css({"background":"white"});
			 $("#edite").hide();
			 $("#update").show();
		});
		
	});
	function update(){
		$.ajax({
			url : "${pageContext.request.contextPath}/update",
			type : "post",
			data : form,
			processData : false,
			contentType : false,
			success : function(data) {
				alert(data.message);
			},
		});
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="head"><span style="font-size: 35px;float: left;margin-top: 15px;margin-left: 20px;font-weight: bold;">用户管理</span></div>
		<div class="search">
			<input type="text" style="width: 250px;height: 25px;"  />
			<input type="button" value="search" style="width: 80px;height: 30px;margin-left: 5px;font-size: 20px;"  />
		</div>
		<div class="cont">
			<table>
				<tr>
					<td style="font-weight: bold;font-size: 20px;height: 80px;">用户名</td>
					<td style="font-weight: bold;font-size: 20px;height: 80px;">真实姓名</td>
					<td style="font-weight: bold;font-size: 20px;height: 80px;">性别</td>
					<td style="font-weight: bold;font-size: 20px;height: 80px;">email</td>
					<td style="font-weight: bold;font-size: 20px;height: 80px;">手机</td>
					<td style="font-weight: bold;font-size: 20px;height: 80px;">注册时间</td>
					<td style="font-weight: bold;font-size: 20px;height: 80px;">操作</td>
				</tr>
				<c:forEach items="${users }" var="u">
				<tr>
					<td><input type="text"  value="${u.name }" readonly="readonly" class="aaa" /></td>
					<td><input type="text"  value="${u.trueName }" readonly="readonly" class="aaa" /></td>
					<c:if test="${u.sex == 1 }"><td><input type="text"  value="男" readonly="readonly" class="aaa" /></td></c:if>
					<c:if test="${u.sex == 0 }"><td><input type="text"  value="女" readonly="readonly" class="aaa" /></td></c:if>
					<td><input type="text"  value="${u.email }" readonly="readonly" class="aaa" /></td>
					<td><input type="text"  value="${u.phone }" readonly="readonly" class="aaa" /></td>
					<td><input type="text"  value="${u.timeStamp }" readonly="readonly" class="aaa" /></td>
					<td><input type="button" value="删除" /><input id="edite" type="button" value="编辑" /><input id="update" type="button" value="修改" /></td>
				</tr>
				</c:forEach>
			</table>
		</div>
</body>
</html>