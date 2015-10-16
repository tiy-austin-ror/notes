/* global $ */

// New Post Title Validation
// $('#post_title').on('keyup', function () { // 'keyup' is an event that fires after every keystroke
//   // 'this' is the input element with the id of '#post_title'
//   var title_value = $(this).val(); //Get the value out of the input element
//   var error_elem = $(this).parent().find('.errors'); //Find the closest element that has the class 'errors'
//
//   if (title_value.length < 1) {  //If the string inside of the input is less than 1 char, we assume its blank
//     error_elem.text('Title is required'); //Change the text of the error field to say what is wrong
//   } else {
//     error_elem.text(''); // If there is text in the title input field, remove the error text.
//   }
// });
//
// $('#post_body').on('keyup', function () {
//   var body_value = $(this).val();
//   var error_elem = $(this).parent().find('.errors');
//
//   if (body_value.length <= 5) {
//     error_elem.text('Body must be longer than 5 characters');
//   } else {
//     error_elem.text('');
//   }
// });
//
// $('#post_category').on('keyup', function () {
//   var cat_value = $(this).val();
//   var error_elem = $(this).parent().find('.errors');
//
//   if (cat_value.length < 1) {
//     error_elem.text('Category is required');
//   } else {
//     error_elem.text('');
//   }
// });
