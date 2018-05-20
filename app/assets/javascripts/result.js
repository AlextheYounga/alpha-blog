$(document).ready(function(){
  $('#stock-lookup-form').on('ajax:complete', function(event, data, status){
    $('#results').html(data.responseText);
  });
}); 