// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//
//= require rails-ujs
// = require turbolinks
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//
//= require_tree .


// Copyright 2014-2017 The Bootstrap Authors
// Copyright 2014-2017 Twitter, Inc.
// Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
  var msViewportStyle = document.createElement('style')
  msViewportStyle.appendChild(
    document.createTextNode(
      '@-ms-viewport{width:auto!important}'
    )
  )
  document.head.appendChild(msViewportStyle)
}






// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  "use strict";
  $(document).on('turbolinks:load', function() {

    // Tawk snippet for adding the option to talk with customers on site
    window.$_Tawk = undefined;
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
      var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
      s1.async=true;
      s1.src='https://embed.tawk.to/59cbca6ec28eca75e4622ae0/default';
      s1.charset='UTF-8';
      s1.setAttribute('crossorigin','*');
      s0.parentNode.insertBefore(s1,s0);
    })();

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

    // Form interactivity
    $("select[name='isp']").change(function(){
      if ($(this).val() == "Other"){
        $("#otherisp").addClass("show");
      }else{
        $("#otherisp").removeClass("show");
      }
    });

  });
}());


