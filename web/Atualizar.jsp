<%-- 
    Document   : index
    Created on : Jun 14, 2018, 8:55:45 PM
    Author     : dell-soncini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Controler Financeiro Grafico | Login </title>

    <!-- Bootstrap -->
    <link href="/SisFimGraficos/plugin/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/SisFimGraficos/plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/SisFimGraficos/plugin/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/SisFimGraficos/plugin/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/SisFimGraficos/css/custom.css" rel="stylesheet">

    <script src="/SisFimGraficos/js/app.js"></script>
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form action="" method="post">
                    <h1>Atualizar Dados</h1>
                    <div>
                        <button class="btn btn-default submit" >Atualizar</button>
                    </div>

                    <div class="clearfix"></div>
                    <div>
                        ${Atualizado!= null ? Atualizado : ""}
                    </div>
                </form>
            </section>
  
    </div>
</div>
</body>

</html>