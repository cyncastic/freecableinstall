
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
      console.log($(this).val());
      if ($(this).val() == "4"){
        $("#otherisp").addClass("show");
      }else{
        $("#otherisp").removeClass("show");
      }
    });


  });
}());


