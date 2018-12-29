jQuery(document)
		.ready(
				function($) {

					$(document).ready(function() {
						$('#inputCPF').mask('000.000.000-00');
						$('#inputTelefone').mask('+(00)0 0000 0000');
					});

					$(document)
							.ready(
									function() {

										function limpa_formulario_cep() {
											// Limpa valores do formulário de
											// cep.
											$("#inputCEP").val("");
											$("#inputRua").val("");
											$("#inputBairro").val("");
											$("#inputCidade").val("");
											$("#inputEstado").val("");
										}

										// Quando o campo cep perde o foco.
										$("#inputCEP")
												.blur(
														function() {

															// Nova variável
															// "cep" somente com
															// dígitos.
															var cep = $(this)
																	.val()
																	.replace(
																			/\D/g,
																			'');

															// Verifica se campo
															// cep possui valor
															// informado.
															if (cep != "") {

																// Expressão
																// regular para
																// validar o
																// CEP.
																var validacep = /^[0-9]{8}$/;

																// Valida o
																// formato do
																// CEP.
																if (validacep
																		.test(cep)) {

																	// Preenche
																	// os campos
																	// com "..."
																	// enquanto
																	// consulta
																	// webservice.
																	$(
																			"#inputRua")
																			.val(
																					"...");
																	$(
																			"#inputBairro")
																			.val(
																					"...");
																	$(
																			"#inputCidade")
																			.val(
																					"...");
																	$(
																			"#inputEstado")
																			.val(
																					"...");

																	// Consulta
																	// o
																	// webservice
																	// viacep.com.br/
																	$
																			.getJSON(
																					"https://viacep.com.br/ws/"
																							+ cep
																							+ "/json/?callback=?",
																					function(
																							dados) {

																						if (!("erro" in dados)) {
																							// Atualiza
																							// os
																							// campos
																							// com
																							// os
																							// valores
																							// da
																							// consulta.
																							$(
																									"#inputRua")
																									.val(
																											dados.logradouro);
																							$(
																									"#inputBairro")
																									.val(
																											dados.bairro);
																							$(
																									"#inputCidade")
																									.val(
																											dados.localidade);
																							$(
																									"#inputEstado")
																									.val(
																											dados.uf);
																						} // end
																							// if.
																						else {
																							// CEP
																							// pesquisado
																							// não
																							// foi
																							// encontrado.
																							limpa_formulario_cep();
																							$(
																									'#exampleModal')
																									.modal(
																											'show');
																						}
																					});
																} // end if.
																else {
																	// cep é
																	// inválido.
																	limpa_formulario_cep();
																	$(
																			'#exampleModal')
																			.modal(
																					'show');
																}
															} // end if.
															else {
																// cep sem
																// valor, limpa
																// formulário.
																limpa_formulario_cep();
															}
														});
									});

					$(document).ready(function() {
						$('[data-toggle="tooltip"]').tooltip();
					});

					$(function() {
						$("#inputEmail4")
								.blur(
										function() {
											var uname = $('#inputEmail4').val();
											if (uname.length >= 3) {
												// PREPARE FORM DATA
												var formData = {
													email : uname
												}

												$
														.ajax({
															type : "POST",
															contentType : "application/json",
															url : "checkEmail",
															data : JSON
																	.stringify(formData),
															dataType : 'json',
															success : function(
																	result) {
																if (result.status == "Done") {
																	function toasterOptions() {
																		toastr.options = {
																			"closeButton" : true,
																			"debug" : false,
																			"newestOnTop" : false,
																			"progressBar" : true,
																			"positionClass" : "toast-top-right",
																			"preventDuplicates" : true,
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
																					unescape("E-mail já existente, tente outro."),
																					unescape("Atenção!"));
																	$(
																			"#inputEmail4")
																			.get(
																					0)
																			.focus();
																	$(
																			"#inputEmail4")
																			.val(
																					"");
																} else {
																	function toasterOptions() {
																		toastr.options = {
																			"closeButton" : true,
																			"debug" : false,
																			"newestOnTop" : false,
																			"progressBar" : true,
																			"positionClass" : "toast-top-right",
																			"preventDuplicates" : true,
																			"onclick" : null,
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
																			.success($(
																					"#inputEmail4")
																					.val()
																					+ " "
																					+ unescape("disponível."));
																}
																console
																		.log(result);
															}
														});
											} else {
												function toasterOptions() {
													toastr.options = {
														"closeButton" : true,
														"debug" : false,
														"newestOnTop" : false,
														"progressBar" : true,
														"positionClass" : "toast-top-right",
														"preventDuplicates" : true,
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
																unescape("E-mail deve conter mais do que 3 letras."),
																unescape("Atenção!"));
												$("#inputEmail4").get(0)
														.focus();
											}

										});
					});

					$(function() {
						$("#inputCPF").blur(
								function() {
									$("#inputCPF").val().replace('/[^\d]+/g',
											'');
									resultado = $("#inputCPF").val().replace(
											/[^\d]+/g, '');
									$("#inputCPF").val(resultado);
								});
					});

					$(function() {
						$("#inputTelefone").blur(
								function() {
									$("#inputTelefone").val().replace(
											'/[^\d]+/g', '');
									resultado = $("#inputTelefone").val()
											.replace(/[^\d]+/g, '');
									$("#inputTelefone").val(resultado);
								});
					});

					$(document).ajaxStart(
							function() {
								$(document.body).css({
									'cursor' : 'wait'
								});
								$("#cadastraNovoUsuario :input").prop(
										"disabled", true);
							}).ajaxStop(
							function() {
								$(document.body).css({
									'cursor' : 'default'
								});
								$("#cadastraNovoUsuario :input").prop(
										"disabled", false);
							});
				});