  $(function() {

    $('.toggles button').click(function(){
      var get_id = this.id;
      var get_current = $('.covers .' + get_id);
  
        $('.cover').not( get_current ).hide(500);
        get_current.show(500);
    });
    
    
    $('#showall').click(function() {
        $('.cover').show(500);
    });


}); 
