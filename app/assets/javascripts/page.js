var ready = function() {

	$('form').on('click', '.remove-module', function(e) {
		e.preventDefault();
		var wellToHide = $(this).parent().parent().next('.well').hide();
		$(this).parent().parent().remove();
		wellToHide.find('.destroy-field').val('1');
	});

};

$(document).ready(ready);
$(document).on('page:load', ready);