/**
 * Created by Keen on 2015/5/14.
 */
$(document).ready(function() {
    function province() {
        var provinceID = jQuery("#province").val();
        //当省改变的时候加载城市信息
        jQuery(".citys_son").html(" ");
        $.ajax({
            type : 'post',
            url : '/member/getCityList',
            data:{
                provinceID: provinceID
            },
            success:function (data) {
                var json_obj = $.parseJSON(data);
                for (var i in json_obj) {
                    jQuery(".citys_son").append(
                        '<div class="language_selected citys_son_list" onclick="popcity(event)">'
                        + json_obj[i].name
                        + '</div>');
                }
            }
        });
    }

//语言头部的点击事件，显示语言列表
    $(".add_bank").click(function(e) {
        $(".add_bank_son").toggle();
        e.stopPropagation(); //阻止事件冒泡，否则事件会冒泡到下面的文档点击事件
        $(".language_selected .icon_add_bank img").attr("src","/resource/phone/images/up_arrow.png");

    });
    $(".province").click(function(e) {
        $(".province_son").toggle();
        e.stopPropagation(); //阻止事件冒泡，否则事件会冒泡到下面的文档点击事件
        $(".language_selected .icon_province img").attr("src","/resource/phone/images/up_arrow.png");

    });
    $(".citys").click(function(e) {
        $(".citys_son").toggle();
        e.stopPropagation(); //阻止事件冒泡，否则事件会冒泡到下面的文档点击事件
        $(".language_selected .icon_citys img").attr("src","/resource/phone/images/up_arrow.png");

    });
//点击文档时，隐藏语言列表
    $(document).click(function() {
        $(".language_list").hide();
    });
//点击列表中的项时，更新选中项，并隐藏语言列表
    $(".add_bank_son .language_selected").click(function() {
        $(".content_bank").text($(this).text());
        $("#bankType").val($(this).children("input").val());
        $(".add_bank_son").hide();
        $(".language_selected .icon_add_bank img").attr("src","/resource/phone/images/down_arrow.png");
    });
    $(".province_son .language_selected").click(function() {
        $(".content_province").text($(this).text());
        $("#province").val($(this).children("input").val());
        $(".province_son").hide();
        province();
        $(".language_selected .icon_province img").attr("src","/resource/phone/images/down_arrow.png");
    });
});
function popcity(e){
    $(".content_citys").text(e.target.innerHTML);
    $(".citys_son").hide();
    $(".language_selected .icon_citys img").attr("src","/resource/phone/images/down_arrow.png");
}

//绑定银行卡
function bindBankCard() {
    var json = {
        city: $.trim($(".content_citys").text()),
        bankName: $.trim($("#bankName").val()),
        bankAccount: $.trim($("#bankAccount").val()),
        province: $.trim($(".content_province").text()),
        bankTypeId: $.trim($("#bankType").val()),
        bankTypeName: $.trim($(".content_bank").text())
    }
    if (json.bankType == "" || json.bankName == "" || json.bankAccount == ""
        || json.province == "" || json.city == "") {
        ymPrompt.errorInfo('请填写完整信息！', 250, 200, '提示', null);
        return;
    }
    $.ajax({
        url: "/member/bindBankCard",
        type: "post",
        data: JSON.stringify(json),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (data) {
            if (data != "") {
                ymPrompt.succeedInfo('绑定银行卡成功！', 250, 200, '成功', function () {
                    top.window.location = "/phoneVisitor/bankManagement";
                });
            } else {
                ymPrompt.errorInfo('绑定银行卡失败！', 250, 200, '失败', null);
            }
        }, error: function (message) {
            $("#request-process-patent").html("提交数据失败！");
        }
    });
}