window.DataSummaryForm = function() {
 $('.js-upload-button').click(function(e) {
    e.preventDefault();
  });

  // Handles the submit button state
  $('.js-submit-form-button').click(function(e) {
    e.preventDefault();
    if ($(this).hasClass('disabled')) {
      return false;
    }
  });

  // Handles the textarea state
  $('.js-text-area').keyup(function(e) {
    length = $(this).val().length;

    if (length > 0 && length < 141) {
      $('.js-submit-form-button').removeClass('disabled');
      $('.js-text-warning').addClass('hidden');
    } else {
      $('.js-submit-form-button').addClass('disabled');
    }

    // Displays a warning message if the text length is > 140 characters
    if (length > 140) {
      $('.js-text-warning').removeClass('hidden');
    }
  });


  // Dropzone plugin config
  Dropzone.options.sampleDropzone = {
    url: '/file-upload'
  }
};

