$(document).ready(function(){
	$("#Samp_1").css("border-bottom","2px solid #fb4646");
	$("#Content_2").css("display","none");
	$("#Content_3").css("display","none");
	$(".samp_title").click(function(){

		
		$(".samp_title").css("border-bottom","none");
		$(".content").css("display","none")
		var samp_id=$(this).attr("id");
		var nums=samp_id.replace("Samp_","");
		
		$("#Samp_"+nums).css("border-bottom","2px solid #fb4646")
		$("#Content_"+nums).css("display","block")
		
		})



	 $('#li_qq_service').mouseover(function() {
        $(this).children('div').show();
    }).mouseout(function() {
        $(this).children('div').hide();
    });
    
    $('#yt_block').mouseover(function() {
        $(this).children('div').show();
    }).mouseout(function() {
        $(this).children('div').hide();
    });
    
    $(window).scroll(function(){
        if ($(window).scrollTop()>100){
            $("#to_top").fadeIn(1000);
        }
        else {
            $("#to_top").fadeOut(1000);
        }
    });
    
    //当点击跳转链接后，回到页面顶部位置
    $("#to_top").click(function(){
        $('body, html').animate({scrollTop:0},1000);
        return false;
    });
	

	$(".tab_switch_view").click(function(){
		
	
		var this_id=$(this).attr("id");
		
		switch_view(this_id);
		
		
		});

	switch_view("Tab_switch_view_1");

})
function switch_view(id)
{
	 
    $(".tab_switch_view").removeClass("tab_checked");
    $("#" + id).addClass("tab_checked");


    $(".content_switch_view").css("display", "none");
    $("#" + id.replace("Tab_switch_view_", "Content_switch_view_")).css("display", "block");
	
}

