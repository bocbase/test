$(function(){
        function pagelink(heightnum){
            var headerHight = heightnum; 
            $("a.anchorlink").click(function(){
                            var href= $(this).attr("href");
                            var target = $(href == "#" || href == "" ? "body" : href);
                            var position = target.offset().top-headerHight; 
                            $("html, body").animate({scrollTop:position}, 500, "swing");
                            //return false;
            });
            /* outpagelink */     
            var url = $(location).attr("href");
            if (url.indexOf("?id=") == -1) {
 
            }else{
                            var url_sp = url.split("?id=");
                            var hash     = "#" + url_sp[url_sp.length - 1];
                            var target2        = $(hash);
                            var position2        = target2.offset().top-headerHight;
                            $("html, body").animate({scrollTop:position2}, 500, "swing");
            }
            }
            //条件が変わるようならココへ。    
            //          if($("body").hasClass("spn")){
            //              pagelink(50);
            //          }else{
            //              pagelink(72);
            //          }
            pagelink(-540);//ヘッダーの高さを入れる
  });