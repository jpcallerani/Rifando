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

<!-- Bootstrap -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">

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
	width: 385px;
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
			<li><a href='${pageContext.request.contextPath}/cadastro'><span>Cadastro</span></a></li>
			<li><a
				href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
							<li class='last active'><a
				href='${pageContext.request.contextPath}/login'><span>Logout</span></a></li>
		</ul>
	</div>
	<!-- End site branding area -->

	<div class="mainmenu-area">
		<div class="container">
			<div class="jumbotron text-xs-center" style="margin-top: 20px;">
				<h1 class="display-3">Você desconectou.</h1>
				<p class="lead">
					<strong>Obrigado </strong> e volte sempre.
				</p>
				<hr>
				<p>
					Está com problemas? <a href="${pageContext.request.contextPath}/contato">Fale conosco</a>
				</p>
				<p class="lead">
					<a class="btn btn-primary btn-sm" href="." role="button">Continuar
						no site.</a>
				</p>
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
		src="./resources/js/login.js"></script>
</body>
</html>