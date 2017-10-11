
(function() {
  "use strict";
  $(document).on('turbolinks:load', function() {


    // Disable default behavior if it aint valid
    var form = document.getElementById("needs-validation");
    if(form){
      console.log('function called');
      form.addEventListener("submit", function(event) {
        if (form.checkValidity() == false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add("was-validated");
      }, false);
    }


    // Form interactivity for #otherisp
    $("select[name='isp']").change(function(){
      if ($(this).val() == "Other"){
        $("#otherisp").addClass("show");
      }else{
        $("#otherisp").removeClass("show");
      }
    });


  });
}());


