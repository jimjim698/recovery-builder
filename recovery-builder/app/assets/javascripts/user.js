$(function(){
$('.mentors').on('click', function(e){
  $("#mentors").empty()
  $.getJSON(this.href, function(data){

    data.forEach(function(user){
      $('#mentors').append('<p><h3>' + user["name"] + ' - ' + user["house"]["name"] + '<h3></p>')
    })
  })
  e.preventDefault()
})

$(".load_highlights").on('click', function(e){
  $('#highlights').empty()
  $.getJSON(this.href, function(data){
    console.log(data.highlights)
    data.highlights.forEach(function(highlight){
      $('#highlights').append('<p>' + highlight["content"] +  '</p>')
    })
  })
  e.preventDefault()
})




})
