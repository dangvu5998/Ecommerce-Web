<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="logoutUrl" value="/admin-logout"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Trang quản trị</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/template/admin/css/bootstrap.min.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- MetisMenu CSS -->
    <link href="<c:url value='/template/admin/css/metisMenu.min.css' />" rel="stylesheet" type="text/css" media="all"/>

    <!-- DataTables CSS -->
    <link href="<c:url value='/template/admin/css/dataTables/dataTables.bootstrap.css' />" rel="stylesheet" type="text/css" media="all"/>

    <!-- DataTables Responsive CSS -->
    <link href="<c:url value='/template/admin/css/dataTables/dataTables.responsive.css' />" rel="stylesheet" type="text/css" media="all"/>

    <!-- Timeline CSS -->
    <link href="<c:url value='/template/admin/css/timeline.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom CSS -->
    <link href="<c:url value='/template/admin/css/startmin.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Morris Charts CSS -->
    <link href="<c:url value='/template/admin/css/morris.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Fonts -->
    <link href="<c:url value='/template/admin/css/font-awesome.min.css' />" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="<c:url value='/template/admin/sweet/sweetalert2.min.css' />" rel="stylesheet" type="text/css"
          media="all"/>
    <script src="<c:url value='/template/admin/js/jquery.min.js' />"></script>
    <script src="<c:url value='/template/admin/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/template/admin/sweet/sweetalert2.min.js' />"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]><![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <%@ include file="/common/admin/header.jsp" %>

        <%@ include file="/common/admin/menu.jsp" %>
    </nav>

    <div id="page-wrapper">
        <dec:body/>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="<c:url value='/template/admin/js/metisMenu.min.js' />"></script>
<%--<script src="<c:url value='/template/admin/js/raphael.min.js' />"></script>--%>
<%--<script src="<c:url value='/template/admin/js/morris.min.js' />"></script>--%>
<%--<script src="<c:url value='/template/admin/js/morris-data.js' />"></script>--%>
<script src="<c:url value='/template/admin/js/dataTables/jquery.dataTables.min.js' />"></script>
<script src="<c:url value='/template/admin/js/dataTables/dataTables.bootstrap.min.js' />"></script>
<script src="<c:url value='/template/admin/js/startmin.js' />"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>
</html>
