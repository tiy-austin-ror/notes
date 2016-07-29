// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize
//= require_tree .


$(document).ready(function () {
  $('.modal-trigger').leanModal();
  $('select').material_select();

  $(".view-questions").on("click", function (event) {
    event.preventDefault();

    $target = $(this).parent().parent().find(".poll-questions");

    if ($target.hasClass("opened")) {
      $target.removeClass("opened");
      $(this).find('.material-icons').text("expand_less");
    } else {
      $target.addClass("opened");
      $(this).find('.material-icons').text("expand_more");
    }

  });

  $('#new_poll').on("ajax:success", function (event, data, status) {
   $('#polls').append("<p>" + data + "</p>");
  });

  navigator.geolocation.getCurrentPosition(function (pos) {
    console.log(pos);
  });
});
