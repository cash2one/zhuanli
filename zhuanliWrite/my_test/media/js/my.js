$(document).ready(function(){
  // Disable certain links in docs
  // =============================

  $('ul.tabs a, ul.pills a, .pagination a, .well .btn, .actions .btn, .alert-message .btn, a.close').click(function(e) {
    e.preventDefault();
  });

  // Copy code blocks in docs
  $(".copy-code").focus(function() {
    var el = this;
    // push select to event loop for chrome :{o
    setTimeout(function () { $(el).select(); }, 1);
  });


});