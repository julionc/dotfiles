$(function() {

  $("<link/>", {
    rel: "stylesheet",
    type: "text/css",
    href: "http://fonts.googleapis.com/css?family=Source+Sans+Pro"
  }).appendTo("head");

  var $body = $('body'),
      $title = $body.find('.title');
      $comments = $body.find('.comment');
  var $table = $("table:first");

  var $font_family;
  //$font_family = '"PT Serif","Georgia","Helvetica Neue",Arial,sans-serif';
  $font_family = "'Source Sans Pro', sans-serif";

  $body.css({
    'font-family': $font_family,
    'background-color': '#fff',
    'color': '#222',
    //'font-size': '14px'
  });

  $table.css({
    'font-family': $font_family,
    'background-color': '#fff',
    '-webkit-box-shadow': '0 0 2px 0 rgba(0,0,0,0.5)',
    'box-shadow': '0 0 2px 0 rgba(0,0,0,0.5)',
    'border-bottom-width': '0',
  });

  $title.css({
    'font-family': $font_family,
    'color': '#191919',
    'font-weight': '500',
    'font-size': '1.3em',
    'line-height': '25px'
  });

  $comments.css({
    'font-family': $font_family,
    'color': '#444',
    //'font-weight': '300',
    'font-size': '1.2em',
    'line-height': '22px'
  });

});