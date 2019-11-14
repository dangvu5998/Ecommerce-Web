<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ShopIeasy</title>
	<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="resource/css/bootstrap.min.css"/>

	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="resource/css/slick.css"/>
	<link type="text/css" rel="stylesheet" href="resource/css/slick-theme.css"/>

	<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="resource/css/nouislider.min.css"/>

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="resource/css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="resource/css/style.css"/>
</head>
<body>
 <%@ include file="navbar.jsp"%>
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<div class="shop">
						<div class="shop-img">
							<img src="/resource/images/shop01.png" alt="">
						</div>
						<div class="shop-body">
							<h3>Laptop<br>Collection</h3>
							<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<div class="shop">
						<div class="shop-img">
							<img src="/resource/images/shop03.png" alt="">
						</div>
						<div class="shop-body">
							<h3>Accessories<br>Collection</h3>
							<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<div class="shop">
						<div class="shop-img">
							<img src="/resource/images/shop02.png" alt="">
						</div>
						<div class="shop-body">
							<h3>Cameras<br>Collection</h3>
							<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
				<!-- /shop -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- new products -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">Sản phẩm mới</h3>
						<!-- <div class="section-nav">
							<ul class="section-tab-nav tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Laptops</a></li>
								<li><a data-toggle="tab" href="#tab1">Smartphones</a></li>
								<li><a data-toggle="tab" href="#tab1">Cameras</a></li>
								<li><a data-toggle="tab" href="#tab1">Accessories</a></li>
							</ul>
						</div> -->
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab1" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-1">
									<!-- product -->
									<c:forEach items="${products}" var="prod">
									<div class="product">
										<div class="product-img">
											<img src="/resource/images/products/${prod.productId}.jpg" height="250" alt="product">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">NEW</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">${prod.productCategory}</p>
											<h3 class="product-name"><a href="/products/${prod.productId}">${prod.productName}</a></h3>
											<c:choose>
											<c:when test="${empty prod.productSalePrice}">
											<h4 class="product-price">${prod.productPrice}đ</h4>
											</c:when>
											<c:otherwise>
											<h4 class="product-price">${prod.productSalePrice}đ <del class="product-old-price">${prod.productPrice}đ</del></h4>
											</c:otherwise>
											</c:choose>
											<div class="product-rating">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
												<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
										</div>
									</div>
									</c:forEach>
								</div>
							</div>
							<div id="slick-nav-1" class="products-slick-nav"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

 <!-- <%@ include file="productGrid.jsp"%>  -->
 <%@ include file="footer.jsp"%> 
	<!-- jQuery Plugins -->
	<script src="/resource/js/jquery.min.js"></script>
	<script src="/resource/js/bootstrap.min.js"></script>
	<script src="/resource/js/slick.min.js"></script>
	<script src="/resource/js/nouislider.min.js"></script>
	<script src="/resource/js/jquery.zoom.min.js"></script>
	<script src="/resource/js/main.js"></script>
</body>
</html>