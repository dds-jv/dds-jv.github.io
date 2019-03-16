(function ($) {
    "use strict";
    $(document).ready(function(){
        $('p').linkify();
    });
    $('iframe').load(function(){
        $(this).height($(this).contents().outerHeight());
    });
}(jQuery));
