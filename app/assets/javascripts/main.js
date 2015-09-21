$(document).ready(function() {

  $("li" ).hover(function() {
    $( this ).fadeOut( 200 );
    $( this ).fadeIn( 500 );
  });

  $(".surprise" ).on("click", function() {
    alert("Hope you enjoyed!");
  });


});
