$(document).ready(function() {
	$(".weixin").mouseover(function() {
		$(".erweima").css("display", "block");
	}).mouseout(function() {
		$(".erweima").css("display", "none");
	});

	$("#Samp_1").css("border-bottom", "2px solid #fb4646");
	$("#Content_2").css("display", "none");
	$("#Content_3").css("display", "none");
	$(".samp_title").click(function() {

		$(".samp_title").css("border-bottom", "none");
		$(".content").css("display", "none");
		var samp_id = $(this).attr("id");
		var nums = samp_id.replace("Samp_", "");

		$("#Samp_" + nums).css("border-bottom", "2px solid #fb4646");
		$("#Content_" + nums).css("display", "block");

	});

	/*
	 * $('#li_qq_service').mouseover(function () {
	 * $(this).children('div').show(); }).mouseout(function () {
	 * $(this).children('div').hide(); });
	 */

	$('#yt_block').mouseover(function() {
		$(this).children('div').show();
	}).mouseout(function() {
		$(this).children('div').hide();
	});

	$(window).scroll(function() {
		if ($(window).scrollTop() > 100) {
			$("#to_top").fadeIn(1000);
		} else {
			$("#to_top").fadeOut(1000);
		}
	});
	
	//弹出口
	$(".mskeLayBg").height($(document).height());
	$(".mskeClose").click(function() {
		$(".mskeLayBg,.mskelayBox").hide()
	});
	$(".msKeimgBox li").click(function() {
		var imgWidth = 0, imgHeight = 0, w;
		if (imgHeight == 0) {
			imgWidth = $(this).find(".bigImg")[0].width;
			imgHeight = $(this).find(".bigImg")[0].height;
		}
		$(document).ready(function() {
			w = $(document).width();
		});
		w = (w - imgWidth) / 2 + "px";

		$(".mskelayBox").css("left", w);
		$(".mskelayBox").css("width", imgWidth);
		$(".mskelayBox").css("height", imgHeight);
		$(".mske_html").html($(this).find(".hidden").html());
		$(".mskeLayBg").show();
		$(".mskelayBox").fadeIn(300)
	});

	// 当点击跳转链接后，回到页面顶部位置
	$("#to_top").click(function() {
		$('body, html').animate({
			scrollTop : 0
		}, 1000);
		return false;
	});

	$(".tab_switch_view").click(function() {

		var this_id = $(this).attr("id");

		switch_view(this_id);

	});

	switch_view("Tab_switch_view_1");
});

function switch_view(id) {
	/*
	 * $(".tab_switch_view").removeClass("tab_checked"); $("#" +
	 * id).addClass("tab_checked");
	 * 
	 * 
	 * $(".content_switch_view").css("display", "none"); $("#" +
	 * id.replace("Tab_switch_view_", "Content_switch_view_")).css("display",
	 * "block");
	 */
}
