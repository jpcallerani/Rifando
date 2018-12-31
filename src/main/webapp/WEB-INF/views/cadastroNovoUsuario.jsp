<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>


<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
<link rel="stylesheet" href="./resources/css/menu.css">
<link rel="stylesheet" href="./resources/css/hover.css">

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!-- Adicionando JQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<style type="text/css">
.login-form {
	width: 800px;
	margin: 30px auto;
}

.login-form form {
	margin-bottom: 15px;
	background: #f7f7f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.login-form h2 {
	margin: 0 0 15px;
}

.form-control, .login-btn {
	min-height: 38px;
	border-radius: 2px;
}

.input-group-addon .fa {
	font-size: 20px;
}

.login-btn {
	font-size: 15px;
	font-weight: bold;
}

.social-btn .btn {
	border: none;
	margin: 10px 3px 0;
	opacity: 1;
}

.social-btn .btn:hover {
	opacity: 0.9;
}

.social-btn .btn-primary {
	background: #507cc0;
}

.social-btn .btn-info {
	background: #64ccf1;
}

.social-btn .btn-danger {
	background: #df4930;
}

.or-seperator {
	margin-top: 20px;
	text-align: center;
	border-top: 1px solid #ccc;
}

.or-seperator i {
	padding: 0 10px;
	background: #f7f7f7;
	position: relative;
	top: -11px;
	z-index: 1;
}
</style>
</head>
<body>
	<div class="header-area">
		<a href="./"><img src="resources/img/rifando.png"
			style="margin-left: 20%;"></a>
	</div>

	<div id='cssmenu'>
		<ul style="margin-left: 380px;">
			<li><a href='./'><span>Home</span></a></li>
			<li><a href='${pageContext.request.contextPath}/contato'><span>Contato</span></a></li>
			<li class="active"><a
				href='${pageContext.request.contextPath}/cadastro'><span>Cadastro</span></a></li>
			<li class='last'><a
				href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
		</ul>
	</div>
	<!-- End mainmenu area -->
	<!-- End site branding area -->
	<div class="mainmenu-area">
		<div class="container">
			<!-- Modal -->
			<div id="exampleModal" class="modal hide" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Atenção</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="modal-body">
								<div class="alert alert-danger" role="alert">CEP
									Inválido!!</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			<div class="login-form">
				<!-- Método para login do usuário -->
				<form:form id="cadastraNovoUsuario"
					action="${pageContext.request.contextPath}/efetuaCadastro"
					method="POST" modelAttribute="usuario">
					<h2 class="text-center label-cadastro"
						style="font-size: 18px; font-style: italic;">
						<strong>Preencha suas informações</strong>
					</h2>
					<div class="form-group">
						<!-- Campo NOME para o cadastro -->
						<form:label for="inputNome" class="label-cadastro" path="nome">Nome</form:label>
						<form:input type="text" path="nome" class="form-control"
							id="inputNome" placeholder="Nome Completo" maxlength="80"
							required="required" data-toggle="tooltip" data-placement="top"
							title="Digite seu nome completo!" />
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<!-- Campo CPF para o cadastro -->
							<form:label for="inputCPF" path="cpf" class="label-cadastro">CPF</form:label>
							<form:input type="text" path="cpf" class="form-control"
								id="inputCPF" placeholder="CPF" required="required"
								data-toggle="tooltip" data-placement="top"
								title="Digite o seu CPF!" />
						</div>
						<div class="form-group col-md-6">
							<form:label for="inputTelefone" path="telefone"
								class="label-cadastro">Whatsapp</form:label>
							<form:input type="text" class="form-control" path="telefone"
								id="inputTelefone" placeholder="Telefone" required="required"
								data-toggle="tooltip" data-placement="top"
								title="Digite o número de telefone do seu Whatsapp!" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<form:label for="inputEmail4" path="email" class="label-cadastro">Email</form:label>
							<form:input type="email" path="email" class="form-control"
								id="inputEmail4" placeholder="Email" data-toggle="tooltip"
								maxlength="45" data-placement="top"
								title="Seu e-mail servirá como login!" />
						</div>
						<div class="form-group col-md-6">
							<form:label for="inputPassword4" path="senha"
								class="label-cadastro">Password</form:label>
							<form:input type="password" class="form-control" path="senha"
								id="inputPassword4" placeholder="Password" required="true"
								maxlength="40" data-toggle="tooltip" data-placement="top"
								title="Digite uma senha!" /> 

						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-2">
							<form:label for="inputCEP" path="cep" class="label-cadastro">CEP</form:label>
							<form:input type="text" path="cep" class="form-control"
								placeholder="CEP" id="inputCEP" maxlength="8"
								required="required" data-toggle="tooltip" data-placement="top"
								title="Digite o CEP da sua residência!" />
						</div>
						<div class="form-group col-md-8">
							<form:label for="inputRua" path="rua" class="label-cadastro">Rua</form:label>
							<form:input type="text" class="form-control" path="rua"
								id="inputRua" placeholder="Av. Paulista" maxlength="100"
								required="required" />
						</div>
						<div class="form-group col-md-2">
							<form:label for="inputNumero" path="numero"
								class="label-cadastro">Número</form:label>
							<form:input type="text" path="numero" class="form-control"
								placeholder="Número" id="inputNumero" required="required"
								data-toggle="tooltip" data-placement="top" maxlength="7"
								title="Digite o número da sua residência!" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<form:label for="inputBairro" path="bairro"
								class="label-cadastro">Bairro</form:label>
							<form:input type="text" class="form-control" id="inputBairro"
								placeholder="Centro" path="bairro" maxlength="50"
								required="required" />
						</div>
						<div class="form-group col-md-3">
							<form:label for="inputCidade" path="cidade"
								class="label-cadastro">Cidade</form:label>
							<form:input type="text" class="form-control" id="inputCidade"
								placeholder="Campinas" path="cidade" maxlength="50"
								required="required" />
						</div>
						<div class="form-group col-md-3">
							<form:label for="inputEstado" path="estado"
								class="label-cadastro">Estado</form:label>
							<form:input type="text" path="estado" class="form-control"
								maxlength="45" placeholder="São Paulo" id="inputEstado" />
						</div>
					</div>
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="invalidCheck" required style="margin-left: -20px;" /> <label
								class="form-check-label label-cadastro" for="invalidCheck"><i>
									Você deve aceitar os termos de uso.</i></label>
						</div>
					</div>
					<div class="form-group">
						<button type="submit"
							class="btn btn-info btn-block btn-raised btn-shadow">Cadastrar</button>
					</div>
				</form:form>
				<p class="text-center text-muted small">© 2019 Rifando. Todos os
					diretos reservados. Rifando.</p>
			</div>
		</div>
	</div>

	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>
							Ri<span>fando.</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Perferendis sunt id doloribus vero quam laborum quas alias
							dolores blanditiis iusto consequatur, modi aliquid eveniet
							eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit,
							debitis, quisquam. Laborum commodi veritatis magni at?</p>
						<div class="footer-social">
							<a href="#" target="_blank"><i class="fa fa-facebook"></i></a> <a
								href="#" target="_blank"><i class="fa fa-twitter"></i></a> <a
								href="#" target="_blank"><i class="fa fa-youtube"></i></a> <a
								href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Menu</h2>
						<ul>
							<li><a href="#">Minha conta</a></li>
							<li><a href="#">Contato</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Novidades</h2>
						<p>Assine para receber as últimas novidades das rifas!</p>
						<div class="newsletter-form">
							<form action="#">
								<input type="email"
									placeholder="Digite seu e-mail para participar"> <input
									type="submit" value="Assinar">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer top area -->
	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
							&copy; 2018 Rifando. Todos os diretos reservados. <a
								href="http://www.rifandobrasil.com.br" target="_blank">Rifando</a>
						</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i> <i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer bottom area -->
	<script type="text/javascript" charset="UTF-8"
		src="./resources/js/cadastroUsuario.js"></script>
</body>
</html>