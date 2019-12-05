<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>Danh sách khách hàng</title>
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Tables</h1>
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
                <button type="button" class="btn btn-success">
                    <span class="btn-label"><i class="fa fa-refresh"></i></span> Làm mới
                </button>
                <button type="button" class="btn btn-labeled btn-primary">
                    <span class="btn-label"><i class="fa fa-filter"></i></span> Tìm kiếm
                </button>
                <c:url var="addCustomerUrl" value="/admin-customer/edit"/>
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
                    DataTables Advanced Tables
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Họ và tên</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Trạng thái</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${model_customer}">
                                <tr class="odd gradeX">
                                    <td>${item.customerId}</td>
                                    <td>${item.userDTO.fullName}</td>
                                    <td>${item.userDTO.email}</td>
                                    <td class="center">${item.customerPhone}</td>
                                    <td class="center">${item.address}</td>
                                    <c:if test="${item.userDTO.enable == 0}">
                                        <td>
                                            <button type="button" class="btn btn-danger">Chưa kích hoạt</button>
                                        </td>
                                    </c:if>
                                    <c:if test="${item.userDTO.enable == 1}">
                                        <td>
                                            <button type="button" class="btn btn-success">Đã kích hoạt</button>
                                        </td>
                                    </c:if>
                                    <td>
                                        <c:url var="editCustomerUrl" value="/admin-customer/edit">
                                            <c:param name="customerId" value="${item.customerId}"/>
                                        </c:url>
                                        <a href="${editCustomerUrl}" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>

                                        <a href="#" data-id="85"
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
</body>

</html>