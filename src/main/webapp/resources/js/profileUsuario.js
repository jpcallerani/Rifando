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

					$("#alteraUsuario").submit(function(event) {
						// Prevent the form from
						// submitting via the
						// browser.

						event.preventDefault();
						ajaxPost();
					});

					function ajaxPost() {
						// PREPARE FORM DATA
						var formData = {
							id : $("#inputID").val(),
							nome : $("#inputNome").val(),
							cpf : $("#inputCPF").val(),
							telefone : $("#inputTelefone").val(),
							email : $("#inputEmail4").val(),
							senha : $("#inputPassword4 ").val(),
							cep : $("#inputCEP").val(),
							rua : $("#inputRua").val(),
							numero : $("#inputNumero").val(),
							bairro : $("#inputBairro").val(),
							cidade : $("#inputCidade").val(),
							estado : $("#inputEstado").val()
						}

						// DO POST
						$
								.ajax({
									type : "POST",
									contentType : "application/json",
									url : "efetuaAlteracao",
									data : JSON.stringify(formData),
									dataType : 'json',
									success : function(result) {
										if (result.status == "Done") {
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
											$( "#modalProfile" ).load("./profile #modalProfile" );
											modalProfile
											toasterOptions();
											toastr
													.success("Informações alteradas com sucesso!");
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
											toastr.error(result, "Atenção!");
										}
										console.log(result);
									},
									error : function(e) {
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
														unescape("Occoreu um erro: E-mail já existente."),
														unescape("Atenção!"));
									}
								});
					}

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

					$(document).ajaxStart(function() {
						$(document.body).css({
							'cursor' : 'wait'
						});
						$("#alteraUsuario :input").prop("disabled", true);
					}).ajaxStop(function() {
						$(document.body).css({
							'cursor' : 'default'
						});
						$("#alteraUsuario :input").prop("disabled", false);
					});
				});