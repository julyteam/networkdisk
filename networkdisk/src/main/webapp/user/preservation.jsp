<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/networkdisk/js/jquery-1.11.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>
	<div id="mytbody"></div>
	<div id="frist">
		<c:forEach items="${catelist }" var="c">
			<div>
				<input type="checkbox" name="catebox" class="cateid" value="${c.id }" /><label class="cate">${c.name }</label></div>
			<br>
		</c:forEach>
		<c:forEach items="${filelist }" var="f">
			<div>
				<input type="checkbox" name="filebox" value="${f.id }" /><label>${f.name }</label></div>
			<br>
		</c:forEach>
	</div>
	
	<script type="text/javascript">
		$(".cate").click(function(){
			var cateid = $(".cateid").val();
			shownext(cateid);
		});
		function shownext(cateid){
			$.ajax({
				url : "shownext?cateid=" + cateid,
				dataType : 'json',
				async : false,
				success : function(map) {
					$("#frist").remove();
					$(".showTr").remove();
					var listFile = map.filelist;
					var listCate = map.catelist;
					
					for (var i = 0; i < listCate.length; i++) {
						var $str = $("<tr class='showTr'>"
								+ "<td id='t1'>"
								+ "<input type='checkbox' name='catebox' value='"+listCate[i].id+"' class='chk_2' />"
								+ "<span id='listCateID' value='"+listCate[i].id+"'></span>"
								+ "<a id='showFile' class='july_fileName' onclick='shownext("
								+ listCate[i].id
								+ ")'><label>"
								+ listCate[i].name
								+ "</label></a>"
								+ "<span>"
								+ listCate[i].id
								+ "</span>"
								+ "<span id='more'>"
								+ "<span class='fa fa-share-alt' title='分享'>"
								+ "</span> <span class='fa fa-download' title='下载'>"
								+ "</span>"
								+ "<span class='fa fa-ellipsis-h' title='更多'></span>"
								+ "</span></td>"
								+ "<td id='t2'>--</td>"
								+ "<td id='t3'>"
								+ listCate[i].addtime
								+ "</td>"
								+ "</tr>")
						$(
								"#mytbody")
								.append(
										$str);
					}

					for (var i = 0; i < listFile.length; i++) {
						var $str = $("<tr class='showTr'>"
								+ "<td id='t1'>"
								+ "<input type='checkbox' name='filebox' value='"+listFile[i].id+"' class='chk_2' />"
								+ "<a class='july_fileName'><label>"
								+ listFile[i].name
								+ "</label></a>"
								+ "<span>"
								+ listFile[i].id
								+ "</span>"
								+ "<span id='more'>"
								+ "<span class='fa fa-share-alt' title='分享'>"
								+ "</span> <span class='fa fa-download' title='下载'>"
								+ "</span>"
								+ "<span class='fa fa-ellipsis-h' title='更多'></span>"
								+ "</span></td>"
								+ "<td id='t2'>"
								+ listFile[i].size
								+ "</td>"
								+ "<td id='t3'>"
								+ listFile[i].addtime
								+ "</td>"
								+ "</tr>"
								)
						$(
								"#mytbody")
								.append(
										$str);
					}
				},
				error : function() {
					alert("文件夹失效！");
				}
			});
		}
	</script>
	
	<span id="pres"
		style="width: 200px; height: 40px; background: grey; font-size: 25px;">保存到网盘</span>
	<br>
	<form action="sharelogin" method="post">
		username:<input type="text" name="name" /><br> password:<input
			type="text" name="passWord" /><br> <input type="submit"
			value="login" />
	</form>
	${user.name }
	<script type="text/javascript">
		$("#pres").click(function(){
			var fid = new Array();
			var fname = new Array();
			var cateid = new Array();
			var catename = new Array();
			$("input[name='filebox']:checked").each(
					function(key, value) {
						fid[key] = $(this).val();
						fname[key] = $(this).parent().find("label")
								.text();
					});
			$("input[name='catebox']:checked").each(
					function(key, value) {
						cateid[key] = $(this).val();
						catename[key] = $(this).parent().find("label")
								.text();
					});
			/* alert(fid);
			alert(fname);
			alert(cateid);
			alert(catename); */
			 if (fid == "" && cateid == "") {
				alert("请选择文件进行保存！");
			} else {
				$.ajax({
					url : "preservation?fidlist=" + fid
							+ "&fnamelist=" + fname+"&cateid="+cateid+"&catename="+catename,
					dataType : 'json',	
					async : false,
					success : function(data) {
						if (data == 1) {
							alert("保存成功！");
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
	
	
	
	<br>
	<!-- <script type="text/javascript">
		$(document).ready(
				function() {
					$("#").click(
							function() {
								var fid = new Array();
								var fname = new Array();
								var uid = $("#uid").val();
								$("input[name='filebox']:checked").each(
										function(key, value) {
											fid[key] = $(this).val();
											fname[key] = $(this).parent()
													.text();
										});
								if (fid == "") {
									alert("请选择文件进行保存！");
								} else {
									$.ajax({
										url : "preservation?fidlist=" + fid
												+ "&fnamelist=" + fname,
										dataType : 'json',
										async : false,
										success : function(data) {
											if (data == 1) {
												alert("保存成功！");
											} else if (data == 0) {
												alert("文件已存在！");
											}
										},
										error : function() {
											alert("保存失败！");
										}
									});
								}
							});
				});
	</script> -->

</body>
</html>