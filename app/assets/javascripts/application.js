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
//= require bootstrap

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
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>展会信息</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/news/ranges'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>展品范围</span>" +
                    "</div>" +
                    "</div>" +
                    " </a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    " <a href='/news/services'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>生活指南</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/news/previous'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>历届回顾</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    " <a href='/news/corp_partners'>" +
                    "<div class='col-md-12 card'>" +
                    " <div class='bg-left bg-05 col-md-1'>" +
                    " </div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>合作伙伴</span>" +
                    "</div>" +
                    "</div>" +
                    " </a>" +
                    "</div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/news/about_us'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-06 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>联系我们</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "partners") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='/partners/placeview'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>展区划分</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/partners/step'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>参展流程</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/partners/visitors'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>展商查询</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/partners/advert'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>广告合作</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/partners/download'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-05 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>资料下载</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/partners/apply'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-06 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>申请参展</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "audience") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='/audience/audienceinfo'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>观众预登记</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/audience/vipclub'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>VIP买家俱乐部</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/audience/exclusive'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>晶品荟（贵宾专享）</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/news/services'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>生活指南</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "media") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='/media/cwcf-news'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>CWCF新闻发布</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/media/media-news'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>媒体新闻报道</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/media/place-photo'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>展会图片集锦</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/media/cooperation'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>合作媒体</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/media/reporter-reg'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-05 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>记者证申请</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/media/material-down'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-06 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>素材下载</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>";
            } else if (url_first_page === "event") {
                append_str = "<div class='card-wrapper'>" +
                    "<a href='/event/activity-schedule'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-01 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>展会日程</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/event/cwcf-fm'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-02 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>高峰论坛</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/event/news-meeting'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-03 col-md-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
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
    };

    var url_else_page = search_url.split('/')[2];
    if (url_else_page) {
      setTimeout(function(){
        $(".card").animate({left:'-40px'},"slow",function(){
          $(this).hover(function(){
            $(".card").animate({left:'-190px'},10);
          },function(){
            $(".card").animate({left:'-40px'},10);
          });
        });
      },800);
    }


    //hotel page
    // $('.hotel-desc').find('img').remove();//清除列表表述中的图片
    $hotel = $('.hotel-desc');
    $hotel.each(function(){
      var hotel_desc = $(this).text();
      var hotel_id = $(this).attr('data-index');
      if (hotel_desc.length > 110){
         $(this).html(hotel_desc.substr(0, 110) + "..." + "<a href='/news/services/hotels/"+hotel_id+"'>详情>></a>");
       }else {
         $(this).html(hotel_desc + "<a href='/news/services/hotels/"+hotel_id+"'>详情>></a>");
       };
    });
});
