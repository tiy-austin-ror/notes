/* globals $, marked */

/*
  Validate Post form, before submission.
  - Check the inputs.
  - See if the user supplied value is invalid.
  - Tell the user to fix any errors.
  - Tell the user when the field is good.
*/

$(document).ready(function () {
    //Load the markdown on each page
    $(".md").each(function () {
        var post_md = $(this).html();
        var markdown = marked(post_md);
        $(this).html(markdown);
    });

    //Validations
    if ($("#post_title").val().length < 5) {
        $("#post_submit").prop("disabled", true);
    }

    /*
     - event to watch
     - field name
     - error message
     - required or warning field
     - validation predicate
     - success or okay message
    */
    var postBodyValidator = {
        events: "keyup focus",
        fieldName: "#post_body",
        fieldType: "warning",
        successMessage: "Looks Good",
        errorMessage: "Your body is blank. Do you know that?",
        validatorFn: function (val) {
            return val.trim().length < 1;
        }
    };

    var postTitleValidator = {
        events: "keydown focus",
        fieldName: "#post_title",
        fieldType: "required",
        successMessage: "👍",
        errorMessage: "Title must be 5 (non space) characters",
        validatorFn: function (val) {
            return val.trim().length < 5;
        }
    };

    var validate = function (validator) {
        $(validator.fieldName).on(validator.events, function () {
            var input_val = $(this).val();
            var parent = $(this).parent();
            var fieldType;

            if (validator.fieldType === "warning") {
                fieldType = "field_with_warnings";
            } else {
                fieldType = "field_with_errors";
            }

            if (validator.validatorFn(input_val)) {
                parent.addClass(fieldType);
                parent.find(".error-message").html(validator.errorMessage);
            } else {
                parent.removeClass(fieldType);
                parent.find(".error-message").html(validator.successMessage);
            }
        });
    };

    validate(postBodyValidator);
    validate(postTitleValidator);

    // Data Driven
    $(postBodyValidator.fieldName).on(postBodyValidator.events, function () {
        var input_val = $(this).val();
        var parent = $(this).parent();
        var fieldType;

        if (postBodyValidator.fieldType === "warning") {
            fieldType = "field_with_warnings";
        } else {
            fieldType = "field_with_errors";
        }

        if (postBodyValidator.validatorFn(input_val)) {
            parent.addClass(fieldType);
            parent.find(".error-message").html(postBodyValidator.errorMessage);
        } else {
            parent.removeClass(fieldType);
            parent.find(".error-message").html(postBodyValidator.successMessage);
        }
    });

    // Original
    $("#post_body").on("keyup focus", function () {
        var input_val = $(this).val();
        var parent = $(this).parent();

        if (input_val.trim().length < 1) {
            parent.addClass("field_with_warnings");
            parent.find(".error-message").html("Your body is blank. Do you know that?");
        } else {
            parent.removeClass("field_with_warnings");
            parent.find(".error-message").html("Looks good");
        }
    });
    
    $("#post_title").on("keydown focus", function () {
        var input_val = $(this).val();
        var parent = $(this).parent();

        if (input_val.trim().length < 5) {
            parent.addClass("field_with_errors");
            parent.find(".error-message").html("Title must be 5 (non space) characters");
            $("#post_submit").prop("disabled", true);
        } else {
            parent.removeClass("field_with_errors");
            parent.find(".error-message").html("👍");
            $("#post_submit").prop("disabled", false);
        }
    });


    //Markdown Preview
    var setPreview = function () {
        $("#preview").html(marked($(this).val()));
    };
    $("#post_body").on("keyup keydown", setPreview);


    // Autoload the MD Preview on Edit
    if ($("#post_body").length > 0) {
        setPreview.bind($("#post_body"))();
    }
});
