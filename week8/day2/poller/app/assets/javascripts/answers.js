// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function () {
  $('.send-answer').on('click', function () {
    $(this)
      .addClass('red')
      .siblings()
      .removeClass('red');;
  });
});

