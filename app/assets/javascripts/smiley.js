// Simple jQuery for updating the text
// when a radio button is clicked
$('#smileys input').on('click', function() {
	$('#selection').html($(this).val());
});