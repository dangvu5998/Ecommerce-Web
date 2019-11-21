<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:if test="${not empty param.id}">
	<div class="product">
		<div class="product-img">
			<span class="product-img-helper"></span>
			<img src="/resource/images/products/${param.id}.jpg" alt="${param.name}">
			<div class="product-label">
				<span class="sale">-30%</span>
				<span class="new">NEW</span>
			</div>
		</div>
		<div class="product-body">
			<p class="product-category">${param.category}</p>
			<h3 class="product-name"><a href="/products/${param.id}">${param.name}</a></h3>
			<c:choose>
			<c:when test="${empty param.salePrice}">
			<h4 class="product-price">${param.price}đ</h4>
			</c:when>
			<c:otherwise>
			<h4 class="product-price">${param.salePrice}đ <del class="product-old-price">${param.price}đ</del></h4>
			</c:otherwise>
			</c:choose>
			<div class="product-rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
			</div>
			<!-- <div class="product-btns">
				<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
				<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
				<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
			</div> -->
		</div>
		<div class="add-to-cart">
			<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
		</div>
	</div>
</c:if>