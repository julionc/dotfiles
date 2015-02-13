// ==UserScript==
// @name         Blackhatworld custom theme
// @namespace    http://www.blackhatworld.com/
// @version      0.1
// @description  Make your custom blackhatworld theme
// @include      http://*blackhatworld.com/*
// @require      https://code.jquery.com/jquery-1.11.2.min.js
// @run-at       document-end
// @grant        none
// ==/UserScript==

jQuery.noConflict();
(function( $ ) {
    $(function() {
        
        function addGoogleFont(FontName) {
            $("head").append("<link href='https://fonts.googleapis.com/css?family=" + FontName + "' rel='stylesheet' type='text/css'>");
        }
        
        addGoogleFont("Droid+Sans:400,700");
        $("*").css({
            "color": "#666",
            "background": "#f8f8f8",
            "font-family": "\"Droid Sans\", sans-serif"
        });
        
        $(".logo-image").html("<h1>BlackhatWorld Forums</h1>");
        $(".logo-image h1").css({
            "font-size": "2.5em",
            "padding": "30px 0 20px"
        });
        
        $("h4.threadtitle a").css({
            "font-size": "1.1em",
            "letter-spacing": "0.6px",
        });
        
        $("a").css({
            "text-decoration": "none",
            "color": "#339"
        });
        
        //$(".inlineimg, .forumicon").css({"display": "none"});
        
        $('.content > div[id^="post_thanks_bit_"]').hide();
    });
})(jQuery);
