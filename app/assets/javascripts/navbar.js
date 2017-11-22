var prevscroll = $(document).scrollTop();

$(window).scroll(function() {

  // console.log(    prevscroll + " / " + $(document).scrollTop()    );

  if (  $(document).scrollTop() > prevscroll && prevscroll > 100 ) {
    $('nav').addClass('shrink');

  } else if (  $(document).scrollTop() < prevscroll && prevscroll < (document.body.scrollHeight - window.innerHeight - 100) ) {
    $('nav').removeClass('shrink');
  }

  prevscroll = $(document).scrollTop();

});
