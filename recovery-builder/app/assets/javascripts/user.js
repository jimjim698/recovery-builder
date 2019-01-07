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
  data = {
    authenticity_token: $authenticity_token,
    'highlight': {
      'content': $highlight
    }
  }
  $.post(this.action, data).done(function(response){
    $('#created_highlights ul').append('<p><h3>' + response.content + '</h3><p>')
    console.log(response.content)
  })

  e.preventDefault()
})




});
