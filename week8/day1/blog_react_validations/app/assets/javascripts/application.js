/* global $ */
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
//= require react
//= require react_ujs
//= require components
//= require_tree .

$('#mostPopular').on('click', function () {
  $('#most-popular-posts').first().find('.post-link')[0].click();
});


var validatorGenerator = function (validator) {
  var selector = $(validator.selector);
  selector.on('keydown', function () {
    var $errorField = selector.parent().find('.errors');
    if (selector.val().length < validator.minLength) {
      selector.addClass('field-with-errors');
      $errorField.html(validator.message);
    } else {
      selector.removeClass('field-with-errors')
                .addClass('correct-field');
      $errorField.html('');
    }
  });
};
//Client side validation
var postTitleValidator = {
  selector: '#post_title',
  minLength: 5,
  message: 'Post Title must be a minimum of 5 characters'
};

var postBodyValidator = {
  selector: '#post_body',
  minLength: 50,
  message: 'Post Body must be 50 characters. This isn\'t twitter'
};

var postCategoryValidator = {
  selector: '#post_category',
  minLength: 2,
  message: 'Post Category must be at least 2 characters'
};

validatorGenerator(postTitleValidator);
validatorGenerator(postBodyValidator);
validatorGenerator(postCategoryValidator);

// The above is the generalized version of below, this was the original validator
var $postTitle = $('#post_title');
$postTitle.on('keydown', function () {
  var $errorField = $postTitle.parent().find('.errors');
  if ($postTitle.val().length < 5) {
    $postTitle.addClass('field-with-errors');
    $errorField.html('Post Title must be a minimum of 5 characters');
  } else {
    $postTitle.removeClass('field-with-errors')
              .addClass('correct-field');
    $errorField.html('');
  }
});
