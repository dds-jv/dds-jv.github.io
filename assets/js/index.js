/**
 * Main JS file for Casper behaviours
 */

/*globals jQuery, document */
(function ($) {
    "use strict";

    $(document).ready(function(){
        $(".post-content").fitVids();

        // Creates Captions from Alt tags
        $(".post-content img").each(function() {
            // Let's put a caption if there is one
            if($(this).attr("alt") && !$(this).hasClass("emoji"))
              $(this).wrap('<figure class="image"></figure>')
              .after('<figcaption>'+$(this).attr("alt")+'</figcaption>');
        });

        $(window).scroll(function(){
            if(($(window).scrollTop() / $(window).height()) > 1) {
              $('.logo-readium').show();
            } else {
              $('.logo-readium').hide();
            }
        });

        $(".viewmore.head").click(function() {
          $('html, body').animate({
              scrollTop: $(window).height()
          }, 400);
        });

    });

}(jQuery));
