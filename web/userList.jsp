<%-- 
    Document   : userList
    Created on : Jun 15, 2018, 12:26:26 AM
    Author     : dell-soncini
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Listar Usuários</title>

    <!-- Bootstrap -->
    <link href="/SisFimGraficos/plugin/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/SisFimGraficos/plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/SisFimGraficos/plugin/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/plugin/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="/SisFimGraficos/plugin/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/SisFimGraficos/plugin/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/SisFimGraficos/plugin/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/SisFimGraficos/plugin/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/SisFimGraficos/plugin/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/SisFimGraficos/css/custom.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Usuários </h2>
                            </div>
                            <div class="x_content">

                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                    <tr>
                                        <td>Nome</td>
                                        <td>Email</td>
                                        <td>Editar</td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${Users}" var="user"> 
                                       <tr>
                                            <td>${user.name}</td>
                                            <td>${user.email}</td>

                                            <td>
                                                <a class="btn btn-primary pull-right" href="/SisFimGraficos/user/edit?id=${user.id}">Editar</a>
                                            </td>
                                        </tr>
                                    </c:forEach>   

                                    </tbody>

                                </table>
                                <a class="btn btn-primary pull-right" href="/SisFimGraficos/user/new">Novo</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">

            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="/plugin/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/plugin/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/plugin/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/plugin/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="/plugin/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="/plugin/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="/plugin/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="/plugin/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="/plugin/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="/plugin/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="/plugin/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="/plugin/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="/plugin/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="/plugin/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="/plugin/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="/plugin/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="/plugin/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="/plugin/jszip/dist/jszip.min.js"></script>
<script src="/plugin/pdfmake/build/pdfmake.min.js"></script>
<script src="/plugin/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="/js/custom.min.js"></script>

</body>
</html>
