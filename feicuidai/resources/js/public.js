jQuery(function() {
	// 选项卡滑动切换通用
	jQuery(function() {
		jQuery(".hoverTag .chgBtn").hover(
				function() {
					jQuery(this).parent().find(".chgBtn").removeClass(
							"chgCutBtn");
					jQuery(this).addClass("chgCutBtn");
					var cutNum = jQuery(this).parent().find(".chgBtn").index(
							this);
					jQuery(this).parents(".hoverTag").find(".chgCon").hide();
					jQuery(this).parents(".hoverTag").find(".chgCon")
							.eq(cutNum).show();
				})
	})

	// 选项卡点击切换通用
	jQuery(function() {
		jQuery(".clickTag .chgBtn").click(
				function() {
					jQuery(this).parent().find(".chgBtn").removeClass(
							"chgCutBtn");
					jQuery(this).addClass("chgCutBtn");
					var cutNum = jQuery(this).parent().find(".chgBtn").index(
							this);
					jQuery(this).parents(".clickTag").find(".chgCon").hide();
					jQuery(this).parents(".clickTag").find(".chgCon")
							.eq(cutNum).show();
				})
	})

	// 图库弹出层
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
	/*
	 * $(".mskeTogBtn").click(function() {
	 * $(".msKeimgBox").toggleClass("msKeimgBox2");
	 * $(this).toggleClass("mskeTogBtn2") });
	 */

})

// 屏蔽页面错误
jQuery(window).error(function() {
	return true;
});
jQuery("img").error(function() {
	$(this).hide();
});