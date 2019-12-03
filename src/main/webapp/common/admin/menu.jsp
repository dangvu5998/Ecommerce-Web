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
								Volatile Data
							</span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-caret-right"></i>

                        Networks
                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href='<c:url value="/admin-network-connection"/> '>
                                <i class="menu-icon fa fa-caret-right"></i>
                                Network Connection
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="two-menu-1.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Listening Port
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="two-menu-2.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Data Port
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="mobile-menu-1.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Routing table
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="typography.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Process
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="elements.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        User Logon
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="buttons.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Clipboard Content
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="content-slider.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        OpenFile
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="treeview.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Service Information
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="jquery-ui.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Driver Information
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="nestable-list.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Key Logger
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="nestable-list.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Command History
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="nestable-list.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Swap File
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="nestable-list.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        File Permission
                    </a>

                    <b class="arrow"></b>
                </li>

                <%--                <li class="">--%>
                <%--                    <a href="#" class="dropdown-toggle">--%>
                <%--                        <i class="menu-icon fa fa-caret-right"></i>--%>

                <%--                        Command History--%>
                <%--                        <b class="arrow fa fa-angle-down"></b>--%>
                <%--                    </a>--%>

                <%--                    <b class="arrow"></b>--%>

                <%--                    <ul class="submenu">--%>
                <%--                        <li class="">--%>
                <%--                            <a href="#">--%>
                <%--                                <i class="menu-icon fa fa-leaf green"></i>--%>
                <%--                                Item #1--%>
                <%--                            </a>--%>

                <%--                            <b class="arrow"></b>--%>
                <%--                        </li>--%>

                <%--                        <li class="">--%>
                <%--                            <a href="#" class="dropdown-toggle">--%>
                <%--                                <i class="menu-icon fa fa-pencil orange"></i>--%>

                <%--                                4th level--%>
                <%--                                <b class="arrow fa fa-angle-down"></b>--%>
                <%--                            </a>--%>

                <%--                            <b class="arrow"></b>--%>

                <%--                            <ul class="submenu">--%>
                <%--                                <li class="">--%>
                <%--                                    <a href="#">--%>
                <%--                                        <i class="menu-icon fa fa-plus purple"></i>--%>
                <%--                                        Add Product--%>
                <%--                                    </a>--%>

                <%--                                    <b class="arrow"></b>--%>
                <%--                                </li>--%>

                <%--                                <li class="">--%>
                <%--                                    <a href="#">--%>
                <%--                                        <i class="menu-icon fa fa-eye pink"></i>--%>
                <%--                                        View Products--%>
                <%--                                    </a>--%>

                <%--                                    <b class="arrow"></b>--%>
                <%--                                </li>--%>
                <%--                            </ul>--%>
                <%--                        </li>--%>
                <%--                    </ul>--%>
                <%--                </li>--%>
            </ul>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-desktop"></i>
                <span class="menu-text"> Non-Volatile Data </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="tables.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Computer Information
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="jqgrid.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        File Systems
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="jqgrid.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        System Event Log
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="jqgrid.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Browser History
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="jqgrid.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        File Recently
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
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

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-file-o"></i>

                <span class="menu-text">
								Other Datas

								<span class="badge badge-primary">5</span>
							</span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="faq.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Data
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="error-404.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Data
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="error-500.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Data
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="grid.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Data
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="blank.html">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Data
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul><!-- /.nav-list -->

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
           data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>