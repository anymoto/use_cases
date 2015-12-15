window.DataSummaryForm = function() {
 $('.js-upload-button').click(function(e) {
    e.preventDefault();
  });

  Dropzone.options.sampleDropzone = {
    dictDefaultMessage: 'or drop files here'
  }

  $('.submit-form-button').click(function(e) {
    e.preventDefault();
    if ($(this).hasClass('disabled')) {
      return false;
    }
  });

  $('.text-area').keyup(function(e) {
    length = $(this).val().length;
    if (length > 0 && length < 141) {
      $('.submit-form-button').removeClass('disabled');
      $('.text-warning').addClass('hidden');
    } else {
      $('.submit-form-button').addClass('disabled');
    }

    if (length > 140) {
      $('.text-warning').removeClass('hidden');
    }
  });
};

