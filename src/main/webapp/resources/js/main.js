jQuery(document).ready(function($) {
  
	$(document).on('click', '#btnLogout', function() {
		$('#formLogout').submit();
	});
	
	$(document).on('click', '#btnProfile', function() {
		$('#formProfile').submit();
	});

	(function($) {
		$(function() {
			$("[data-toggle=popover]").each(function(i, obj) {

				$(this).popover({
					html : true,
					content : function() {
						var id = $(this).attr('id')
						return $('#popover-content-' + id).html();
					}
				});
			});
		});

	})(jQuery);

	(function($) {
		$(function() {
			$('[data-toggle="popover"]').popover({
				container : 'body',
				animation : true
			});
		});
	})(jQuery);

	(function($) {
		$(function() {
			$('#inputTelefone').mask('+(00)0 0000 0000');
			$('#inputCEP').mask('00.000-000');
		});
	})(jQuery);
});
