$(function(){

attachListeners()

})

function attachListeners(){

  $('.next').on('click', function(e){
    var nextId = parseInt($('.next').attr("ata-id")) + 1;
    $.get("/users/" + nextId + ".json", function(data){
      $("#username").text(data["name"])
      $("#userbio").text(data["bio"])
      $('.next').attr("ata-id", nextId)

  })
  e.preventDefault()
})

$('.mentors').on('click', function(e){
  
  $.getJSON(this.href, function(data){
    console.log(data)
  })
  e.preventDefault()
})
}
