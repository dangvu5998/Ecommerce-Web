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
            <h1 class="page-header">Khách hàng</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <c:if test="${empty model_customer.customerId}">
                        Thêm mới khách hàng
                    </c:if>
                    <c:if test="${not empty model_customer.customerId}">
                        Chỉnh sửa khách hàng
                    </c:if>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <form:form role="form" modelAttribute="model_customer" method="post" name="model_customer">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Họ và tên</label>
                                    <form:input cssClass="form-control" placeholder="Họ và tên"
                                                path="userDTO.fullName"/>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <form:input cssClass="form-control" placeholder="Email" path="userDTO.email"/>
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại</label>
                                    <form:input cssClass="form-control" placeholder="Số điện thoại"
                                                path="customerPhone"/>
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <form:textarea cssClass="form-control" rows="3" path="address"></form:textarea>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Chọn trạng thái</label>
                                    <form:select class="form-control" path="userDTO.enable">
                                        <form:option value="" label="Chọn trạng thái"/>
                                        <form:options items="${model_list_status}"/>
                                    </form:select>
                                </div>
                                <c:if test="${empty model_customer.customerId}">
                                    <button type="submit" class="align-self-end btn btn-success">Thêm mới</button>
                                </c:if>
                                <c:if test="${not empty model_customer.customerId}">
                                    <button type="submit" class="align-self-end btn btn-success">Lưu chỉnh sửa</button>
                                </c:if>
                                <button type="reset" class="align-self-end btn btn-social">Reset Button</button>
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
    </div>
    <!-- /.row -->
</div>
<!-- /.container-fluid -->

</body>
</html>
