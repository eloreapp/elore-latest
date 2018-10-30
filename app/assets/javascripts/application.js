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
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks

$(document).on('ready', function() {

  // Navbar Mobile Activation
  $( window ).load(function() {
    // Check for click events on the navbar burger icon
    $(".navbar-burger").click(function() {

      // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
      $(".navbar-burger").toggleClass("is-active");
      $(".navbar-menu").toggleClass("is-active");

    });
  });

  // Tabs
  // $('.tab-link').on('click', function () {
  //   $('#tab').toggleClass('is-active');
  // });

  // $('#tab-header li').on('click', function () {
  //   // var tab = $(this).data('tab');

  //   $('#tab-header li').removeClass('is-active');
  //   $(this).addClass('is-active');

  //   // $('#tab-content p').removeClass('is-active');
  //   // $('p[data-content="' + tab + '"]').addClass('is-active');
  // });

  // Image Preview After Upload
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $("#img-prev").attr("src", e.target.result);
      };
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#image-upload").change(function() {
    $("#img-prev").removeClass("is-invisible");
    readURL(this);
  });
});
