(function ($) {
    "use strict";
    $(document).ready(function(){
        $('p').linkify();
    });
    $('iframe').on('load', function(){
        $(this).height($(this).contents().outerHeight());
    });
}(jQuery));
