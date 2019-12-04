<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!-- Sidebar -->
<script type="text/javascript">
    try {
        ace.settings.loadState('main-container')
    } catch (e) {
    }
</script>

<div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
        try {
            ace.settings.loadState('sidebar')
        } catch (e) {
        }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="ace-icon fa fa-signal"></i>
            </button>

            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>

            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>

            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div><!-- /.sidebar-shortcuts -->

    <ul class="nav nav-list">
        <li class="active">
            <a href='<c:url value="/admin-home"/>'>
                <i class="menu-icon fa fa-tachometer"></i>
                <span class="menu-text"> Dashboard </span>
            </a>

            <b class="arrow"></b>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text">
								Khách hàng
							</span>
            </a>

        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text">
								Sản phẩm
							</span>
            </a>

        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text">
								Giỏ hàng
							</span>
            </a>

        </li>

        <%--        <li class="">--%>
        <%--            <a href="#" class="dropdown-toggle">--%>
        <%--                <i class="menu-icon fa fa-pencil-square-o"></i>--%>
        <%--                <span class="menu-text"> Forms </span>--%>

        <%--                <b class="arrow fa fa-angle-down"></b>--%>
        <%--            </a>--%>

        <%--            <b class="arrow"></b>--%>

        <%--            <ul class="submenu">--%>
        <%--                <li class="">--%>
        <%--                    <a href="form-elements.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Form Elements--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="form-elements-2.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Form Elements 2--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="form-wizard.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Wizard &amp; Validation--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="wysiwyg.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Wysiwyg &amp; Markdown--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="dropzone.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Dropzone File Upload--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>
        <%--            </ul>--%>
        <%--        </li>--%>

        <%--        <li class="">--%>
        <%--            <a href="#" class="dropdown-toggle">--%>
        <%--                <i class="menu-icon fa fa-tag"></i>--%>
        <%--                <span class="menu-text"> More Pages </span>--%>

        <%--                <b class="arrow fa fa-angle-down"></b>--%>
        <%--            </a>--%>

        <%--            <b class="arrow"></b>--%>

        <%--            <ul class="submenu">--%>
        <%--                <li class="">--%>
        <%--                    <a href="profile.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        User Profile--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="inbox.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Inbox--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="pricing.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Pricing Tables--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="invoice.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Invoice--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="timeline.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Timeline--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="search.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Search Results--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="email.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Email Templates--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>

        <%--                <li class="">--%>
        <%--                    <a href="login.html">--%>
        <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>
        <%--                        Login &amp; Register--%>
        <%--                    </a>--%>

        <%--                    <b class="arrow"></b>--%>
        <%--                </li>--%>
        <%--            </ul>--%>
        <%--        </li>--%>
    </ul><!-- /.nav-list -->

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
           data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>