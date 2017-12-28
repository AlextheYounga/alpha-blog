// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

<script type="text/javascript">
  
  lp.jQuery(document).ready(updateViewport);
  window.addEventListener('orientationchange', updateViewport);
</script>
<script type="text/javascript">// See README.md for documentation
lp.jQuery().ready(function($) {
  $('input[name^=ubafs-]', 'form').remove();

  var info = JSON.stringify({
    date: new Date(),
    agent: navigator.userAgent,
    screen: {
      availWidth: screen.availWidth,
      availHeight: screen.availHeight,
      width: screen.width,
      height: screen.height
    },
    window: {
      innerWidth: window.innerWidth,
      innerHeight: window.innerHeight
    },
    hasPlugins: ('length' in navigator.plugins && navigator.plugins.length > 0)
  });

  var jevField = $('<input type="hidden" id="ubafs-jev" name="ubafs-jev">').val(info);
  $('form').append(jevField);
});
</script>