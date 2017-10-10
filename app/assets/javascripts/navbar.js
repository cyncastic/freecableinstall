
var prevscroll = $(document).scrollTop();

$(window).scroll(function() {

  console.log(prevscroll + " / " + $(document).scrollTop());

  if ($(document).scrollTop() > prevscroll) {
    $('nav').addClass('shrink');

  } else {
    $('nav').removeClass('shrink');
  }

  prevscroll = $(document).scrollTop();

});
