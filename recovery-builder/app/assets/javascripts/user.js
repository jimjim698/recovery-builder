$(function(){



  $(".load_highlights").on('click', function(e){
    alert("????")
    $('#highlights').empty()
    $.getJSON(this.href, function(data){
      console.log(data.highlights)
      data.highlights.forEach(function(highlight){
        $('#highlights').append('<p>' + highlight["content"] +  '</p>')
      })
    })
    e.preventDefault()
  })


$('.mentors').on('click', function(e){
  $("#mentors").empty()
  $.getJSON(this.href, function(data){

    data.forEach(function(user){
      $('#mentors').append('<p><h3>' + user["name"] + ' - ' + user["house"]["name"] + '<h3></p>')
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

$("#new_highlight").on('submit', function(e){
  var $highlight= $("#highlight_content").val()
  var $authenticity_token = $("input[name='authenticity_token']").val()

  $.post(this.action, $(this).serialize()).done(function(response){
    console.log(response)
    let h = new Highlight(response)
    console.log(h.format())
    console.log(response)
    $("#highlight_content").val("")
    $('#created_highlights').append(h.format())

  })

  e.preventDefault()
})




});

function Highlight(info){
  this.content = info.content
  this.user = info.user
}

Highlight.prototype.format = function(){
  return '<p><h3>' + this.content +" "+ '</h3>' + '<h5 class="errors">' + '('+'New Highlight For '+ this.user.house.name + ' House)' + '<h5></p>'
}
