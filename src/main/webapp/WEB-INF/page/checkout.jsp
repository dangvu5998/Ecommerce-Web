<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp"%>
	<title>Đặt hàng</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">Đặt hàng</h3>
						<ul class="breadcrumb-tree">
							<li><a href="/">Trang chủ</a></li>
							<li class="active">Đặt hàng</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Hóa đơn</h3>
							</div>
							<div class="form-group">
								<label for="addressBill">Địa chỉ:</label>
								<input id="addressBill" class="input" type="text" name="address" placeholder="Địa chỉ">
							</div>
						</div>
						<!-- /Billing Details -->

						<!-- Order notes -->
						<div class="order-notes">
							<label for="noteBill">Chú thích:</label>
							<textarea id="noteBill" class="input" placeholder="Chú thích"></textarea>
						</div>
						<!-- /Order notes -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Đơn hàng</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>SẢN PHẨM</strong></div>
								<div><strong>GIÁ TIỀN</strong></div>
							</div>
							<c:set var="cart" value="${pageContext.request.getAttribute('cart')}"/>
							<c:set var="cartItems" value="${cart.getCartItem()}" />
							<div class="order-products">
								<c:forEach var="cartItem" items="${cartItems}">
								<div class="order-col">
									<c:set var="product" value="${cartItem.product}" />
									<div>${cartItem.quality}x ${product.productName}</div>
									<div>${product.productPrice}</div>
								</div>
								</c:forEach>
							</div>
							<div class="order-col">
								<div>Shiping</div>
								<div><strong>MIỄN PHÍ</strong></div>
							</div>
							<div class="order-col">
								<div><strong>Tổng tiền:</strong></div>
								<div><strong class="order-total">${cart.totalPrice}</strong></div>
							</div>
						</div>
						<a href="#" class="primary-btn order-submit">đặt hàng</a>
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

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
