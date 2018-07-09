$(document).ready(function () {
    //延迟0.1秒执行初始化 等待浏览器窗口初始完成
    window.setTimeout(function () {
        $("body").show();
        init();
    }, 50);
});
function newlist() {
    // 列表的不同内容显示
    $(".headline-item").each(function () {
        if (($(this).children(".indexImg").children("img").attr("src"))) {
            $(this).css("padding", "0");
            $(this).children(".words").css("padding-top", "22px");
            $(this).find(".attention").css("padding-right", "54px");
            $(this).children(".content").css("display", "none");
        };
    })
};
function guanzhu() {
    // 关注 取消关注
    var onOff = true;
    $(".attentionText").click(function () {
        if ($(this).onOff) {
            $(this).text("关注");
            console.log(onOff);
            $(this).css("color", "#e64620");
            $(this).onOff = false;
        } else {
            $(this).text("已关注");
            $(this).css("color", "#999");
            $(this).onOff = true;
        }
    });
};
function nolike() {
    // 不感兴趣
    $(".delete").hover(function () {
        $(this).siblings(".nolike").css({
            "opacity": "1.0",
        });
        $(this).css("color", "#fff");
        $(this).parent().addClass("afterclose");
    }, function () {
        $(this).css("color", "#696969");
        $(this).siblings(".nolike").css("opacticy", "0");
        $(this).parent().removeClass("afterclose");
    });
    $(".delete").click(function () {
        $(this).parents(".headline-item").css("display", "none")
    })
};

var totalheight = 0;
function loaddata() {
    totalheight = parseFloat($(window).height()) + parseFloat($(window).scrollTop());
    if ($(document).height() -20 <= totalheight) {
        //加载数据
        //$("#loaded").append("这是加载的数据"+ "<br/>");
        $.getJSON("../data/data-list-load.json", function (data) {
            $.each(data, function (index, list) {
                $("#loaded").append(
                    "<li class='headline-item'><div class='fl indexImg'>"
                    + "<img src="  + list["indeximg"] +" >"
                    + "</div>"
                    + "<div class='words'>"              
                    + "<h3>"+ list["title"] + "<span><img src="  + list["vip"] +" class='vip'></span></h3>"
                    + "<h5 class='author'>"
                    + "<div class='fl'>"
                    + "<span class='anthorName'>"
                    + "<img src="  + list["img"] +" alt=''>"
                    + list["name"] 
                    + " </span>"
                    + "<span>" + list["date"] +"</span>"
                    + "</div>"
                    + "<div class='fr attention'>"
                    + "<span class ='attentionText'>关注</span>"
                    + "<span  class ='beforeclose'>"
                    + " <i class='fa fa-times delete' aria-hidden='true'></i> "
                    + "<i class='nolike'>不感兴趣</i>"
                    + " </span>"
                    + "</div>"
                    + "<div class='clearfix'></div>"
                    + " </h5>"
                    + " </div>"
                    + "<p class='content'>" + list["content"] +"</p>"           
                    + "</li>"
                );

            })
        });
    }
}
function scrolled() {
    $(window).scroll(function () {
        loaddata();
    })
}

function init() {
    guanzhu();
    nolike();
    newlist();
    // scrolled();
}
