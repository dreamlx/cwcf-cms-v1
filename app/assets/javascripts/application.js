// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .
//= require bootstrap-sprockets

$(function () {
    $(document).foundation();
    var search_url = location.pathname;
    var url_first_page = search_url.split('/')[1];
    var menu_find = "";
    $('#menu-bottom').children().each(function () {
        var this_id = $(this).attr("id");
        if ('menu-' + url_first_page === this_id) {
            menu_find = this_id;
            var append_str = "";
            if (url_first_page === "news") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='/news/infomation'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>展会信息</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>展品范围</span>" +
                    "</div>" +
                    "</div>" +
                    " </a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    " <a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>生活指南</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>历届回顾</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    " <a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    " <div class='bg-left bg-05 col-md-1'>" +
                    " </div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>合作伙伴</span>" +
                    "</div>" +
                    "</div>" +
                    " </a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-06 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>联系我们</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "partners") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='/news/infomation'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>展区划分</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>参展流程</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>展商查询</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>广告合作</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-05 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>资料下载</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-06 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>申请参展</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "audience") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>观众预登记</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>VIP买家俱乐部</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>晶品荟（贵宾专享）</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>生活指南</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "media") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>CWCF新闻发布</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>媒体新闻报道</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>展会图片集锦</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>合作媒体</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-05 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>记者证申请</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-06 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>素材下载</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "event") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>展会日程</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>高峰论坛</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='#'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg'>" +
                    "<span class='card-content'>新闻发布会</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            };

            $("#card-holder").html(append_str);
        }
    });
    if (url_first_page === "") {
        $('#menu-home').tab('show');
    } else if (menu_find !== "") {
        $('#menu-' + url_first_page).tab('show');
    } else {
        //没有当前页
    }
});
