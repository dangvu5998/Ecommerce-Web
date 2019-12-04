<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
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
    <!-- Timeline CSS -->
    <link href="<c:url value='/template/admin/css/timeline.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom CSS -->
    <link href="<c:url value='/template/admin/css/startmin.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Morris Charts CSS -->
    <link href="<c:url value='/template/admin/css/morris.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Fonts -->
    <link href="<c:url value='/template/admin/css/font-awesome.min.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
<script src="<c:url value='/template/admin/js/jquery.min.js' />"></script>
<script src="<c:url value='/template/admin/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/template/admin/js/metisMenu.min.js' />"></script>
<script src="<c:url value='/template/admin/js/raphael.min.js' />"></script>
<script src="<c:url value='/template/admin/js/morris.min.js' />"></script>
<script src="<c:url value='/template/admin/js/morris-data.js' />"></script>
<script src="<c:url value='/template/admin/js/startmin.js' />"></script>

</body>
</html>
