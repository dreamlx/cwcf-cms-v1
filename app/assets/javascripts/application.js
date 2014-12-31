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
//= require bxslider
//= require ckeditor/init
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
                    "<div class='bg-left bg-01 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-02 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-03 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-04 col-md-1 col-xs-1'>" +
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
                    " <div class='bg-left bg-05 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-06 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-01 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-02 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-03 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-04 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-05 col-md-1 col-xs-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>资料下载</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/partners/apply' id='ex_apply_href'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-06 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-01 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-02 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-03 col-md-1 col-xs-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>晶品荟（贵宾专享）</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/audience/services'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-04 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-01 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-02 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-03 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-04 col-md-1 col-xs-1'>" +
                    "</div>" +
                    "<div class='bg col-md-10'>" +
                    "<span class='card-content'>合作媒体</span>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    " </div>" +
                    "<div class='card-wrapper'>" +
                    "<a href='/media/reporter-reg' id='ju_apply_href'>" +
                    "<div class='col-md-12 card'>" +
                    "<div class='bg-left bg-05 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-06 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-01 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-02 col-md-1 col-xs-1'>" +
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
                    "<div class='bg-left bg-03 col-md-1 col-xs-1'>" +
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
        $(".card-holder").animate({"margin-left":'-30px'},"slow",function(){
          $(this).hover(function(){
            $(this).animate({"margin-left":'-190px'},"fast");
          },function(){
            $(this).animate({"margin-left":'-30px'},"fast");
          });
        });
      },1000);
    }

    //用户是否登录
    if ($("#current_user").length == 0){

      if ($("#ex_apply_href").length > 0) {
        $("#ex_apply_href")[0].href = "javascript:;";
        $("#ex_apply_href").click(function() {
          $(".top-login-btn").trigger("click");
        })
      }
      if ($("#ju_apply_href").length > 0) {
        $("#ju_apply_href")[0].href = "javascript:;";
        $("#ju_apply_href").click(function() {
          $(".top-login-btn").trigger("click");
        })
      }
    }


    //hotel page
    // $('.hotel-desc').find('img').remove();//清除列表表述中的图片
    $hotel = $('.hotel-desc');
    $hotel.each(function(){
      var hotel_desc = $(this).text();
      var hotel_id = $(this).attr('data-index');
      if (hotel_desc.length > 110){
         $(this).html(hotel_desc.substr(0, 110) + "..." + "<a href='/" + url_first_page + "/services/hotels/"+hotel_id+"'>详情>></a>");
       }else {
         $(this).html(hotel_desc + "<a href='/" + url_first_page + "/services/hotels/"+hotel_id+"'>详情>></a>");
       };
    });

    if ($("a.hotel_url").length > 0) {
      $("a.hotel_url").each(function() {
        var hotel_url = this.href.split('/');
        var hotel_url_left = hotel_url.splice(0,4);
        this.href = "/" + url_first_page + "/" + hotel_url.join('/');
      });

    }

    //首页轮播图片
    var home_img_list_html = "";
    $(".image_source").find("img").each(function(index) {
      var avtive_or = "";
      if (index == 0){
        avtive_or = "active";
      }
      home_img_list_html += "<div class='"+ avtive_or + " item'><div class='carousel-inner-item carousel-inner-item-"+ (index+1).toString() +"'></div></div>";
    });
    $("#carousel-banners .carousel-inner").html(home_img_list_html);
    $(".image_source").find("img").each(function(index) {
      var bg_cs = "url(" + this.src + ") no-repeat center";
      $(".carousel-inner-item-" + (index+1).toString()).css({
        "background":bg_cs,
        "background-size":"cover"
      });
    });


    //调整首页图片大小

    function adjust(){
       var winh  = jQuery(window).height();
       if ($("#carousel-banners").length) {
         var wintop = $("#carousel-banners").offset().top;
         $("#carousel-banners").css("height", winh-wintop-30);
         $(".login_form").css("top", "106px");
       }else{
         $(".login_form").css("top", "114px");
       }
       if (menu_find !== "" && !url_else_page) {
         $(".login_form").css("height", $(window).height()-117);
       }else{
         $(".login_form").css("height", $("body").height()-110);
       }

       if($(".carousel-inner-item").length > 0) {
         $(".carousel-inner-item").css("height", $(window).height()-117);
       }
    }
    window.onresize = adjust;
    adjust();

    $('#carousel-banners').on('slide.bs.carousel', function(e) {
      // e.preventDefault();
      if (e.direction === "left") {
        var n_index = $(e.relatedTarget).index();
        if (n_index === 0) {
          n_index = $(e.relatedTarget).parent().children().length;
        }
        var pre_tar = $(e.relatedTarget).parent().children()[n_index - 1];
        $(pre_tar).fadeOut();
      }else {
        var n_index = $(e.relatedTarget).index();
        if (n_index === 4) {
          n_index = -1;
        }
        var pre_tar = $(e.relatedTarget).parent().children()[n_index + 1];
        $(pre_tar).fadeOut();
      }
      $(e.relatedTarget).fadeIn();
    })

    $('#carousel-banners').on('slid.bs.carousel', function(e) {
      // e.preventDefault()
      // $(e.relatedTarget).fadeIn();//
    })

    //底部菜单样式
    $(".footer-menu.row").css("display", "-moz-box");

    //
    if ($(".previous-item").length > 0) {
      $(".previous-item").css("display", "-moz-stack");
    }

    if ($(".photo-list").length > 0 && $(".photo-list").find("img").length > 0){
      var img_list_html = "<div class='photo-view'>"+ $(".photo-list").find("img")[0].outerHTML +"</div><ul class='bxslider'>";
      $(".photo-list").find("img").each(function() {
        img_list_html += "<li>" + this.outerHTML + "</li>";
      })
      img_list_html += "</ul>";
      $(".photo-list").html(img_list_html);
      $('.bxslider').bxSlider({
        minSlides: 3,
        maxSlides: 4,
        moveSlides: 1,
        slideWidth: 170,
        slideMargin: 10
      });
      $('.bxslider img').click(function() {
        $(".photo-view").html(this.outerHTML);
      });
    }

    if ($(".count-input input").length > 0){
      var $input = $(".count-input input");
      var time_div = $input.parent().parent().parent();
      var time_box = time_div.parent();
      var deadline = $input.val();

      function timeElapse(date){
        var current = Date();
        var seconds = (Date.parse(date) - Date.parse(current)) / 1000;
        var days = Math.floor(seconds / (3600 * 24));
        seconds = seconds % (3600 * 24);
        var hours = Math.floor(seconds / 3600);
        if (hours < 10) {
          hours = "0" + hours;
        }
        seconds = seconds % 3600;
        var minutes = Math.floor(seconds / 60);
        if (minutes < 10) {
          minutes = "0" + minutes;
        }
        seconds = seconds % 60;
        if (seconds < 10) {
          seconds = "0" + seconds;
        }
        var result = "<span class=\"digit\">" + days + "</span> <span>天</span> <span class=\"digit\">" + hours + "</span> <span>小时</span> <span class=\"digit\">" + minutes + "</span> <span>分</span> <span class=\"digit\">" + seconds + "</span> <span>秒</span>";
        time_div.html(result);
      }
      time_box.css("display", "inherit");
      timeElapse(deadline);
      setInterval(function () {
        timeElapse(deadline);
      }, 500);
    }

    if ($("#exhibitors").length > 0) {
      $("#exhibitors a").click(function() {
        $("#exhibitorModal").css("display", "inherit");
        if (this.children[0].src != window.location.href) {
          $(".ex-logo").html(this.children[0].outerHTML);
        }else {
          $(".ex-logo").html("<div class='ex-logo-title'>" + this.dataset.title + "</div>");
        }

        $(".ex-title").text(this.dataset.title);
        $(".ex-desc").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + this.dataset.description);
        $(".ex-pic").html(this.dataset.images);
        if ($(".ex-pic").find("img").length > 0) {
          var ex_pic_list_html = "<ul class='bxslider'>";
          $(".ex-pic").find("img").each(function() {
            ex_pic_list_html += "<li>" + this.outerHTML + "</li>";
          })
          ex_pic_list_html += "</ul>";
          $(".ex-pic").html(ex_pic_list_html);
          $('.bxslider').bxSlider({
            minSlides: 3,
            maxSlides: 4,
            moveSlides: 1,
            slideWidth: 170,
            slideMargin: 16
          });
        }
      });

      $("#exhibitorModal .close").click(function() {
        $("#exhibitorModal").css("display", "none");
      });
    }

    //站点标题栏查询
    $('.input-group-btn').click(function() {
      window.location.href= "/partners/visitors?place_num=&place_name=" + $('.input-group input').val();
    });

    //注册
    $(".close_btn").click(function(){
      $(".login_form").fadeOut();
      $("#card-holder").fadeIn();
    });
    $(".top-login-btn").click(function(){
      $("#login_form1").fadeIn();
      $("#login_form2").fadeOut();
      $("#card-holder").fadeOut();
    })
    $(".top-sign-btn").click(function(){
      $("#login_form2").fadeIn();
      $("#login_form1").fadeOut();
      $("#card-holder").fadeOut();
    })


    //end
    $("#body").css("display", "inherit");
    //百度地图
    if ($("#map-container").length > 0) {
      var map = new BMap.Map("map-container");
      var point = new BMap.Point(114.066518,22.536379);
      var marker = new BMap.Marker(point);        // 创建标注
      map.addOverlay(marker);// 将标注添加到地图中
      map.centerAndZoom(point, 15);
      map.addControl(new BMap.NavigationControl());
      map.addControl(new BMap.ScaleControl());
      map.addControl(new BMap.OverviewMapControl());
      map.addControl(new BMap.MapTypeControl());
      map.setCurrentCity("深圳"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用
      map.enableScrollWheelZoom();    // 启动鼠标滚轮操作
      map.enableKeyboard();
      map.enableContinuousZoom();    // 开启连续缩放效果
      map.enableInertialDragging();　// 开启惯性拖拽效果
    }


    $("ul.ico_links li.i2").hover(function() {
      $(".sina-weibo").fadeIn();
    }, function() {
      $(".sina-weibo").fadeOut();
    });
    $("ul.ico_links li.i3").hover(function() {
      $(".qrcode").fadeIn();
    }, function() {
      $(".qrcode").fadeOut();
    });
    $("ul.ico_links li.i4").hover(function() {
      $(".tele-share").fadeIn();
    }, function() {
      $(".tele-share").fadeOut();
    });

    if ($("#blanks .update_btn").length > 0) {
      $("#blanks .update_btn").click(function() {
        var _this = this;
        var postdata = {
          "blank":{
            "status": $("#select_" + _this.dataset.id)[0].value
          }
        };
        $.ajax({
          url: "blanks/" + _this.dataset.id,
          type: 'put',
          dataType: 'json',
          data: JSON.stringify(postdata),
          headers: {
            'X-CSRF-Token': $("#authenticity_token").val()
          },
          processData: false,
          contentType: "application/json; charset=UTF-8",
          success: function(data) {
            var status_str = "";
            if (data.blank.status == "applied") {
              status_str = "申请中";
            } else if (data.blank.status == "accepted") {
              status_str = "已通过";
            } else {
              status_str = "已拒绝";
            }
            $("#status_" + _this.dataset.id).text(status_str);
          },
          error: function(errors){
            alert("系统繁忙，请稍后再试");
          }
        });
      })
    }


    //后台展位修改
    if ($(".product_item_edit").length > 0) {
      var slct_x = "";
      var slct_y = "";
      var slct_item = null;
      $(".product_item_edit").click(function() {
        slct_y = this.dataset.coor.split("x")[0];
        slct_x = this.dataset.coor.split("x")[1];
        slct_item = this;
        $("#storeModal").show();
      });
      $(".modal .close").click(function() {
        $(".modal").hide();
      });

      $(".product_select").click(function() {
        var slct_pro_id = $("input[name='product']:checked").val();
        var slct_pro_no = $("input[name='product']:checked")[0].dataset.no;
        if (slct_pro_id == undefined){
          slct_pro_id = "zero";
        }
        var postdata = {
          "product_id": slct_pro_id,
          "x_c": slct_x,
          "y_c": slct_y
        };
        var post_url = "/admin/stores/" + $("#cur_store_id")[0].dataset.id; //TODO
        var post_type = 'put'; //TODO
        $.ajax({
          url: post_url,
          type: post_type,
          dataType: 'json',
          data: JSON.stringify(postdata),
          headers: {
            'X-CSRF-Token': $("#authenticity_token").val()
          },
          processData: false,
          contentType: "application/json; charset=UTF-8",
          success: function() {
            console.log("succ");//TODO
            $(slct_item).html(slct_pro_no);
            if (slct_pro_no == ""){
              $(slct_item).removeClass("active");
            } else {
              $(slct_item).addClass("active");
            }
            $(".modal").hide();
          },
          error: function() {
            alert("系统繁忙，请稍后再试");
          }
        });
      });
    }

    $(".order_btn .order").click(function() {
      if ($(".ordered_line_items").children().length == 0) {
        alert("您还没有选展位");
        return;
      }

      $.ajax({
        url: "/orders",
        type: "post",
        dataType: 'json',
        data: null,
        headers: {
          'X-CSRF-Token': $("#authenticity_token").val()
        },
        processData: false,
        contentType: "application/json; charset=UTF-8",
        success: function() {
          alert("已成功提交订单，请等待后台审核和邮件通知");
          var no_content_str = "还没有选座，请点选下面座位，点击两次可取消";
          $(".ordered_line_items").html(no_content_str);
          $(".product_item.active").removeClass("active").addClass("ordered");
        },
        error: function() {
          alert("系统繁忙，请稍后再试");
        }
      });
    });

    $(".order_btn .clear").click(function() {
      if ($(".ordered_line_items").children().length == 0) {
        return;
      }
      $.ajax({
        url: "/carts/" + $("#ordered_line_items")[0].dataset.id,
        type: "delete",
        dataType: 'json',
        data: null,
        headers: {
          'X-CSRF-Token': $("#authenticity_token").val()
        },
        processData: false,
        contentType: "application/json; charset=UTF-8",
        success: function() {
          var no_content_str = "还没有选座，请点选下面座位，点击两次可取消";
          $(".ordered_line_items").html(no_content_str);
          $(".product_item.active").removeClass("active");
        },
        error: function() {
          alert("系统繁忙，请稍后再试");
        }
      });
    });

    //订单管理
    $(".order_save").click(function() {
      var _this = this;
      var postdata = {
        "order":{
          "status": $("#select_" + _this.dataset.id)[0].value
        }
      };
      $.ajax({
        url: "orders/" + _this.dataset.id,
        type: 'put',
        dataType: 'json',
        data: JSON.stringify(postdata),
        headers: {
          'X-CSRF-Token': $("#authenticity_token").val()
        },
        processData: false,
        contentType: "application/json; charset=UTF-8",
        success: function(data) {
          var status_str = "";
          if (data.status == "applied") {
            status_str = "申请中";
          } else if (data.status == "accepted") {
            status_str = "已通过";
          } else {
            status_str = "已拒绝";
          }
          $("#status_" + _this.dataset.id).text(status_str);
        },
        error: function(errors){
          alert("系统繁忙，请稍后再试");
        }
      });
    });

    //VIP申请管理
    if ($(".vip_update_btn").length > 0) {
      $(".vip_update_btn").click(function() {
        var _this = this;
        var postdata = {
          "viper":{
            "status": $("#select_" + _this.dataset.id)[0].value
          }
        };
        $.ajax({
          url: "vipers/" + _this.dataset.id,
          type: 'put',
          dataType: 'json',
          data: JSON.stringify(postdata),
          headers: {
            'X-CSRF-Token': $("#authenticity_token").val()
          },
          processData: false,
          contentType: "application/json; charset=UTF-8",
          success: function(data) {
            var status_str = "";
            if (data.viper.status == "applied") {
              status_str = "申请中";
            } else if (data.viper.status == "accepted") {
              status_str = "已通过";
            } else {
              status_str = "已拒绝";
            }
            $("#status_" + _this.dataset.id).text(status_str);
          },
          error: function(errors){
            alert("系统繁忙，请稍后再试");
          }
        });
      })
    }

    //联系我们
    $(".contact_box ul").each(function(){
      $(this).addClass("contact_list");
      $($(this).children()[0]).addClass("photo");
      var cont_name = $($(this).children()[0]).text();
      var cont_img = $($(this).children()[0]).children()[0].outerHTML;
      var cont_html = "<span class='txt'>" + cont_name + "</span><span class='bg'></span>" + cont_img;
      $($(this).children()[0]).html(cont_html);
      $($(this).children()[1]).addClass("info");
      $($(this).children()[2]).addClass("qr");
    })
});
