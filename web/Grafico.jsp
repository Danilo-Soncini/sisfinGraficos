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
                                <h2>Graficos</h2>
                            </div>
                            <div class="clearfix"></div>
                            <div class=" col-md-5">
                                <div id="chart_div"></div>
                            </div>
                            <div class="col-md-7">
                                <div id="chart_div2"></div>
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
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
       
      // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
        function drawChart() {
           jQuery.ajax({url : "http://localhost:8080/SisFimGraficos/js/dados.json", "dataType" :"json"} ).success(function (retornoJson) {
           
                // Create the data table.
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Gasto');
                data.addColumn('number', 'Valor');

                data.addRows(retornoJson.gastos);

                // Set chart options
                var options = {'title':'Gastos por mês',
                               'width':500,
                               'height':500};

                // Instantiate and draw our chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
                chart.draw(data, options);



                var data2 = new google.visualization.DataTable();
                data2.addColumn('string', 'Meses');
                data2.addColumn('number', 'Salario');
                data2.addColumn('number', 'Hora Extra');

                data2.addRows(retornoJson.ganhos);

                // Set chart options
                var options2 = {'title':'Média Salarial Por Mês',
                               'width':1000,
                               'height':600,
                           'isStacked': true};

                // Instantiate and draw our chart, passing in some options.
                var chart2 = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
                chart2.draw(data2, options2);
            }
        )
      }
    </script>
  </head>
</body>
</html>
