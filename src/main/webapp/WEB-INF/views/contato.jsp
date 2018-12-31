<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>


<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Rifando.</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Font Awesome -->
<link rel="stylesheet" href="./resources/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="./resources/css/owl.carousel.css">
<link rel="stylesheet" href="./resources/style.css">
<link rel="stylesheet" href="./resources/css/responsive.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/themes/black/pace-theme-flash.css" />
<link rel="stylesheet" href="./resources/css/progress.css">
<link rel="stylesheet" href="./resources/css/cards.css">
<link rel="stylesheet" href="./resources/css/ribbon.css">
<link rel="stylesheet" href="./resources/css/index.css">
<link rel="stylesheet" href="./resources/css/hover.css">

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!-- Adicionando JQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="header-area">
		<div class="d-inline p-2" style="margin-left: 20%;">
			<a href="./"><img src="resources/img/rifando.png"></a>
		</div>
		<c:if test="${usuarioLogado != null}">
			<div class="d-inline p-2" style="margin-left: 20%;">
				<button id="popProfile" type="button" data-toggle="popover"
					data-container="body" data-placement="right" data-html="true"
					data-trigger="focus"
					class="btn btn-info btn-circle btn-lg hvr-shadow">
					<i class="fa fa-user"></i>
				</button>
			</div>
			<div id="popover-content-popProfile" class="modal-dialog"
				role="document" style="display: none;">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading">
							Informações do<strong> usuário.</strong>
						</p>
					</div>

					<!--Body-->
					<div class="modal-body">

						<div class="row">
							<div class="col-3">
								<p></p>
								<p class="text-center">
									<i class="fa fa-user-circle fa-5x" style="color: #3DB5FF"></i>
								</p>
							</div>

							<div class="col-9">
								<p>
									<strong> <input type="text" readonly
										style="width: 300px; font-size: 20px; color: #3DB5FF"
										class="form-control-plaintext text-modal "
										value="${usuarioLogado.nome}"></strong>
								</p>
								<div class="row top-buffer ">
									<div class="col-7">
										<strong><label class="fa fa-envelope icone-modal"
											for="ex1"></label></strong> <input type="text" readonly
											style="width: 150px;"
											class="form-control-plaintext text-modal input-size "
											value="${usuarioLogado.email}">
									</div>
									<div class="col-5">
										<strong><label class="fa fa-phone icone-modal"
											for="ex1"></label></strong> <input id="inputTelefone" type="text"
											readonly style="width: 100px;"
											class="form-control-plaintext text-modal input-size "
											value="${usuarioLogado.telefone}">
									</div>
								</div>
								<div class="row top-buffer ">
									<div class="col">
										<strong><label class="fa fa-bus icone-modal"
											for="ex1"></label></strong> <input type="text" readonly
											style="width: 300px;"
											class="form-control-plaintext text-modal input-size "
											value="${usuarioLogado.rua}, ${usuarioLogado.numero}">
									</div>
								</div>
								<div class="row top-buffer ">
									<div class="col-5">
										<strong><label class="fa fa-archive icone-modal"
											for="ex1"></label></strong> <input type="text" readonly
											style="width: 80px;" id="inputCEP"
											class="form-control-plaintext text-modal input-size "
											value="${usuarioLogado.cep}">
									</div>
									<div class="col-7">
										<strong><label class="fa fa-home icone-modal"></label></strong>
										<input type="text" readonly style="width: 140px;"
											class="form-control-plaintext text-modal input-size "
											value="${usuarioLogado.bairro}">
									</div>
								</div>
								<div class="row top-buffer ">
									<div class="col-5">
										<strong><label
											class="fa fa-flag-checkered icone-modal"> </label></strong> <input
											type="text" readonly style="width: 80px;"
											class="form-control-plaintext text-modal input-size "
											value="${usuarioLogado.cidade}">
									</div>
									<div class="col-7">
										<strong><label class="fa fa-building icone-modal"></label></strong>
										<input type="text" readonly style="width: 100px;"
											class="form-control-plaintext text-modal input-size "
											value="${usuarioLogado.estado}">
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--Footer-->
					<div class="modal-footer flex-center">
						<div class="container">
							<div class="row justify-content-center">
								<form:form id="formLogout" method="POST"
									action="${pageContext.request.contextPath}/logout"
									modelAttribute="usuario">
									<div class="col-4">
										<button id="btnLogout" type="submit" style="padding: 10px;"
											class="fa fa-sign-out btn btn-primary btn-lg hvr-shadow">
											<i class="text-modal" style="font-size: 12px;">
												DESCONECTAR</i>
										</button>
									</div>
								</form:form>
								<div class="col-6">
									<button type="button" style="padding: 10px;"
										class="fa fa-cog btn btn-outline-primary btn-lg hvr-shadow">
										<i class="text-modal" style="font-size: 12px;"> EDITAR
											INFORMAÇÕES</i>
									</button>
								</div>
							</div>
						</div>


					</div>
				</div>
				<!--/.Content-->
			</div>
		</c:if>
	</div>
	<div id='cssmenu'>
		<ul style="margin-left: 380px;">
			<li><a href='./'><span>Home</span></a></li>
			<li class="active"><a
				href='${pageContext.request.contextPath}/contato'><span>Contato</span></a></li>
			<c:if test="${usuarioLogado == null}">
				<li><a href='${pageContext.request.contextPath}/cadastro'><span>Cadastro</span></a></li>
			</c:if>
			<li class='last'><a
				href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
			<c:if test="${usuarioLogado != null}">
				<c:if test="${usuarioLogado.administrador == 'S'}">
					<li><a href='${pageContext.request.contextPath}/Administração'><span>Administração</span></a></li>
				</c:if>
			</c:if>

		</ul>
	</div>
	<!-- End mainmenu area -->

	<!-- End slider area -->
	<div class="slider-area">
		<!-- Slider -->
		<div class="container"></div>
		<!-- ./Slider -->
	</div>
	<script src="./resources/js/main.js"></script>
</body>
</html>