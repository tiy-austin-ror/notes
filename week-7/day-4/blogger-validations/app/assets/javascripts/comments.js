/* globals $ */

var Comments = {    //new comment auto check and refresh
    checkAndAddNewComments: function () {
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
    },

    registerAjaxHandlers: function () {
        var $newComment = $("#new_comment");
        $newComment.on("ajax:success", function(e, data) {
            $newComment.append("<p>" + data.message + "</p>");
            $newComment.find("#comment_body").val("");
        });
        $newComment.on("ajax:error", function(e, data) {
            $newComment.append("<p>" + data.message + "</p>");
        });
    },

    startNewCommentSearch: function () {
        setInterval(function () {
            this.checkAndAddNewComments();
        }, 1000);
    },

    start: function () {
        this.registerAjaxHandlers();
        this.startNewCommentSearch();
    }
};
