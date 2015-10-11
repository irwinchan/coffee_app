$(document).on('ready page:load', function(){

  $("#add-recipe").on('click', function(event){
    event.preventDefault();
    $("#hide-form").animate({
      left: 0
    }, 400);
  });

  $("#close-new-recipe-form").on('click', function(event){
    event.preventDefault();
    $("#hide-form").animate({
      left: -3000
    }, 400);
  })
});