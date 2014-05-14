$(function(){
  $(".small").on("click", function(){
    $(this).hide( "slow" );
  });
});

$(function(){
  $(".wow-form").mouseenter(function(){
    $(this).toggleClass( "framed" );
  });
});

$(function(){
  $(".new_sale_form").on("submit", function(){
    if (this.text_field) input = " ";
      $( "form").submit(function( event ) {
      event.preventDefault();
    });
  });
});

$(function(){
  $('.flip').click(function () {
    $(this).find('.card').addClass('flipped').mouseleave(function () {
        $(this).removeClass('flipped');
    });
    return false;
  });
});

// $(function(){
//   $('.howdy')
//     .on("mouseover",(function() {
//       $('.bubble').show("slow");
//     }));
//     .on("mouseout",(function() {
//       $('.bubble').removeClass("show");
//     }));
// });

$(function(){
  $('.howdy')
    .mouseenter(function() {
      $('.bubble').show("slow");
    })
    .mouseleave(function() {
      $('.bubble').hide("slow");
    });
});