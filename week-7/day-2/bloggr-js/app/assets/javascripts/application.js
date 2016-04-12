// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



var flashElem = document.querySelector('#flash-msg');
if (flashElem != null) {
  flashElem.addEventListener('click', function (event) {
    flashElem.classList.add('go-away');
  });
}


var newCommentButton = document.querySelector('#show-new-comment');
if (newCommentButton != null) {
  newCommentButton.addEventListener('click', function (event) {
    var elem = document.querySelector('#new-comment-form');
    elem.style.display = 'inherit';
  });
}
