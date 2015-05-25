///
///下拉框控件2.0
///
///
$(function () {
    //下拉框展开、合拢加载不同样式
    $(".select_box>div").click(function () {
        if ($(this).attr("class") == "tag_select") {
            $(this).attr("class", "tag_select_open");

            //找li中是否有被选中的值，赋以open_selected样式
            $(".tag_options>li").each(function () {
                //IE7下必须去空格，要不无法相等
                if ($.trim($(this).html()) == $.trim($(".select_box>div").html())) {
                    $(this).attr("class", "open_selected");
                }
                else {
                    $(this).attr("class", "open");
                }
            });

            $(".tag_options").show();
        }
        else {
            $(this).attr("class", "tag_select");
            $(".tag_options").hide();
        }
    });

    //由于open_selected样式中含有background无法被其它样式覆盖，所以才用直接替换
    $(".tag_options>li").hover(function () {
        $(this).attr("class", "open_hover");
    }, function () {
        //区分样式
        if ($.trim($(this).html()) == $.trim($(".select_box>div").html())) {
            $(this).attr("class", "open_selected");
        }
        else {
            $(this).attr("class", "open");
        }
    });

    $(".tag_options>li").click(function () {
        $(".select_box>div").html($(this).html());
        $(".select_box>div").attr("class", "tag_select");
        $(".tag_options").hide();
    });

    //用工作区点击事件判断是否在下拉框范围内，不在的话合拢
    $(document).click(function (event) {
        
        if ($(".tag_options").is(":visible")) {
            var leftTmp = $(".tag_options").offset().left;
            var topTmp = $(".tag_options").offset().top;
            if (event.pageX < leftTmp || event.pageX > leftTmp + $(".tag_options").width() || event.pageY < topTmp - $(".select_box").height() || event.pageY > topTmp) {
                $(".select_box>div").attr("class", "tag_select");
                $(".tag_options").hide();
            }
        }
    });
});