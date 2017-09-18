$(document).ready(function() {
	$("#p1").css({
		"color": "black",
		"background": "whitesmoke"
	});
	$("#p1").click(function() {
		$("#page").attr("src", "/networkdisk/manager/frist.jsp");
		$(".bot").css({
			"color": "white",
			"background": "black"
		});
		$("#p1").css({
			"color": "black",
			"background": "whitesmoke"
		});
	});
	$("#p2").click(function() {
		$("#page").attr("src", "getUserAll");
		$(".bot").css({
			"color": "white",
			"background": "black"
		});
		$("#p2").css({
			"color": "black",
			"background": "whitesmoke"
		});
	});
	$("#p3").click(function() {
		$("#page").attr("src", "/networkdisk/manager/folder.jsp");

		$(".bot").css({
			"color": "white",
			"background": "black"
		});
		$("#p3").css({
			"color": "black",
			"background": "whitesmoke"
		});
	});

	$("#p5").click(function() {
		$("#page").attr("src", "/networkdisk/manager/self.jsp");

		$(".bot").css({
			"color": "white",
			"background": "black"
		});
		$("#p5").css({
			"color": "black",
			"background": "whitesmoke"
		});
	});
	
	$("#p7").click(function() {
		$("#page").attr("src", "/networkdisk/manager/notice.jsp");

		$(".bot").css({
			"color": "white",
			"background": "black"
		});
		$("#p7").css({
			"color": "black",
			"background": "whitesmoke"
		});
	});

	$("#p9").click(function() {
		$("#page").attr("src", "/networkdisk/manager/link.jsp");

		$(".bot").css({
			"color": "white",
			"background": "black"
		});
		$("#p9").css({
			"color": "black",
			"background": "whitesmoke"
		});
	});
	
});