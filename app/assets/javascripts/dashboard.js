$(document).ready( function() {
  $('.js-toggle-content').click(function(e) {
    e.preventDefault();
    $('.js-use-case-hidden').toggle('slow', function() {
      if ($(this).is(':visible')) {
        e.target.innerHTML = 'See less';
      } else {
        e.target.innerHTML = 'See more';
      }
    });
  });

  $('.js-upload-button').click(function(e) {
    e.preventDefault();
  });

  Dropzone.options.sampleDropzone = {
    dictDefaultMessage: 'or drop files here'
  }
});
