<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/css/jasny-bootstrap.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/js/jasny-bootstrap.min.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".clickable-row").click(function() {
			window.location = $(this).data("href");
		});
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
			<div class="row">
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarCollapse">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="./">Home<span
								class="sr-only">(current)</span></a></li>
					</ul>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="#">Contato</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Rifa</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-sidebar">
						<h2 class="sidebar-title">números disponíveis</h2>
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>Número</th>
									<th>Ação</th>
								</tr>
							</thead>
							<tbody data-link="row" class="rowlink">
								<tr>
									<td>1</td>
									<td class="rowlink-skip"><a href="./">
											<button type="button" class="btn btn-primary">Comprar
												número</button>
									</a></td>
								</tr>
								<tr>
									<td>2</td>
									<td class="rowlink-skip"><a href="./">
											<button type="button" class="btn btn-primary">Comprar
												número</button>
									</a></td>
								</tr>
								<tr>
									<td>3</td>
									<td class="rowlink-skip"><a href="./">
											<button type="button" class="btn btn-primary">Comprar
												número</button>
									</a></td>
								</tr>
								<tr>
									<td><a href="#rowlinkModal" data-toggle="modal">Launch
											modal</a></td>
									<td>Toggle a modal via JavaScript by clicking this row.</td>
									<td class="rowlink-skip"><a href="#">Action</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div id="rowlinkModal" class="modal fade" tabindex="-1"
					role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</div>
							<div class="modal-body">
								<p>This modal proves that JavaScript events are triggered
									correctly by rowlink.</p>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<div class="col-md-8">
					<div class="product-content-right">
						<div class="row">
							<div class="col-sm-6">
								<div id="carousel" class="carousel slide" data-ride="carousel"
									style="width: 350px; height: 450px;">
									<!-- Menu -->
									<ol class="carousel-indicators">
										<li data-target="#carousel" data-slide-to="0" class="active"></li>
										<li data-target="#carousel" data-slide-to="1"></li>
										<li data-target="#carousel" data-slide-to="2"></li>
									</ol>

									<!-- Items -->
									<div class="carousel-inner">

										<div class="item active">
											<img src="./resources/img/product-6.jpg" alt="Slide 1" />
										</div>
										<div class="item">
											<img src="./resources/img/product-2.jpg" alt="Slide 2" />
										</div>
										<div class="item">
											<img src="./resources/img/product-3.jpg" alt="Slide 3" />
										</div>
									</div>
									<a href="#carousel" class="left carousel-control"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span>
									</a> <a href="#carousel" class="right carousel-control"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="product-inner">
									<h2 class="product-name">Sony Smart TV - 2015</h2>
									<div class="product-inner-price">
										<ins style="font-size: 18px;">R$70,00</ins>
									</div>

									<div role="tabpanel">
										<ul class="product-tab" role="tablist">
											<li role="presentation" class="active"><a href="#home"
												aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
										</ul>
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane fade in active"
												id="home">
												<h2>Product Description</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Nam tristique, diam in consequat iaculis, est purus
													iaculis mauris, imperdiet facilisis ante ligula at nulla.
													Quisque volutpat nulla risus, id maximus ex aliquet ut.
													Suspendisse potenti. Nulla varius lectus id turpis
													dignissim porta. Quisque magna arcu, blandit quis felis
													vehicula, feugiat gravida diam. Nullam nec turpis ligula.
													Aliquam quis blandit elit, ac sodales nisl. Aliquam eget
													dolor eget elit malesuada aliquet. In varius lorem lorem,
													semper bibendum lectus lobortis ac.</p>

												<p>Mauris placerat vitae lorem gravida viverra. Mauris
													in fringilla ex. Nulla facilisi. Etiam scelerisque
													tincidunt quam facilisis lobortis. In malesuada pulvinar
													neque a consectetur. Nunc aliquam gravida purus, non
													malesuada sem accumsan in. Morbi vel sodales libero.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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

				<!-- <div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
							<li><a href="#">Mobile Phone</a></li>
							<li><a href="#">Home accesseries</a></li>
							<li><a href="#">LED TV</a></li>
							<li><a href="#">Computer</a></li>
							<li><a href="#">Gadets</a></li>
						</ul>
					</div>
				</div> -->

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
							&copy; 2015 uCommerce. All Rights Reserved. <a
								href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a>
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

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="./resources/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="./resources/js/main.js"></script>

	<!-- Slider -->
	<script type="text/javascript" src="./resources/js/bxslider.min.js"></script>
	<script type="text/javascript" src="./resources/js/script.slider.js"></script>
</body>
</html>