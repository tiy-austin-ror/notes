// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('#newComment').on('click', function () {
  $.ajax({
    url: '/comments',
    dataType: 'JSON',
    method: "POST",
    data: {
      comment: {
        username: $('#comment_username').val(),
        body:     $('#comment_body').val(),
        post_id:  $('#comment_post_id').val()
      }
    },
    success: function (response) {
      $('#comment_username').val('');
      $('#comment_body').val('');
      $('.comments').prepend('<h3>Comment Posted!</h3>');
      $('.comments ul').append('<li><strong>' + response.username + ':</strong> ' + response.body + '</li>');
    }
  });
});
