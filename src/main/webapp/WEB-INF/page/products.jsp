<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp"%>
	<title>Mua đồ điện tử online</title>

</head>
<body>
	<%@ include file="navbar.jsp"%>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- ASIDE -->
					<div id="aside" class="col-md-3">
						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Loại</h3>
							<div class="checkbox-filter">

								<div class="input-checkbox">
									<input type="checkbox" id="category-1">
									<label for="category-1">
										<span></span>
										Laptops
										<!-- <small>(120)</small> -->
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-2">
									<label for="category-2">
										<span></span>
										Smartphones
										<!-- <small>(740)</small> -->
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-3">
									<label for="category-3">
										<span></span>
										Cameras
										<!-- <small>(1450)</small> -->
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-4">
									<label for="category-4">
										<span></span>
										Phụ kiện
										<!-- <small>(578)</small> -->
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-5">
									<label for="category-5">
										<span></span>
										Laptops
										<small>(120)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-6">
									<label for="category-6">
										<span></span>
										Smartphones
										<small>(740)</small>
									</label>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Mức giá</h3>
							<div class="price-filter">
								<div id="price-slider"></div>
								<div class="input-number price-min">
									<input id="price-min" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
								<span>-</span>
								<div class="input-number price-max">
									<input id="price-max" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Thương hiệu</h3>
							<div class="checkbox-filter">
								<div class="input-checkbox">
									<input type="checkbox" id="brand-1">
									<label for="brand-1">
										<span></span>
										SAMSUNG
										<!-- <small>(578)</small> -->
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-2">
									<label for="brand-2">
										<span></span>
										APPLE
										<!-- <small>(125)</small> -->
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-3">
									<label for="brand-3">
										<span></span>
										ACER
										<!-- <small>(755)</small> -->
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-4">
									<label for="brand-4">
										<span></span>
										ASUS
										<!-- <small>(578)</small> -->
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-6">
									<label for="brand-6">
										<span></span>
										SONY
										<!-- <small>(755)</small> -->
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-7">
									<label for="brand-7">
										<span></span>
										DELL
										<!-- <small>(755)</small> -->
									</label>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

					</div>
					<!-- /ASIDE -->

					<!-- STORE -->
					<div id="store" class="col-md-9">
						<!-- store products -->
						<div class="row">
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[0].productName}" />
									<jsp:param name="id" value="${products[0].productId}" />
									<jsp:param name="category" value="${products[0].productCategory}" />
									<jsp:param name="price" value="${products[0].productPrice}" />
									<jsp:param name="salePrice" value="${products[0].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[1].productName}" />
									<jsp:param name="id" value="${products[1].productId}" />
									<jsp:param name="category" value="${products[1].productCategory}" />
									<jsp:param name="price" value="${products[1].productPrice}" />
									<jsp:param name="salePrice" value="${products[1].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="clearfix visible-sm visible-xs"></div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[2].productName}" />
									<jsp:param name="id" value="${products[2].productId}" />
									<jsp:param name="category" value="${products[2].productCategory}" />
									<jsp:param name="price" value="${products[2].productPrice}" />
									<jsp:param name="salePrice" value="${products[2].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="clearfix visible-lg visible-md"></div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[3].productName}" />
									<jsp:param name="id" value="${products[3].productId}" />
									<jsp:param name="category" value="${products[3].productCategory}" />
									<jsp:param name="price" value="${products[3].productPrice}" />
									<jsp:param name="salePrice" value="${products[3].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="clearfix visible-sm visible-xs"></div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[4].productName}" />
									<jsp:param name="id" value="${products[4].productId}" />
									<jsp:param name="category" value="${products[4].productCategory}" />
									<jsp:param name="price" value="${products[4].productPrice}" />
									<jsp:param name="salePrice" value="${products[4].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[5].productName}" />
									<jsp:param name="id" value="${products[5].productId}" />
									<jsp:param name="category" value="${products[5].productCategory}" />
									<jsp:param name="price" value="${products[5].productPrice}" />
									<jsp:param name="salePrice" value="${products[5].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[6].productName}" />
									<jsp:param name="id" value="${products[6].productId}" />
									<jsp:param name="category" value="${products[6].productCategory}" />
									<jsp:param name="price" value="${products[6].productPrice}" />
									<jsp:param name="salePrice" value="${products[6].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[7].productName}" />
									<jsp:param name="id" value="${products[7].productId}" />
									<jsp:param name="category" value="${products[7].productCategory}" />
									<jsp:param name="price" value="${products[7].productPrice}" />
									<jsp:param name="salePrice" value="${products[7].productSalePrice}" />
								</jsp:include>
							</div>
							<div class="clearfix visible-sm visible-xs"></div>
							<div class="col-md-4 col-xs-6">
								<jsp:include page="productItem.jsp">
									<jsp:param name="name" value="${products[8].productName}" />
									<jsp:param name="id" value="${products[8].productId}" />
									<jsp:param name="category" value="${products[8].productCategory}" />
									<jsp:param name="price" value="${products[8].productPrice}" />
									<jsp:param name="salePrice" value="${products[8].productSalePrice}" />
								</jsp:include>
							</div>
						</div>


						<!-- store bottom filter -->
						<div class="store-filter clearfix">
							<c:if test="${productsCount > 0}">
							<span class="store-qty">Đang hiển thị sản phẩm ${(page - 1) * 9 + 1}-${((page - 1) * 9) + 9 > productsCount ? productsCount : ((page - 1) * 9) + 9}</span>
							</c:if>
							<c:if test="${productsCount <= 0}">
							<span class="store-qty">Không tìm thấy sản phẩm phù hợp</span>
							</c:if>
							<ul class="store-pagination">
								<c:if test="${page > 1}">
								<li><a href="${currentUrl}page=${page-1}"><i class="fa fa-angle-left"></i></a></li>
								</c:if>
								<c:forEach var="pagination" begin="${beginPagination}" end="${endPagination}">
									<li class="${pagination eq page ? 'active ': ''}">
										<a href="${currentUrl}page=${pagination}">${pagination}</a>
									</li>
								</c:forEach>
								<c:if test="${page < maxPage}">
								<li><a href="${currentUrl}page=${page+1}"><i class="fa fa-angle-right"></i></a></li>
								</c:if>
							</ul>
						</div>
						<!-- /store bottom filter -->
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
	<%@ include file="footer.jsp"%> 
	<%@ include file="generalJS.jsp"%> 
</body>
</html>

