var $heart = $("#like-button img");
$("#like-button").on("click", function(){
  var $likeSum = $("#like-sum")
  like_function(#{@style.id}, $(this), $heart, $likeSum)
});

function like_function(id, button, heart, sum) {
  if (button.hasClass("decrement")){
      $.ajax({url: "/likes/" + id, type: "delete", data: {style_id: id, dataType: "json"}})
      .done(function(data){
      button.removeClass("decrement").addClass("increment")
      heart.attr("src", "/assets/icon_heart.svg")
      sum.text(data["count"])
      })
    }else{
      $.ajax({url: "/likes", type: "style", data: {style_id: id, dataType: "json"}})
      .done(function(data){
      button.removeClass("increment").addClass("decrement")
      heart.attr("src", "/assets/icon_heart_red.svg")
      sum.text(data["count"])
      })
    }
}