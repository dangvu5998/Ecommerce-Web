<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!-- HEADER -->
<header>
	<!-- TOP HEADER -->
	<div id="top-header">
		<div class="container">
			<ul class="header-links pull-left">
				<li><a href="#"><i class="fa fa-phone"></i> 18000081</a></li>
				<li><a href="#"><i class="fa fa-envelope-o"></i> cnpm2019@gmail.com</a></li>
				<li><a href="#"><i class="fa fa-map-marker"></i> Số 1 Đại Cồ Việt, Đại học Bách Khoa Hà Nội</a></li>
			</ul>
			<ul class="header-links pull-right">
				<li><a href="#"><i class="fa fa-dollar"></i> VND</a></li>
				<!-- <li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li> -->
				<c:choose>
				<c:when test="${!empty pageContext.request.userPrincipal.name}">
					<li><a href="/"><i class="fa fa-user-o"></i> ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="/logout"><span class="fa fa-sign-out"></span> Đăng xuất</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="/login"><span class="fa fa-sign-in"></span> Đăng nhập</a></li>
				</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
	<!-- /TOP HEADER -->

	<!-- MAIN HEADER -->
	<div id="header">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- LOGO -->
				<div class="col-md-3">
					<div class="header-logo">
						<a href="/" class="logo">
							<img src="/resource/images/logo.png" alt="">
						</a>
					</div>
				</div>
				<!-- /LOGO -->

				<!-- SEARCH BAR -->
				<div class="col-md-6">
					<div class="header-search">
						<form>
							<select class="input-select">
								<option value="All">All Categories</option>
								<option value="Laptop">Laptop</option>
								<option value="Smartphone">Smartphone</option>
								<option value="Tablet">Tablet</option>
								<option value="Accessory">Accessory</option>
							</select>
							<input class="input" placeholder="Search here">
							<button class="search-btn">Search</button>
						</form>
					</div>
				</div>
				<!-- /SEARCH BAR -->

				<!-- ACCOUNT -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn">
						<!-- Wishlist -->
						<!-- <div>
							<a href="#">
								<i class="fa fa-heart-o"></i>
								<span>Wishlist</span>
								<div class="qty">2</div>
							</a>
						</div> -->
						<!-- /Wishlist -->

						<!-- Cart -->
						<security:authorize access="hasRole('ROLE_USER')">
						<div class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" href="/cart">
								<i class="fa fa-shopping-cart"></i>
								<span>Giỏ hàng</span>
								<div class="qty">3</div>
							</a>
							<div class="cart-dropdown">
								<div class="cart-list">
									<div class="product-widget">
										<div class="product-img">
											<img src="/resource/images/product01.png" alt="">
										</div>
										<div class="product-body">
											<h3 class="product-name"><a href="#">product name goes here</a></h3>
											<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
										</div>
										<button class="delete"><i class="fa fa-close"></i></button>
									</div>

									<div class="product-widget">
										<div class="product-img">
											<img src="/resource/images/product02.png" alt="">
										</div>
										<div class="product-body">
											<h3 class="product-name"><a href="#">product name goes here</a></h3>
											<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
										</div>
										<button class="delete"><i class="fa fa-close"></i></button>
									</div>
								</div>
								<div class="cart-summary">
									<small>3 Item(s) selected</small>
									<h5>SUBTOTAL: $2940.00</h5>
								</div>
								<div class="cart-btns">
									<a href="#">View Cart</a>
									<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
								</div>
							</div>
						</div>
						</security:authorize>
						<!-- /Cart -->

						<!-- Menu Toogle -->
						<div class="menu-toggle">
							<a href="#">
								<i class="fa fa-bars"></i>
								<span>Menu</span>
							</a>
						</div>
						<!-- /Menu Toogle -->
					</div>
				</div>
				<!-- /ACCOUNT -->
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</div>
	<!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
	<!-- container -->
	<div class="container">
		<!-- responsive-nav -->
		<div id="responsive-nav">
			<!-- NAV -->
			<ul class="main-nav nav navbar-nav">
				<li class="active"><a href="/products">Tất cả sản phẩm</a></li>
				<li><a href="#">Laptops</a></li>
				<li><a href="#">Smartphones</a></li>
				<li><a href="#">Tablets</a></li>
				<li><a href="#">Cameras</a></li>
				<li><a href="#">Phụ kiện</a></li>
			</ul>
			<!-- /NAV -->
		</div>
		<!-- /responsive-nav -->
	</div>
	<!-- /container -->
</nav>
<!-- /NAVIGATION -->
<script src="/resource/js/jquery.min.js"></script>
<script src="/resource/js/bootstrap.min.js"></script>
<script src="/resource/js/slick.min.js"></script>
<script src="/resource/js/nouislider.min.js"></script>
<script src="/resource/js/jquery.zoom.min.js"></script>
<script src="/resource/js/main.js"></script>