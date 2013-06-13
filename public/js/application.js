$(document).ready(function() {
  $('#upvotepost').on('click', function() {
    $('#votevaluepost').attr('value', 1);
  });
  $('#downvotepost').on('click', function() {
    $('#votevaluepost').attr('value', 1);
  });

   $('#postform').on('submit', function(e) {
    // $('formvotepost').subm('click', '#upvotepost', function(e) {
    // console.log("am i in?");
    e.preventDefault();
    // console.log($(e.target).parent().find("#votetotalpost"));
    // $('#votevaluepost').attr('value', 1);
    // console.log($('#votevaluepost'));
    $.ajax ({
      url: '/postvote',
      type: 'post',
      data: $(this).serialize()
    }).done(function(votecount) {
      console.log(votecount);
      $('#postvotecount').text(votecount);
 
    });


  });

  $('#downvotepost').on('click', function() {
  $('#votevaluepost').attr('value','-1');
  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});



