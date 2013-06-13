$(document).ready(function() {
  $('#postform').on('submit', function(e) {
    e.preventDefault();
    $.ajax ({
      url: '/postvote',
      type: 'post',
      data: $(this).serialize()
    }).done(function(votecount) {
      console.log(votecount);
      $('#postvotecount').text(votecount);
    });
  });

  $('#commentform').on('submit', function(e) {
   e.preventDefault();
   $.ajax ({
      url: '/postcomment',
      type: 'post',
      data: $(this).serialize()
    }).done(function(votecount) {
      console.log(votecount);
      $('#commentvotecount').text(votecount);
    });
  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
