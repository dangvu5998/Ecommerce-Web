<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="listProductUrl" value="/admin-product/list">
    <c:param name="category" value="${model_product.get(0).productCategory}"/>
</c:url>
<c:url var="addProductUrl" value="/admin-product/edit"/>
<c:url var="deleteProductUrl" value="/admin-product/delete"/>
<!DOCTYPE html>
<html>

<head>
    <title>Danh sách khách hàng</title>
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Sản phẩm</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <!-- Single button -->
    <div style="margin: 10px">
        <div>
            <div class="dropdown" id="dropdown">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    Tác vụ
                </button>
                <button onclick="window.location.href = '${listProductUrl}'" type="button" class="btn btn-success">
                    <span class="btn-label"><i class="fa fa-refresh"></i></span> Làm mới
                </button>
                <button type="button" class="btn btn-labeled btn-primary">
                    <span class="btn-label"><i class="fa fa-filter"></i></span> Tìm kiếm
                </button>
                <button onclick="window.location.href = '${addProductUrl}'" type="button" class="btn btn-success"
                        id="btn-add"
                        style="float: right">
                    <span class="btn-label"><i class="fa fa-plus"></i></span> Thêm mới
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Xóa lựa chọn</a>
                    <a class="dropdown-item" href="#">Link 1</a>
                    <a class="dropdown-item" href="#">Link 2</a>
                </div>
            </div>

        </div>
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Danh sách sản phẩm
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Thể loại</th>
                                <th>Tên sản phẩm</th>
                                <th>Mô tả ngắn</th>
                                <th>Giá bán</th>
                                <th>Khuyến mại</th>
                                <th>Số lượng</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${model_product}">
                                <tr class="odd gradeX">
                                    <td>${item.productId}</td>
                                    <td>${item.productCategory}</td>
                                    <td>${item.productName}</td>
                                    <td class="center">${item.productOverview}</td>
                                    <td class="center">${item.productPrice}</td>
                                    <td class="center">${item.productSalePrice}</td>
                                    <td class="center">${item.quantity}</td>
                                    <td width="90px">
                                        <c:url var="editProductUrl" value="/admin-product/edit">
                                            <c:param name="productId" value="${item.productId}"/>
                                        </c:url>
                                        <a href="${editProductUrl}" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                        <a href="#" data-id="85" onclick="confirmDelete(${item.productId})"
                                           class="btn btn-icon btn-sm btn-danger deleteDialog tip">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <!-- /.row -->
</div>
<script>
    function confirmDelete(id) {
        swal({
            title: "Xóa sản phẩm",
            text: "Bạn có chắc chắn muốn xóa sản phẩm?",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-success",
            cancelButtonClass: "btn-danger",
            confirmButtonText: "Xác nhận",
            cancelButtonText: "Hủy bỏ",
            showLoaderOnConfirm: true,
        }).then(function (isConfirm) {
            if (isConfirm.value) {
                <%--window.location.href = "${logoutUrl}";--%>
                swal({
                    title: "Xóa sản phẩm!",
                    text: "Sản phẩm đã được xóa.",
                    type: "success"
                }).then(function (isConfirm) {
                    if (isConfirm.value) {
                        window.location.href = "${deleteProductUrl}?productId=" + id;
                    }
                })
            } else {
            }
        });
    }
</script>
</body>

</html>