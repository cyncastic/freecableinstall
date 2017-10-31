
(function() {
  "use strict";
  $(document).on('turbolinks:load', function() {


    // Disable default behavior if it aint valid
    var form = document.getElementById("needs-validation");
    if(form){
      form.addEventListener("submit", function(event) {
        if (form.checkValidity() == false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add("was-validated");
      }, false);
    }


    // Form interactivity for #otherisp

    $("#isps select").change(function(){
      if ($(this).val() == "999"){
        $("#otherisp").addClass("show");
      }else{
        $("#otherisp").removeClass("show");
      }
    });

    $("#internet_want_internet").change(function(){
      console.log($(this).val());
      if ($(this).is(':checked')){
        $("#number_computers").addClass("show");
      }else{
        $("#number_computers").removeClass("show");
      }
    });

    $("#internet_want_television").change(function(){
      console.log($(this).val());
      if ($(this).is(':checked')){
        $("#number_televisions").addClass("show");
      }else{
        $("#number_televisions").removeClass("show");
      }
    });

    $("#internet_want_phone").change(function(){
      console.log($(this).val());
      if ($(this).is(':checked')){
        $("#number_phones").addClass("show");
      }else{
        $("#number_phones").removeClass("show");
      }
    });


  });
}());


