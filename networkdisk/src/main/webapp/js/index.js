$(document).ready(function() {
	//子导航展开收缩
	$(".admin").mouseenter(function() {
		$(this).find(".c").removeClass("lbaxztop2").addClass("lbaxztop");
		$(this).next(".user").toggle().parents(".sev").siblings().find(".user").hide();
	});

	/*鼠标离开下拉框关闭*/
	$(".sev").mouseleave(function() {
		$(".user").hide();
		$(this).children(".admin").find(".c").addClass("lbaxztop2");
	});

	$(".file").mouseenter(function() {
		$(this).next(".upload").toggle().parents(".upfile").siblings().find(".upload").hide();
	});
	$(".upfile").mouseleave(function() {
		$(".upload").hide();
	});

	$(".g_1").mouseenter(function() {
		$(this).next(".equi").toggle().parents(".equip").siblings().find(".equi").hide();
	});
	$(".equip").mouseleave(function() {
		$(".equi").hide();
	});
	$(".list").mouseenter(function() {
		$(this).next(".listpal").toggle().parents(".ch").siblings().find(".listpal").hide();
	});
	$(".lp").mouseleave(function() {
		$(".listpal").hide();
	});
	$('.listpal li').click(function() {
		$(this).siblings().find('.active').removeClass();
		$(this).children('img').addClass("active");
	});

	var toggle = true;
	$(".large").click(function() {
		if(toggle) {
			$(this).children("img").attr("src", "/networkdisk/img/row.png");
			toggle = false;
		} else {
			$(this).children("img").attr("src", "/networkdisk/img/other.png");
			toggle = true;
		}
	});
	$(".chk_1").click(function() {
		if(this.checked) {
			$("#tw1 .table :checkbox").prop("checked", true);
			$("#n1").html("已选中" + $("#tw1 .table tr").length + "个文件/文件夹");
			$('#g_button').css('display', 'none');
			$('.equip_1').css('display', 'block');
		} else {
			$("#tw1 .table :checkbox").prop("checked", false);
			$("#n1").html("文件夹");
			$('#g_button').css('display', 'block');
			$('.equip_1').css('display', 'none');
		}
	});
	$(".chk_2").click(function() {
		if(this.checked) {
			$("#table2 :checkbox").prop("checked", true);
			$("#n2").html("已选中" + $("#table2 tr").length + "个文件/文件夹");
			$('#g_button').css('display', 'none');
			$('.equip_1').css('display', 'block');
		} else {
			$("#table2 :checkbox").prop("checked", false);
			$("#n2").html("文件夹");
			$('#g_button').css('display', 'block');
			$('.equip_1').css('display', 'none');
		}
	});
	$("#tabs a").click(function() {
		$(this).tab('show');
	});
	$(".tab a").click(function() {
		$(this).tab('show');
	});

	$('.timelin_content img').mouseenter(function() {
				$(this).prev('span').css('display', 'inline-block');
			});
			$('.timelin_content img').mouseout(function() {
				$(this).prev('span').css('display', 'none');
			});
			value2 = 0;
			$('.timeline_day1').rotate({
				bind: {
					click: function() {
						value2 += 180;
						$('#down').rotate({
							animateTo: value2
						});
						if(value2 % 360 == 0) {
							$('.timelin_content').css('display', 'block');
						} else {
							$('.timelin_content').css('display', 'none');
						}
					}
				}
			});
			$("#chall").click(function() {
				if(this.checked) {
					$(".timelin_content").find('span').css('display', 'inline-block');
					$("#c1").html("已选中" + $(".timelin_content").children('span').length + "张图片");
					$('.donetimeline').css('display', 'block');
				} else {
					$(".timelin_content").find('span').css('display', 'none');
					$("#c1").html("已选中0张图片");
					$('.donetimeline').css('display', 'none');
				}
			});
			$('table td').mouseenter(function() {
				$(this).children('#more').css('display', 'inline-block');
			});
			$('table td').mouseleave(function() {
				$(this).children('#more').css('display', 'none');
			});
			$('#up').click(function(){
				$('#msg').show();
			});
			var i = true;
			$('.fa-window-maximize').click(function() {
				if(i) {
					$('#msg').css('bottom', '0');
					i = false;
				} else {
					$('#msg').css('bottom', '-300px');
					i = true;
				}
			});
			$('.fa-times').click(function() {
				$(this).parent('div').hide();
			});
			
			$("#newonefile").click(function() {
					//创建tr节点
					var $tr = $("<tr></tr>");
					//遍历获取输入的内容
					var $td = $("<td><input type='checkbox' id='checkbox_a1'/><i class='fa fa-folder'></i><input type='text' value='新建文件夹' class='filename'><i class='fa fa-check-square sure'></i><i class='fa fa-times-rectangle dele'></i></td><td>-</td><td class='t3'></td>");
					//将内容循环添加到创建好的TD中
					$td.appendTo($tr);
					$tr.appendTo("#tw1 table");
					//执行删除操作
					$(".dele").click(function() {
						$(this).parent().parent().remove();
					});
					$('.sure').click(function() {
						$(this).prev().val();
						$('.filename').css('border', 'none');
						var d = new Date();
						var month = d.getMonth() + 1;
						var day = d.getDate();
						var time = d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
						var output = d.getFullYear() + '-' + (month < 10 ? '0' : '') + month + '-' + (day < 10 ? '0' : '') + day + ' ' + time;
						$(this).parent('td').siblings('td:last').append(output);
						$(this).next('i').remove();
						$(this).remove();
					});
				});
});