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

    <title>Chỉnh sửa sản phẩm</title>

</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Sản phẩm</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <c:if test="${empty model_product.productId}">
                        Thêm mới sản phẩm
                    </c:if>
                    <c:if test="${not empty model_product.productId}">
                        Chỉnh sửa sản phẩm
                    </c:if>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <c:if test="${empty model_product.productId}">
                            <c:url var="adminProduct" value="/admin-product/add"/>
                        </c:if>
                        <c:if test="${not empty model_product.productId}">
                            <c:url var="adminProduct" value="/admin-product/edit"/>
                        </c:if>
                        <form:form role="form" modelAttribute="model_product" method="post" id="formSubmit"
                                   action="${adminProduct}">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Chọn thể loại</label>
                                    <form:select class="form-control" path="productCategory">
                                        <form:option value="" label="Chọn thể loại"/>
                                        <form:options items="${model_list_category}"/>
                                    </form:select>

                                    <label>Chọn hãng</label>
                                    <form:select class="form-control" path="productManufacturer">
                                        <form:option value="" label="Chọn hãng"/>
                                        <form:options items="${model_list_manufacture}"/>
                                    </form:select>
                                </div>

                                <div class="form-group">
                                    <label>Tên sản phẩm</label>
                                    <form:input cssClass="form-control" placeholder="Tên sản phẩm"
                                                path="productName"/>
                                </div>
                                <div class="form-group">
                                    <label>Mô tả ngắn</label>
                                    <form:textarea cssClass="form-control" rows="3"
                                                   path="productOverview"></form:textarea>
                                </div>
                                <div class="form-group">
                                    <label>Miêu tả sản phẩm</label>
                                    <form:textarea cssClass="form-control" rows="5"
                                                   path="productDescription"></form:textarea>
                                </div>

                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Giá sản phẩm</label>
                                    <form:input cssClass="form-control" placeholder="Giá bán sản phẩm"
                                                path="productPrice"/>
                                </div>
                                <div class="form-group">
                                    <label>Khuyến mại</label>
                                    <form:input cssClass="form-control" placeholder="Khuyến mại"
                                                path="productSalePrice"/>
                                </div>
                                <div class="form-group">
                                    <label>Số lượng</label>
                                    <form:input cssClass="form-control" placeholder="Số lượng"
                                                path="quantity"/>
                                </div>
                                <button type="submit" class="align-self-end btn btn-success"
                                        id="btnCreateAndUpdateCustomer">
                                    <c:if test="${empty model_product.productId}">Thêm mới</c:if>
                                    <c:if test="${not empty model_product.productId}">Lưu chỉnh sửa</c:if>
                                </button>
                                <button type="reset" class="align-self-end btn btn-social">Làm mới</button>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <form:hidden path="productId" id="productId"/>
                        </form:form>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
<!-- /.container-fluid -->
<script>
</script>
</body>
</html>
