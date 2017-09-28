<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.july.networkdisk.util.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>July</title>
<link href="/networkdisk/user/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/networkdisk/user/css/bootstrap-theme.min.css" />
<link href="/networkdisk/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="/networkdisk/font-awesome-4.7.0/css/font-awesome.min.css">
<script src="/networkdisk/js/jquery-1.11.2.min.js"></script>    
<script type="text/javascript" src="/networkdisk/js/ajaxfileupload.js"></script>  
<script src="/networkdisk/user/js/bootstrap.min.js"></script>
<script src="/networkdisk/js/index.js"></script>
<script src="/networkdisk/js/jquery.rotate.min.js"></script>

</head>

<body>
		<div class="tab-content">
					<div class="tab-pane fade in active" id="tw1">
						<div class="row">
							<div class="span3">
								
								
								<div class="span5">
									
									<div class="ch">
										<div class="lp">
											
											<ul class="listpal">
												<li><img src="/networkdisk/img/OK.png" class="active" />&nbsp;文件名</li>
												<li><img src="/networkdisk/img/OK.png" />&nbsp;大小</li>
												<li><img src="/networkdisk/img/OK.png" />&nbsp;修改日期</li>
											</ul>
										</div>
										<a class="large"><img src="/networkdisk/img/other.png" /></a>
									</div>
								</div>
							</div>
							<div class="tw1_body">
								<div class="Jdh">
									<span class="j1">全部文件</span> <span class="j2">已加载全部，共8条</span>
								</div>
								<div class="Qdh">
									<ul>
										<li style="width: 60%; margin-left: -40px;"><input
											type="checkbox" class="chk_1" /><span id="n1">文件名</span></li>
										<li>大小</li>
										<li>修改日期</li>
									</ul>
								</div>
								<form action="" method="post">
									<table class="table">
										<tbody id="mytbody">
										

											<script type="text/javascript">
												var categorie ;
												var recycle;
												function show(categorie_id,
														recycleflag) {
													categorie=categorie_id;
													recycle=recycleflag;
													alert(categorie);
													$(".showTr").remove();
													$.ajax({
																type : "post",
																dataType : "json",
																url : "showFileAndCate",
																data : {
																	categorie_id : categorie_id,
																	recycleflag : recycleflag
																},
																success : function(map) {
																	var listFile = map.listFiles;
																	var listCate = map.listCategories;

																	for (var i = 0; i < listCate.length; i++) {
																		var $str = $("<tr class='showTr'>"
																				+ "<td id='t1'>"
																				+ "<input type='checkbox' name='catebox' class='chk_2' />"
																				+ "<span id='listCateID' value="+listCate[i].id+"></span>"
																				+ "<a id='showFile' class='july_fileName' onclick='show("
																				+ listCate[i].id
																				+ ","
																				+ listCate[i].state
																				+ ")'>"
																				+ listCate[i].name
																				+ "</a>"
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
																				+ "<input type='checkbox' name='filebox' value='' class='chk_2' />"
																				+ "<a class='july_fileName'>"
																				+ listFile[i].name
																				+ "</a>"
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
																	alert("查询失败")
																}
															});

												}
												
												
												$(function() {
													var categorie_id ="";
													var recycleflag = 0;
													show(categorie_id,
															recycleflag);
												});
												
												
												/*  $("#upfile").change(function(){  
													 var file = this.files[0];
													 july_fileReader(file);
													});
												
												function july_fileReader(file){
													var flag = 0;
													$(".july_fileName").each(function(){
														if($(this).text() == file.name)
														{
														     	flag =1;
														}	
													})
													if(flag != 1){
													 if (window.FileReader) {    
													            var reader = new FileReader();    
													            reader.readAsDataURL(file);    
													            //监听文件读取结束后事件    
													          reader.onloadend = function (e) {
													        	  ajaxFileUpload(); 
													        	  $('#msg').show();
													            };    
													       } 
													}else{
														alert("文件夹中已经有相同名字的文件！")
													}
												}
												
												var time = 0;  
											      function ajaxFileUpload()  
											    {  
											    	 $("#myprogress").width(0);
											        time = window.setInterval(progress,100);  
											        $.ajaxFileUpload  
											        (  
											            {  
											                url:'${pageContext.request.contextPath}/fileupload?categorie_id='+categorie,  
											                secureuri:false,  
											                fileElementId:'upfile',//fileToUpload是input file 标签的id值  
											                dataType: 'multipart/form-data',  
											                success: function (data)  
											                {  
											                	alert(data);
											                	//刷新页面
											                	show(categorie, recycle);
											                	//需要重新绑定事件
											                	$("#upfile").change(function(){  
																	 var file = this.files[0];
																	 july_fileReader(file);
																	});
											                }  
											                
											            }  
											        )  
											        return false;  
											    }  
											      
											    function progress(){  
											        $.ajax({  
											            url:"${pageContext.request.contextPath}/progress",  
											            dataType: 'json',  
											            success:function(data){ 
											            	 $("#myprogress").width(data.rate+"%");
											                if(data.rate == 100){  
											                    clearInterval(time);  
											                }   
											            },  
											            error:function(){  
											                alert("error");  
											            }  
											            });  
													}   */
											</script>
										</tbody>
									</table>
								</form>
							</div>
						</div>
					</div>
					<%String uuid = CommonUtil.createUUID();%>
				</div>
				<!-- <input id="share" type="button" value="sub" /> -->
				<!-- <a id="share" href="" >分享文件</a> -->
				<span id="share" >分享文件</span>
				<input type="text" id="url" value="" />
				<a href="" id="sub" ></a>
<script type="text/javascript">
	$(document).ready(function(){
		$("#share").click(function(){
			$("#url").attr("value","http://localhost:8080/networkdisk/shareurl?url=<%=uuid%>");
			$("#sub").html("确认分享");
		});
		$("#sub").click(function(){
			var btns = new Array();
			var cateid = new Array();
			var uuid = $("#url").val();
			$("input[name='filebox']:checked").each(function(key,value){
			    btns[key] = $(this).parent().text();
			});
			$("input[name='catebox']:checked").each(function(key,value){
			    cateid[key] = $(this).parent().text();
			    
			});
			if(btns == "" && cateid == ""){
				alert("请选择文件或文件夹进行分享！");
			}else{
				$.ajax({  
		            url:"share?fidlist="+btns+"&cateid="+cateid+"&uuid="+uuid,
		            dataType: 'json',
		            async: false,
		            success:function(data){  
		               alert("分享成功！");
		            },  
		            error:function(){  
		                alert("分享失败！");  
		            }  
		        });  
			}
			
		});
		
		
	});
</script>				

</body>

</html>
