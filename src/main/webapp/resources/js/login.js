jQuery(document)
		.ready(
				function($) {

					$(document)
							.ready(
									function() {

										// SUBMIT FORM
										$("#customerForm").submit(
												function(event) {
													// Prevent the form from
													// submitting via the
													// browser.

													event.preventDefault();
													ajaxPost();
												});

										function ajaxPost() {
											// PREPARE FORM DATA
											var formData = {
												email : $("#email").val(),
												senha : $("#senha").val()
											}

											// DO POST
											$
													.ajax({
														type : "POST",
														contentType : "application/json",
														url : "efetuaLogin",
														data : JSON
																.stringify(formData),
														dataType : 'json',
														success : function(
																result) {
															if (result.status == "Done") {
																window.location
																		.replace("cadastro");
															} else {
																function toasterOptions() {
																	toastr.options = {
																		"closeButton" : false,
																		"debug" : false,
																		"newestOnTop" : false,
																		"progressBar" : true,
																		"positionClass" : "toast-top-center",
																		"preventDuplicates" : false,
																		"showDuration" : "300",
																		"hideDuration" : "1000",
																		"timeOut" : "5000",
																		"extendedTimeOut" : "1000",
																		"showEasing" : "swing",
																		"hideEasing" : "linear",
																		"showMethod" : "fadeIn",
																		"hideMethod" : "fadeOut"
																	};
																}
																;

																toasterOptions();
																toastr
																		.error(
																				"Sua credenciais estão inválidas ou não existem.",
																				"Atenção!");
															}
															console.log(result);
														},
														error : function(e) {
															alert("erro");
															console.log(
																	"ERROR: ",
																	e);
														}
													});

											// Reset FormData after Posting
											resetData();

										}

										function resetData() {
											$("#email").val("");
											$("#senha").val("");
										}
									});

					$(document).ajaxStart(function() {
						$(document.body).css({
							'cursor' : 'wait'
						});
						$("#customerForm :input").prop("disabled", true);
					}).ajaxStop(function() {
						$(document.body).css({
							'cursor' : 'default'
						});
						$("#customerForm :input").prop("disabled", false);
					});

				});