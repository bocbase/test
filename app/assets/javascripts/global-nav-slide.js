(function($){
    $(window).scroll(function (){
      var scroll = $(window).scrollTop();
        if (scroll > 80){
            $('#small-header').each(function(){ ;
                $(this).animate({
                 "top":"0px",
                }, 0);
            });
            $('#small-header-bg').each(function(){ ;
                $(this).animate({
                 "top":"0px",
                }, 0);
            });
        }
        else{
            $('#small-header').each(function(){ ;
                $(this).animate({
                 "top":"-50px",
                }, 0);
            });
            $('#small-header-bg').each(function(){ ;
                $(this).animate({
                 "top":"-50px",
                }, 0);
            });
        }
    });
})(jQuery);
