$(function(){
  $('#button').on('click', function(e){
    $('#all_highlights').empty()
    $.getJSON(this.url, function(data){
      data.sort(function(a,b){
        if(a.content<b.content){return -1}
        if(a.content>b.content){return 1}
        return 0
      })
      data.forEach(function(h){
        date = new Date(h.created_at).toDateString()
        name = h.user.name
        content = h.content
        $('#all_highlights').append('<p>' + date + "   "+"-    " + content + " " +"(" +name + ")" +'</p>')
        console.log(date)
      })
    })
  })

  $("#new_highlight").on('submit', function(e){
    //var $highlight= $("#highlight_content").val()
    //var $authenticity_token = $("input[name='authenticity_token']").val()

    $.post(this.action, $(this).serialize()).done(function(response){
      let h = new Highlight(response)
      $("#highlight_content").val("")
      $('#created_highlights').append(h.format())

    }).error(function(){
      alert("error")
    });

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


function Highlight(info){
  this.content = info.content
  this.user = info.user
}

Highlight.prototype.format = function(){
  return '<p><h3>' + this.content +" "+ '</h3>' + '<h5 class="errors">' + '('+'New Highlight For '+ this.user.house.name + ' House)' + '<h5></p>'
}
