window.Dashboard = function() {
  $('.js-toggle-content').click(function(e) {
    e.preventDefault();
    $('.js-use-case-hidden').toggle('slow', function() {
      if ($(this).is(':visible')) {
        e.target.innerHTML = 'See less';
      } else {
        e.target.innerHTML = 'See more';
      }
    });
    $('.js-caret').toggleClass('up');
  });

  $('.use-case-link').click(function(e){
    e.preventDefault();
    return false;
  });

  $('.link').click(function(e) {
    e.preventDefault();
  });
};
