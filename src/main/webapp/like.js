/**
 * 
 */
function like(){
  $.ajax({
   type: "GET",
   url: "/biz/likeok.do",
   data: query,
   success: function(data) {
      alert("좋아요 감사합니다!");
      $("#like_result").html(data.like); //id값이 like_result인 html을 찾아서 data.like값으로 바꿔준다.
   },
   error: function(request, status, error){
      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
   }
  });
}