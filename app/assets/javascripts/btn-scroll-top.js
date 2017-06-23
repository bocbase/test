$(document).on('turbolinks:load', function() {
    var BtnScrollTop = $('#btn-scroll-top');

    $(window).scroll(function (){
      var scroll = $(window).scrollTop();
        if (scroll > 80){
            $(BtnScrollTop).each(function(){ ;
                $(this).animate({
                 "opacity":"1",
                }, 0);
            });
        }
        else{
            $(BtnScrollTop).each(function(){ ;
                $(this).animate({
                 "opacity":"0",
                }, 0);
            });
        }
    });

    //スクロールしてトップへ移動
    BtnScrollTop.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});