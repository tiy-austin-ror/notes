/* globals $ */
// This is a manifest file that"ll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin"s vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It"s not advisable to add code directly here, but if you do, it"ll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var ready = function () {
    Comments.start();
    
    $("#flash-msg").on("click", function () {
        $(this).addClass("go-away");
    });

    $("#show-new-comment").on("click", function () {
        $("#new-comment-form").css({ display: "inherit" });
    });

    var addQuote = function () {
        var url = "https://hidden-beach-47358.herokuapp.com/api/quotes/random";
        $.getJSON(url, function (response) {
            $("#quote-container").html("");
            $("#quote-container").append("<img src='" + response.quote_image + "' />");
            $("#quote-container").append("<p>" + response.quote_body + "</p>");
        });
    };

    $("#new-quote").on("click", addQuote);

    addQuote();

    //new comment auto check and refresh
    var checkAndAddNewComments = function () {
        var post_id = $("#post-id").val(); // the .val() method in js returns the value of an input element.
        if (post_id !== undefined && post_id !== null) {
            var url = "/api/posts/" + post_id;
            $.getJSON(url, function (response) {
                $("#comment-storage").html("");
                $("#comment-count").html(response.comments.length);
                response.comments.forEach(function (comment) {
                    $("#comment-storage").append("<p>" + comment.body + "</p>");
                });
            });
        }
    };

    setInterval(function () {
        checkAndAddNewComments();
    }, 1000);

    var $newComment = $("#new_comment");
    $newComment.on("ajax:success", function(e, data) {
        $newComment.append("<p>" + data.message + "</p>");
        $newComment.find("#comment_body").val("");
    });
    $newComment.on("ajax:error", function(e, data) {
        $newComment.append("<p>" + data.message + "</p>");
    });
};

$(document).ready(ready);
$(document).on("page:load", ready);
// Turbolinks: Doesn't call the 'ready' function, like jQuery expects
// So we tell it to look for 'page:load' instead.
