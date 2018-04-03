(function ($) {
    "use strict";
    $(document).ready(function(){
        $(".post-article-image").click(function() {
            if ($(".post-viewmore").is(":visible")) {
                $('html, body').animate({ scrollTop: $(window).height() }, 250);
            }
        });
    });
}(jQuery));
