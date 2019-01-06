$(function(){

attachListeners()

})

function attachListeners(){

  $('#next').on('click', function(){
    console.log(this)
    var nextId = parseInt($('#next').attr("data-id")) + 1;
    $.get("/users/" + nextId + ".json", function(data){
      $("#username").text(data["name"])
      console.log(data["name"])
  })
})
}
