$(function(){

$('.mentors').on('click', function(e){
  $("#mentors").empty()
  $.getJSON(this.href, function(data){
    data.forEach(function(user){
      let m = new Mentor(user)
      $('#mentors').append(m.format())
    })
  })
  e.preventDefault()
})

$('#next').on('click', function(e){
  var nextId = parseInt($('#next').attr("data-id")) + 1;
  $.getJSON("/users/" + nextId + ".json", function(data){
    $("#username").text(data["name"])
    $("#userbio").text(data["bio"])
    $('#next').attr("data-id", nextId)


})
e.preventDefault()
})


});


function Mentor(info){
  this.name = info.name
  this.house = info.house.name
}

Mentor.prototype.format  = function(){
  return '<p><h3>' + this.name + ' - ' + this.house + '<h3></p>'
}
