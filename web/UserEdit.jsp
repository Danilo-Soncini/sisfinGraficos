<%-- 
    Document   : UserEdit
    Created on : Jun 15, 2018, 12:27:52 AM
    Author     : dell-soncini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Editar Usuário</title>

    <!-- Bootstrap -->
    <link href="/SisFimGraficos/plugin/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/SisFimGraficos/plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/SisFimGraficos/plugin/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/SisFimGraficos/plugin/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="/SisFimGraficos/plugin/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="/SisFimGraficos/plugin/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="/SisFimGraficos/plugin/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="/SisFimGraficos/plugin/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="/SisFimGraficos/plugin/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

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
                                <h2>Editar Usuário</h2>
                            </div>
                            <div class="x_content">
                                <br />
                                <form id="demo-form2" action="" method="POST" data-parsley-validate class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Email <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text"  name="email" required="required" value="${UserToEdit.email}" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nome <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="name" required="required" value ="${UserToEdit.name}"class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Senha 
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="middle-name" class="form-control col-md-7 col-xs-12"  value ="${UserToEdit.password}" type="password" name="password">
                                        </div>
                                    </div>
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <a class="btn btn-primary" href="/SisFimGraficos/user/list">Cancelar</a>
                                            <button type="submit" class="btn btn-success">Enviar</button>
                                        </div>
                                    </div>

                                </form>
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
<script src="/SisFimGraficos/plugin/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/SisFimGraficos/plugin/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/SisFimGraficos/plugin/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/SisFimGraficos/plugin/nprogress/nprogress.js"></script>
<!-- bootstrap-progressbar -->
<script src="/SisFimGraficos/plugin/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="/SisFimGraficos/plugin/iCheck/icheck.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/SisFimGraficos/plugin/moment/min/moment.min.js"></script>
<script src="/SisFimGraficos/plugin/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="/SisFimGraficos/plugin/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="/SisFimGraficos/plugin/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="/SisFimGraficos/plugin/google-code-prettify/src/prettify.js"></script>
<!-- jQuery Tags Input -->
<script src="/SisFimGraficos/plugin/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<!-- Switchery -->
<script src="/SisFimGraficos/plugin/switchery/dist/switchery.min.js"></script>
<!-- Select2 -->
<script src="/SisFimGraficos/plugin/select2/dist/js/select2.full.min.js"></script>
<!-- Parsley -->
<script src="/SisFimGraficos/plugin/parsleyjs/dist/parsley.min.js"></script>
<!-- Autosize -->
<script src="/SisFimGraficos/plugin/autosize/dist/autosize.min.js"></script>
<!-- jQuery autocomplete -->
<script src="/SisFimGraficos/plugin/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
<!-- starrr -->
<script src="/SisFimGraficos/plugin/starrr/dist/starrr.js"></script>
<!-- Custom Theme Scripts -->
<script src="/SisFimGraficos/js/custom.js"></script>

</body>
</html>
