
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
    var length = $("#isps select option").length-1;
    if ($("#isps select option:last").is(":selected")){
      $("#otherisp").addClass("show");
    }else{
      $("#otherisp").removeClass("show");
    }
    $("#isps select").change(function(){
      if ($("#isps select option:last").is(":selected")){
        $("#otherisp").addClass("show");
      }else{
        $("#otherisp").removeClass("show");
      }
    });


    // Form interactivity for #otherreferrer
    var length = $("#referrers select option").length-1;
    if ($("#isps select option:last").is(":selected")){
      $("#otherreferrer").addClass("show");
    }else{
      $("#otherreferrer").removeClass("show");
    }
    $("#referrers select").change(function(){
      if ($("#referrers select option:last").is(":selected")){
        $("#otherreferrer").addClass("show");
      }else{
        $("#otherreferrer").removeClass("show");
      }
    });

    //  wants internet

    $("#internet_want_internet").change(function(){
      console.log($(this).val());
      if ($(this).is(':checked')){
        $("#internet_number_computers").addClass("show");
      }else{
        $("#internet_number_computers").removeClass("show");
      }
    });

    if ($("#internet_want_internet").is(':checked')){
      console.log('checkededed');
      $("#internet_number_computers").addClass("show");
    }

    //  wants television

    $("#internet_want_television").change(function(){
      console.log($(this).val());
      if ($(this).is(':checked')){
        $("#internet_number_televisions").addClass("show");
      }else{
        $("#internet_number_televisions").removeClass("show");
      }
    });

    if ($("#internet_want_television").is(':checked')){
      console.log('checkededed');
      $("#internet_number_televisions").addClass("show");
    }

    //  wants phones

    $("#internet_want_phone").change(function(){
      console.log($(this).val());
      if ($(this).is(':checked')){
        $("#internet_number_phones").addClass("show");
      }else{
        $("#internet_number_phones").removeClass("show");
      }
    });

    if ($("#internet_want_phone").is(':checked')){
      console.log('checkededed');
      $("#internet_number_phones").addClass("show");
    }

    // end  Form interactivity for #otherisp

  });
}());


