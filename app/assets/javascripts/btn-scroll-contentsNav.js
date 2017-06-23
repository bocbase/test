$(document).on('turbolinks:load', function() {
   var BtnContentsTop = $('#btn-scroll-contentsNav');
    
    //スクロールしてトップへ移動
    BtnContentsTop.click(function () {
        $('body,html').animate({
            scrollTop: 570
        }, 500);
        return false;
    });
});