<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="listCustomerUrl" value="/admin-customer/list"/>
<c:url var="addCustomerUrl" value="/admin-customer/edit"/>
<!DOCTYPE html>
<html>

<head>
    <title>Danh sách đơn hàng</title>
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Đơn hàng</h1>
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
                <button onclick="window.location.href = '${listCustomerUrl}'" type="button" class="btn btn-success">
                    <span class="btn-label"><i class="fa fa-refresh"></i></span> Làm mới
                </button>
                <button type="button" class="btn btn-labeled btn-primary">
                    <span class="btn-label"><i class="fa fa-filter"></i></span> Tìm kiếm
                </button>
                <button onclick="window.location.href = '${addCustomerUrl}'" type="button" class="btn btn-success"
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
                    Danh sách đơn hàng
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Mã đơn hàng</th>
                                <th>Khách hàng</th>
                                <th>Tổng giá</th>
                                <th>Địa chỉ</th>
                                <th>Trạng thái</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${model_customer_order}">
                                <tr class="odd gradeX">
                                    <td>${item.customerOrderId}</td>
                                    <td>${item.code}</td>
                                    <td>${item.cartDTO.customerDTO.userDTO.fullName}</td>
                                    <td class="center">${item.cartDTO.totalPrice}</td>
                                    <td class="center">${item.address}</td>
                                    <c:if test="${item.status == 0}">
                                        <td>
                                            <button type="button" class="btn btn-warning">Chưa duyệt</button>
                                        </td>
                                    </c:if>
                                    <c:if test="${item.status == 1}">
                                        <td>
                                            <button type="button" class="btn btn-success">Đã duyệt</button>
                                        </td>
                                    </c:if>
                                    <td>
                                        <c:url var="showCustomerOrderUrl" value="/admin-customer-order/show">
                                        </c:url>
                                        <a href="${showCustomerOrderUrl}" data-id="85" title="Chi tiết đơn hàng"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-eye"></i>
                                        </a>

                                        <a href="#" data-id="85" onclick="confirmDelete()" title="Xóa đơn hàng"
                                           class="btn btn-icon btn-sm btn-danger deleteDialog tip">
                                            <i class="fa fa-trash"></i>
                                        </a>

                                        <a href="${editCustomerUrl}" data-id="85" title="Duyệt đơn hàng"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-globe"></i>
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
    function confirmDelete() {
        swal({
            title: "Xóa khách hàng",
            text: "Bạn có chắc chắn muốn xóa khách hàng?",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-success",
            cancelButtonClass: "btn-danger",
            confirmButtonText: "Xác nhận",
            cancelButtonText: "Hủy bỏ",
            showLoaderOnConfirm: true,
        }).then(function(isConfirm) {
            if (isConfirm.value) {
                <%--window.location.href = "${logoutUrl}";--%>
                swal("Deleted!", "Your imaginary file has been deleted.", "success");
            }else{
                swal("Cancelled", "Your imaginary file is safe :)", "error");
            }
        });
    }
</script>
</body>

</html>