$(function(){
  $("select").change(function(){
    var flatPrice = $(".price").text();
    var nbDays = $( "#booking_number_of_day").val();
    $(".total").text("total of " + flatPrice * nbDays + "€");
  });
});

