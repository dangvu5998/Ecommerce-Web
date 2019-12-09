<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<c:url var="confirmOrder" value="/admin-customer-order/confirm">
    <c:param name="customerOrderId" value="${model_customer_order.customerOrderId}"/>
</c:url>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Chỉnh sửa khách hàng</title>

</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Đơn hàng</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Chi tiết đơn hàng
                </div>
                <div class="panel-body">
                    <div class="row">
                        <form:form role="form" method="post" id="formSubmit" modelAttribute="model_customer_order">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h3>Thông tin khách hàng</h3>
                                </div>
                                <div class="form-group">
                                    <label>Họ tên: </label>
                                    <p class="form-control-static">${model_customer_order.cartDTO.customerDTO.userDTO.fullName}</p>
                                </div>
                                <div class="form-group">
                                    <label>Email: </label>
                                    <p class="form-control-static">${model_customer_order.cartDTO.customerDTO.userDTO.email}</p>
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại: </label>
                                    <p class="form-control-static">${model_customer_order.cartDTO.customerDTO.customerPhone}</p>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h3>Thông tin đơn hàng</h3>
                                </div>
                                <div class="form-group">
                                    <label>Mã đơn hàng</label>
                                    <p class="form-control-static">${model_customer_order.code}</p>
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ giao hàng</label>
                                    <p class="form-control-static">${model_customer_order.address}</p>
                                </div>
                                <div class="form-group">
                                    <label>Ghi chú</label>
                                    <p class="form-control-static">${model_customer_order.note}</p>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </form:form>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
        <div class="container">
            <div class="row">
                <div class="col-xs-10">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <h5><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <c:forEach var="item" items="${model_customer_order.cartDTO.cartItemDTOList}">
                                <div class="row">
                                    <c:set var="thumbnail" value="${item.productDTO.thumbnail}"/>
                                    <div class="col-xs-2"><img class="img-responsive"
                                                               src="<c:url value="/images/image/${thumbnail}" />">
                                    </div>
                                    <div class="col-xs-4">
                                        <h4 class="product-name"><strong>${item.productDTO.productName}</strong></h4>
                                        <h4><small>${item.productDTO.productOverview}</small></h4>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="col-xs-6 text-right">
                                            <h4><strong>${item.productDTO.productSalePrice} <span
                                                    class="text-muted">x</span></strong></h4>
                                        </div>
                                        <div class="col-xs-4">
                                            <input type="text" class="form-control input-sm" value="${item.quality}"
                                                   disabled>
                                        </div>
                                            <%--                                    <div class="col-xs-2">--%>
                                            <%--                                        <button type="button" class="btn btn-link btn-xs">--%>
                                            <%--                                            <span class="glyphicon glyphicon-trash"> </span>--%>
                                            <%--                                        </button>--%>
                                            <%--                                    </div>--%>
                                    </div>
                                </div>
                                <hr>
                            </c:forEach>
                            <%--                            <div class="row">--%>
                            <%--                                <div class="text-center">--%>
                            <%--                                    <div class="col-xs-3">--%>
                            <%--                                        <button type="button" class="btn btn-default btn-sm btn-block">--%>
                            <%--                                            Update cart--%>
                            <%--                                        </button>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                        </div>
                        <div class="panel-footer">
                            <div class="row text-center">
                                <div class="col-xs-9">
                                    <h4 class="text-right">Tổng giá: <strong><fmt:formatNumber pattern="0.00"
                                                                                               value="${model_customer_order.cartDTO.totalPrice}"/></strong>
                                    </h4>
                                </div>
                                <div class="col-xs-3">
                                    <c:if test="${model_customer_order.status==0}">
                                        <button type="button" class="btn btn-success btn-block"
                                                onclick="confirmOrder()">
                                            Duyệt đơn hàng
                                        </button>
                                    </c:if>
                                    <c:if test="${model_customer_order.status==1}">
                                        <button type="button" class="btn btn-success btn-block" disabled>
                                            Đơn hàng đã được duyệt
                                        </button>
                                    </c:if>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container-fluid -->
<script>
    function confirmOrder() {
        swal({
            title: "Xác nhận đơn hàng",
            text: "Bạn có chắc chắn muốn xác nhận đơn hàng?",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-success",
            cancelButtonClass: "btn-danger",
            confirmButtonText: "Đồng ý",
            cancelButtonText: "Hủy bỏ",
            showLoaderOnConfirm: true,
        }).then(function (isConfirm) {
            if (isConfirm.value) {
                <%--window.location.href = "${logoutUrl}";--%>
                swal({
                    title: "Xác nhận đơn hàng",
                    text: "Đơn hàng đã được duyệt",
                    type: "success"
                }).then(function (isConfirm) {
                    if (isConfirm.value) {
                        window.location.href = "${confirmOrder}"
                    }
                })
            } else {
            }
        });
    }
</script>
</body>
</html>
