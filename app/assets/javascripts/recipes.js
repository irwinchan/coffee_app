$(document).on('ready page:load', function(){

  $("#add-recipe").on('click', function(event){
    event.preventDefault();
    $("#new-recipe-form").animate({
      left: 0
    }, 400);
  });

  $("#close-new-recipe-form").on('click', function(event){
    event.preventDefault();
    $("#new-recipe-form").animate({
      left: -1080
    }, 400);
  })
});