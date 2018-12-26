<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script type="text/javascript">
	$(document).ready(function() {

		// SUBMIT FORM
		$("#customerForm").submit(function(event) {
			// Prevent the form from submitting via the browser.

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
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "efetuaLogin",
				data : JSON.stringify(formData),
				dataType : 'json',
				success : function(result) {
					if (result.status == "Done") {
						window.location.replace("cadastro");
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
						};

						toasterOptions();
						toastr.error("Sua credenciais estão inválidas ou não existem.", "Atenção!");
					}
					console.log(result);
				},
				error : function(e) {
					alert("erro");
					console.log("ERROR: ", e);
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
</script>
</head>
<body>
	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="user-menu">
						<ul>
							<li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
							<li><a href="#"><i class="fa fa-user"></i> Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

	<div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="./"><img src="resources/img/brand7.png"></a>
						</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End site branding area -->

	<div class="mainmenu-area">
		<div class="container">
			<div class="login-form">
				<!-- Método para login do usuário -->
				<form:form id="customerForm" method="POST" modelAttribute="usuario">
					<h2 class="text-center">Login</h2>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon" style="width: 40px;"><i
								class="fa fa-user"></i></span>
							<form:input id="email" type="email" class="form-control"
								path="email" name="email" placeholder="Digite seu e-mail"
								required="required" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon" style="width: 40px;"><i
								class="fa fa-lock"></i></span>
							<form:input id="senha" type="password" class="form-control"
								path="senha" name="password" placeholder="Digite sua senha"
								required="required" />
						</div>
					</div>
					<div style="color: red">${error}</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary login-btn btn-block">Entrar</button>
					</div>
					<div class="clearfix">
						<a href="#" class="pull-right">Esqueceu sua senha?</a>
					</div>
					<div class="or-seperator">
						<i>ou</i>
					</div>
					<div class="text-center social-btn">
						<a href="${pageContext.request.contextPath}/cadastro"
							class="btn btn-danger">&nbsp; Clique aqui para criar uma nova
							conta</a>
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
</body>
</html>