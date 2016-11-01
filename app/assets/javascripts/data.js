$.ajax({
   type: "GET",
   contentType: "application/json; charset=utf-8",
   url: 'data.json',
   dataType: 'json',
   success: function (data) {
    draw(data);
   },
   error: function (result) {
    console.log(result);
   }
});