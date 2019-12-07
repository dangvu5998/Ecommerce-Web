<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!-- Sidebar -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                </span>
                </div>
                <!-- /input-group -->
            </li>
            <li>
                <a href='<c:url value="/admin-home"/> ' class="active"><i class="fa fa-dashboard fa-fw"></i>
                    Dashboard</a>
            </li>
            <li>
                <a href="<c:url value="/admin-customer/list"/> "><i class="fa fa-table fa-fw"></i> Khách hàng</a>
            </li>
            <%--            <li>--%>
            <%--                <a href="<c:url value="/admin-product/list"/> "><i class="fa fa-edit fa-fw"></i></a>--%>
            <%--            </li>--%>
            <li>
                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Sản phẩm<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href='<c:url value="/admin-product/list?category=Smartphone"/> '>Smartphone</a>
                    </li>
                    <li>
                        <a href='<c:url value="/admin-product/list?category=Laptop"/> '>Laptop</a>
                    </li>
                    <li>
                        <a href='<c:url value="/admin-product/list?category=Tablet"/> '>Tablet</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="<c:url value="/admin-customer-order/list"/> "><i class="fa fa-table fa-fw"></i> Đơn hàng</a>
            </li>
            <%--            <li>--%>
            <%--                <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>--%>
            <%--                <ul class="nav nav-second-level">--%>
            <%--                    <li>--%>
            <%--                        <a href="panels-wells.html">Panels and Wells</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="buttons.html">Buttons</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="notifications.html">Notifications</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="typography.html">Typography</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="icons.html"> Icons</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="grid.html">Grid</a>--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <!-- /.nav-second-level -->--%>
            <%--            </li>--%>
            <%--            <li>--%>
            <%--                <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>--%>
            <%--                <ul class="nav nav-second-level">--%>
            <%--                    <li>--%>
            <%--                        <a href="#">Second Level Item</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="#">Second Level Item</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="#">Third Level <span class="fa arrow"></span></a>--%>
            <%--                        <ul class="nav nav-third-level">--%>
            <%--                            <li>--%>
            <%--                                <a href="#">Third Level Item</a>--%>
            <%--                            </li>--%>
            <%--                            <li>--%>
            <%--                                <a href="#">Third Level Item</a>--%>
            <%--                            </li>--%>
            <%--                            <li>--%>
            <%--                                <a href="#">Third Level Item</a>--%>
            <%--                            </li>--%>
            <%--                            <li>--%>
            <%--                                <a href="#">Third Level Item</a>--%>
            <%--                            </li>--%>
            <%--                        </ul>--%>
            <%--                        <!-- /.nav-third-level -->--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <!-- /.nav-second-level -->--%>
            <%--            </li>--%>
            <%--            <li>--%>
            <%--                <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>--%>
            <%--                <ul class="nav nav-second-level">--%>
            <%--                    <li>--%>
            <%--                        <a href="blank.html">Blank Page</a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a href="login.html">Login Page</a>--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <!-- /.nav-second-level -->--%>
            <%--            </li>--%>
        </ul>
    </div>
</div>