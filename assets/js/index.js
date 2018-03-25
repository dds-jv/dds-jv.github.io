(function ($) {
    "use strict";
    $(document).ready(function(){
        $(".post-content").fitVids();
        $(".post-content img").each(function() {
            if ($(this).attr("alt") && !$(this).hasClass("emoji"))
                $(this).wrap('<figure class="image"></figure>')
                .after('<figcaption>'+$(this).attr("alt")+'</figcaption>');
        });
        $(window).scroll(function(){
            if(($(window).scrollTop() / $(window).height()) > 1)
                $('.logo-readium').show();
            else 
                $('.logo-readium').hide();
        });
        $(".viewmore.head").click(function() {
          $('html, body').animate({ scrollTop: $(window).height() }, 400);
        });
        $(window).on('scroll', function() {
            var top = $(window).scrollTop();
            if (top < 0 || top > 1500) return;
            $('.post-image-image, .teaserimage-image').css('transform', 'translate3d(0px, '+top/3+'px, 0px)').css('opacity', 1-Math.max(top/700, 0));
        });
        $(window).trigger('scroll');
        $('.post-content').css('padding-top', $('.article-image').height() + 'px');
    });
}(jQuery));