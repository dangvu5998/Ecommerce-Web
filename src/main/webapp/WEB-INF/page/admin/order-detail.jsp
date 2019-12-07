<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>

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
                        <c:if test="${empty model_customer.customerId}">
                            <c:url var="adminCustomer" value="/admin-customer/add"/>
                        </c:if>
                        <c:if test="${not empty model_customer.customerId}">
                            <c:url var="adminCustomer" value="/admin-customer/edit"/>
                        </c:if>
                        <form:form role="form" method="post" id="formSubmit" action="${adminCustomer}" >
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h3>Thông tin khách hàng</h3>
                                </div>
                                <div class="form-group">
                                    <label>Họ tên: </label>
                                    <p class="form-control-static">email@example.com</p>
                                </div>
                                <div class="form-group">
                                    <label>Email: </label>
                                    <p class="form-control-static">email@example.com</p>
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại: </label>
                                    <p class="form-control-static">email@example.com</p>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h3>Thông tin đơn hàng</h3>
                                </div>
                                <div class="form-group">
                                    <label>Mã đơn hàng</label>
                                    <p class="form-control-static">email@example.com</p>
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ giao hàng</label>
                                    <p class="form-control-static">email@example.com</p>
                                </div>
                                <div class="form-group">
                                    <label>Ghi chú</label>
                                    <p class="form-control-static">email@example.com</p>
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
                            <div class="row">
                                <div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
                                </div>
                                <div class="col-xs-4">
                                    <h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
                                </div>
                                <div class="col-xs-6">
                                    <div class="col-xs-6 text-right">
                                        <h4><strong>25.00 <span class="text-muted">x</span></strong></h4>
                                    </div>
                                    <div class="col-xs-4">
                                        <input type="text" class="form-control input-sm" value="1" disabled>
                                    </div>
<%--                                    <div class="col-xs-2">--%>
<%--                                        <button type="button" class="btn btn-link btn-xs">--%>
<%--                                            <span class="glyphicon glyphicon-trash"> </span>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
                                </div>
                                <div class="col-xs-4">
                                    <h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
                                </div>
                                <div class="col-xs-6">
                                    <div class="col-xs-6 text-right">
                                        <h4><strong>25.00 <span class="text-muted">x</span></strong></h4>
                                    </div>
                                    <div class="col-xs-4">
                                        <input type="text" class="form-control input-sm" value="1" disabled>
                                    </div>
<%--                                    <div class="col-xs-2">--%>
<%--                                        <button type="button" class="btn btn-link btn-xs">--%>
<%--                                            <span class="glyphicon glyphicon-trash"> </span>--%>
<%--                                        </button>--%>
<%--                                    </div>--%>
                                </div>
                            </div>
                            <hr>
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
                                    <h4 class="text-right">Tổng giá: <strong>$50.00</strong></h4>
                                </div>
                                <div class="col-xs-3">
                                    <button type="button" class="btn btn-success btn-block">
                                        Duyệt đơn hàng
                                    </button>
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
    <%--$('#btnCreateAndUpdateCustomer').click(function (e) {--%>
    <%--    e.preventDefault();--%>
    <%--    var formFields = $('*:not(.no-serialize)', '#formSubmit').serialize();--%>
    <%--    if ($('#customerId').val() != "") {--%>
    <%--        updateCustomer(formFields);--%>
    <%--    } else {--%>
    <%--        addCustomer(formFields);--%>
    <%--    }--%>
    <%--});--%>

    <%--function updateCustomer(formFields) {--%>
    <%--    $('#formSubmit').submit(function (e) {--%>
    <%--        $.ajax({--%>
    <%--            url: '${apiAdminCustomer}',--%>
    <%--            type: 'PUT',--%>
    <%--            global: false,--%>
    <%--            contentType : 'application/json; charset=utf-8',--%>
    <%--            data: JSON.stringify(formFields),--%>
    <%--            async: false,--%>
    <%--            success: function (result) {--%>
    <%--            },--%>
    <%--            error: function (error) {--%>
    <%--            }--%>
    <%--        });--%>
    <%--    });--%>
    <%--}--%>

    <%--function addCustomer(formFields) {--%>
    <%--    $('#formSubmit').submit(function (e) {--%>
    <%--        $.ajax({--%>
    <%--            url: '${apiAdminCustomer}',--%>
    <%--            type: 'post',--%>
    <%--            global: false,--%>
    <%--            contentType : 'application/json; charset=utf-8',--%>
    <%--            data: JSON.stringify(formFields),--%>
    <%--            async: false,--%>
    <%--            success: function (result) {--%>
    <%--            },--%>
    <%--            error: function (error) {--%>
    <%--            }--%>
    <%--        });--%>
    <%--    });--%>
    <%--}--%>
</script>
</body>
</html>
