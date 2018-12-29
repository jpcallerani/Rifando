jQuery(document).ready(function($) {

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
		$('.popover-dismiss').popover({
			trigger : 'focus'
		});
	})(jQuery);

	(function($) {
		$(function() {
			$('[data-toggle="popover"]').popover({
				container : 'body',
				animation: true
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
