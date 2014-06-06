// $(document).on('page:load', function(){
var ready = function() {
  $(".small").on("click", function(){
    $(this).hide( "slow" );
  });

  

  $(".new_sale_form").on("submit", function(){
    if (this.text_field) input = " ";
      $( "form").submit(function( event ) {
      event.preventDefault();
    });
  });

  $('.flip').click(function () {
    // alert('flip was clicked');
    $(this).find('.card').addClass('flipped').mouseleave(function () {
        $(this).removeClass('flipped');
    });
    return false;
  });


//   $('.howdy')
//     .on("mouseover",(function() {
//       $('.bubble').show("slow");
//     }));
//     .on("mouseout",(function() {
//       $('.bubble').removeClass("show");
//     }));



  $('.bubblewrap')
    .mouseenter(function() {
      $('.bubble').stop().show("slow");
    })
    .mouseleave(function() {
      $('.bubble').stop().hide("slow");
    });
};
$(document).ready(ready);
$(document).on('page:load', ready);
