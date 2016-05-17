$(document).ready(function() {

	$('form').on('click', '.remove-module', function() {
		var wellToHide = $(this).parent().parent().next('.well').hide();
		$(this).parent().parent().remove();
		wellToHide.find('input[type="hidden"]').val('1');
	});



});