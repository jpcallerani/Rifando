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
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
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
						<li class="nav-item active"><a class="nav-link" href="#">Home<span
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
	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<c:forEach var="rifa" items="${rifas}">
					<li><img class="shadow p-3 mb-5 bg-white rounded"
						src="resources/img/img01.jpg" alt="Slide"
						style="height: 362px; width: 800px; margin-left: 50px;">
						<div class="caption-group">
							<h2 class="caption title">
								${rifa.idProduto.nome} <span class="primary">${rifa.idProduto.desc1}</span>
							</h2>
							<h4 class="caption subtitle">${rifa.idProduto.desc2}</h4>
							<br> <a class="btn btn-primary btn-lg"
								href="${pageContext.request.contextPath}/rifa" role="button"><i
								class="fa  fa-credit-card" style="margin-right: 10px;"> </i>Comprar	Rifa</a>
						</div> <c:set var="reservadas" value="0" scope="page" /> <c:set
							var="pagas" value="0" scope="page" /> <c:forEach
							var="rifaVendas" items="${rifa.rifaVenda}">
							<c:if test="${rifaVendas.status eq 'R'}">
								<c:set var="reservadas" value="${reservadas+1}" scope="page" />
							</c:if>
							<c:if test="${rifaVendas.status eq 'P'}">
								<c:set var="pagas" value="${pagas + 1}" scope="page" />
							</c:if>
						</c:forEach>
						<div class="promo-area">
							<div class="zigzag-bottom"></div>
							<div class="container">
								<div class="row">
									<div class="col-md-3 col-sm-6">
										<div class="single-promo promo1">
											<i class="fa fa-smile-o"></i> <i>${rifa.quantidadeNumero - fn:length(rifa.rifaVenda)}</i>
											<p>Disponíveis</p>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">
										<div class="single-promo promo3">
											<i class="fa fa-lock"></i> <i>${reservadas}</i>
											<p>Reservados</p>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">
										<div class="single-promo promo4">
											<i class="fa fa-check-square-o"></i><i>${pagas}</i>
											<p>Pagos</p>
										</div>
									</div>
								</div>
							</div>
						</div> <!-- End promo area --></li>
				</c:forEach>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<!-- End slider area -->

	<!-- End promo area -->

	<div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h2 class="section-title">Rifas Finalizadas</h2>
						<div class="product-carousel">
							<div class="single-product">
								<div class="product-f-image">
									<img src="resources/img/product-1.jpg" alt="">
									<!-- <div class="product-hover">
                                        <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                         
                                    </div>-->
								</div>

								<h2>
									<a href="single-product.html">Samsung Galaxy s5- 2015</a>
								</h2>

								<!-- <div class="product-carousel-price">
                                    <ins>$700.00</ins> <del>$100.00</del>
                                </div> -->
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="resources/img/product-2.jpg" alt="">
									<!--<div class="product-hover">
                                         <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>-->
								</div>

								<h2>Nokia Lumia 1320</h2>
								<!-- <div class="product-carousel-price">
                                    <ins>$899.00</ins> <del>$999.00</del>
                                </div> -->
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="resources/img/product-3.jpg" alt="">
									<!-- <div class="product-hover">
										<a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a> 
									</div>-->
								</div>

								<h2>LG Leon 2015</h2>

								<!--<div class="product-carousel-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>     -->
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="resources/img/product-4.jpg" alt="">
									<!-- <div class="product-hover">
										<a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a> 
									</div>-->
								</div>

								<h2>
									<a href="single-product.html">Sony microsoft</a>
								</h2>

								<!-- <div class="product-carousel-price">
									<ins>$200.00</ins>
									<del>$225.00</del>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End main content area -->

	<!-- <div class="brands-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="brand-wrapper">
						<div class="brand-list">
							<img src="resources/img/brand1.png" alt=""> <img
								src="resources/img/brand2.png" alt=""> <img
								src="resources/img/brand3.png" alt=""> <img
								src="resources/img/brand4.png" alt=""> <img
								src="resources/img/brand5.png" alt=""> <img
								src="resources/img/brand6.png" alt=""> <img
								src="resources/img/brand1.png" alt=""> <img
								src="resources/img/brand2.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- End brands area -->

	<div class="product-widget-area">
		<!-- <div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top Sellers</h2>
						<a href="" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-2.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Apple new mac book 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-3.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Recently Viewed</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-4.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony Smart Air Condtion</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-2.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top New</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-3.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-4.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="resources/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
	</div>
	<!-- End product widget area -->

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