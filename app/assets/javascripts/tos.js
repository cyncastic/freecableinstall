(function() {
  "use strict";

  $(document).on('turbolinks:load', function() {

    $('#tosmodalbtn').on('click',function(){
      var dataURL = $(this).attr('data-href');
        $('.modal-body').load(dataURL,function(){
          $('#myModal').modal({show:true});
        });
    });

  });
}());