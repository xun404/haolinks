function focusSlide() {
    function i() {
        $(".focusSlideNum i:last").hasClass("cur") ? ($(".focusSlide").animate({left: 0}), $(".focusSlideNum i").removeClass("cur"), $(".focusSlideNum i:first").addClass("cur")) : $(".focusSlideNum .cur").next().trigger("mouseover")
    }

    for (var e = $(".focusSlide li").size(), t = 0; e > t; t++)$(".focusSlideNum").append("<i></i>");
    $(".focusSlideNum").css({marginLeft: -$(".focusSlideNum").width() / 2}), $(".focusSlideNum i:first").addClass("cur"), $(".focusSlideNum i").each(function (e) {
        $(this).mouseover(function () {
            clearInterval(o), $(".focusSlideNum i").removeClass("cur"), $(this).addClass("cur"), $(".focusSlide").animate({left: -$(".focusSlide li").width() * e}), o = setInterval(i, 5e3)
        })
    });
    var o = setInterval(i, 5e3);
    $(window).on("resize", function () {
        $(".focusSlide li").width($(window).width()), $(".focusSlide").css({left: -($(".focusSlideNum .cur").index() * $(".focusSlide li").width())})
    })
}
function videoSlide() {
    function i() {
        e++, e == o && (e = 0), $(".videoSlide .num b").eq(e).trigger("mouseover")
    }

    var e = 0, t = $(".videoSlide").width(), o = $(".videoSlide img").size(), r = t * o;
    $(".videoSlide ul").css({width: r}), $(".videoSlide .num b:first").addClass("cur"), $(".videoSlide .num b").mouseover(function () {
        clearInterval(n), $(".videoSlide .num b").removeClass("cur"), $(this).addClass("cur"), $(".videoSlide ul").animate({left: -t * [$(this).text() - 1]}), e = $(this).text() - 1, n = setInterval(i, 5e3)
    }), $(".videoSlide .prev").click(function () {
        return $(".videoSlide .num b:first").hasClass("cur") ? void $(".videoSlide .num b:last").trigger("mouseover") : void $(".videoSlide .num .cur").prev().trigger("mouseover")
    }), $(".videoSlide .next").click(function () {
        return $(".videoSlide .num b:last").hasClass("cur") ? void $(".videoSlide .num b:first").trigger("mouseover") : void $(".videoSlide .num .cur").next().trigger("mouseover")
    });
    var n = setInterval(i, 5e3)
}
function getVideoUrl(i) {
    var e = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="700" height="393">';
    return e += '<param name="src" value="' + i + '">', e += '<param name="quality" value="high">', e += '<param name="autostart" value="true">', e += '<param name="loop" value="true">', e += '<embed wmode="transparent" src="' + i + '" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" loop="true" autostart="true" width="700" height="393" id="video-box">', e += "</object>"
}
function noticeScroll() {
    $(".noticeList").animate({marginTop: -$(".noticeList").parent().height()}, 300, function () {
        $(this).css({marginTop: "0px"}).find("li:first").appendTo(this)
    })
}
function ivtProdListSlide() {
    var i = parseInt($(".ivtProdList li").css("marginRight")), e = parseInt($(".ivtProdList li").outerWidth()) + i, t = e * $(".ivtProdList li").size(), o = $(".ivtProdBox").width();
    $(".investmentProduct .next").click(function () {
        $(".ivtProdList").animate(parseInt($(".ivtProdList").css("left")) <= -t + o + i ? {left: 0} : {left: "-=" + e})
    }), $(".investmentProduct .prev").click(function () {
        $(".ivtProdList").animate($(".ivtProdList").css("left") >= "0px" ? {left: o - t + i} : {left: "+=" + e})
    })
}
function partnershipSlide() {
    function i() {
        $(".psListNum i:last").hasClass("cur") ? ($(".psList").animate({left: 0}), $(".psListNum  i").removeClass("cur"), $(".psListNum  i:first").addClass("cur")) : $(".psListNum  .cur").next().trigger("mouseover")
    }

    var e = $(".partnership").width(), t = parseInt($(".psList li a").css("marginRight")), o = e + t;
    $(".psList li").width(o), $(".psListNum i:first").addClass("cur"), $(".psListNum i").each(function (e) {
        $(this).mouseover(function () {
            clearInterval(r), $(".psListNum i").removeClass("cur"), $(this).addClass("cur"), $(".psList").animate({left: -o * e}), r = setInterval(i, 5e3)
        })
    });
    var r = setInterval(i, 5e3)
}
function showLoginDiv() {
    $(".user-name").html($("#user-name").html()), $("#unknown-user").toggle(!$("#user-name").html()), $("#logged-in-user").toggle(!!$("#user-name").html()), $(".opacity-div").css("height", $("#user-name").html() ? "200px" : "270px"), $(".trans-login-div").css({right: ($(window).width() - 1e3) / 2}).animate({top: "155px"}, 1500, function () {
        $(this).animate({top: "150px"}, 500)
    })
}
Number.prototype.numFormat = function () {
    var i = this.toString();
    return i = i.split("").reverse().join("").replace(/(\d{3})/g, "$1,").split("").reverse().join(""), i.length > 0 && "," == i.charAt(0) && (i = i.substr(1)), i = i.replace(".,", ".")
}, $(".video").hide(), $(".videoSlide li").each(function () {
    $(this).hover(function () {
        $(".hover-box").show(), $(".play-icon").show()
    }, function () {
        $(".hover-box").hide(), $(".play-icon").hide()
    }), $(this).click(function () {
        $(".video").show(), $("#youkuplayer").show(), $(".videoPop").fadeIn(150), rxdai.borrow.video()
    })
}), setInterval(noticeScroll, 5e3), rxdai.borrow = {}, rxdai.borrow.info = function () {
    var i = new Date, e = "/jsonfile/index_stat.html?t=" + ("" + i.getFullYear() + (i.getMonth() + 1) + i.getDate());
    rxdai.loadJsonData(e, function (i) {
        rxdai.borrow.infoOk(i)
    }, function (i) {
        rxdai.borrow.infoOk(i)
    })
}, rxdai.borrow.video = function () {
    rxdai.loadJsonData("/pageMonitor.do", function () {
    }, function () {
    })
}, rxdai.borrow.infoOk = function (i) {
    var e = i.deal_account, t = i.earn_money, o = i.deposit.toFixed(0), r = i.yes_success_account, n = i.yes_tender_count, a = i.reg_num;
    $("#deal_account").html(e.numFormat()), $("#earn_money").html(t.numFormat()), $("#deposit").html((o - 0).numFormat()), $("#yes_success_account").html(r.numFormat()), $("#yes_tender_count").html(n.numFormat()), $("#reg_num").html(a.numFormat())
}, rxdai.article = {}, rxdai.article.getIndexArticleInfo = function () {
    var i = "";
    if (notice) {
        for (var e in notice) {
            var t = notice[e];
            i += "<li>", i += '<a href="/gonggao/a' + t.id + '.html" target="_blank">' + t.name + "</a>", i += "<i>" + t.publish_time + "</i>", i += "</li>"
        }
        $(".noticeList").html(i)
    }
}, rxdai.plan = {}, rxdai.plan.before = function () {
    var i = {method: "getNextPlan"};
    rxdai.loadData(____smart____, i, function (i) {
        rxdai.plan.beforeOk(i)
    }, function (i) {
        rxdai.doFailed(i)
    })
}, rxdai.plan.beforeOk = function (i) {
    var e = i.result;
    e && (e.account == e.account_yes ? ($(".smartTender .intro").attr("href", "/activity/smart/index.html"), $(".smartTender .info a").eq(0).attr("href", "/activity/smart/index.html").html("查 看")) : $(".smartTender .intro,.smartTender .info a").attr("href", "/smartbid/bidplan.html?id=" + e.id))
}, rxdai.forum = {}, rxdai.forum.getData = function () {
    var i = {method: "goodList"};
    rxdai.loadData(____bbsApi____, i, function (i) {
        rxdai.forum.getDataOk(i)
    }, function (i) {
        rxdai.doFailed(i)
    })
}, rxdai.forum.getDataOk = function (i) {
    var e = i.result, t = "";
    if (e) {
        $(".news > .fr .picText img").attr({src: e[0].img_path}), $(".news > .fr .picText img").parent().attr({href: "http://bbs.touna.cn/list-" + e[0].fid + "/detail-" + e[0].id + ".html"}), $(".news > .fr .picText h4 a").attr({href: "http://bbs.touna.cn/list-" + e[0].fid + "/detail-" + e[0].id + ".html"}), $(".news > .fr .picText h4 a").html(e[0].title), $(".news > .fr .picText p").html(e[0].content), $(".news > .fr .picText > a.fr").html(e[0].username);
        for (var o = 1; o < e.length; o++) {
            var r = e[o], n = r.fid, a = r.id, s = r.title, d = r.username;
            t += '<li><a target="_blank" href="http://bbs.touna.cn/list-' + n + "/detail-" + a + '.html"><em>' + s + "</em><i>" + d + "</i></a></li>"
        }
        $(".bbs-content").append(t)
    }
}, rxdai.userMoney = {}, rxdai.userMoney.getUserMoney = function () {
    var i = {method: "loadProfitInfo"};
    rxdai.loadData(____account____, i, function (i) {
        rxdai.userMoney.getUserMoneyOk(i)
    }), function (i) {
        rxdai.doFailed(i)
    }
}, rxdai.userMoney.getUserMoneyOk = function (i) {
    var e = i.result, t = e.account.use_money, o = e.profit.yes_jin_money;
    $("#logged-in-user b").eq(0).html("￥" + t), $("#logged-in-user b").eq(1).html("￥" + o)
}, $(function () {
    rxdai.isLogin(function (i) {
        rxdai.changStatus(i), i.result && rxdai.userMoney.getUserMoney()
    }), showLoginDiv(), rxdai.borrow.info(), rxdai.article.getIndexArticleInfo(), rxdai.plan.before(), rxdai.forum.getData(), focusSlide(), ivtProdListSlide(), partnershipSlide(), videoSlide(), $(".partnerLinks .more").toggle(function () {
        $(".partnerLinks").animate({height: 78}), $(this).html("收起 &and;")
    }, function () {
        $(".partnerLinks").animate({height: 26}), $(this).html("更多 &or;")
    }), $(window).scroll(function () {
        $(window).scrollTop() > 100 ? $(".sideToolBar .returnTop").css("display", "block") : $(".sideToolBar .returnTop").css("display", "none")
    }), $(".sideToolBar .returnTop").click(function () {
        $("html,body").animate({scrollTop: 0})
    }), $(".videoPop i").live("click", function () {
        $(".video,.videoPop").fadeOut(150)
    }), $(".ivtProdList li").click(function () {
        var i = $(this).attr("link");
        i && (window.location.href = ____domain____ + $(this).attr("link"))
    })
});