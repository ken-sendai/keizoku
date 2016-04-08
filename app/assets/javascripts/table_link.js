jQuery(function($) {
  $('tr[data-href]').addClass('clickable')
  .click(function(e) {
    if(!$(e.target).is('a')){
      window.location = $(e.target).closest('tr').data('href');
    };
  });
});

$(function(){
  var dateFormat = 'yy-mm-dd';
  $('.datepicker').datepicker({
    dateFormat: dateFormat
    });
});