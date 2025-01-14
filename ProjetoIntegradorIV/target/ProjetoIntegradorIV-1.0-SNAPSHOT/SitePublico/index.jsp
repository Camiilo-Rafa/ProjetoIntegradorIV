<%-- 
    Document   : index
    Created on : 18/02/2022, 19:47:24
    Author     : Douglas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="newcss.css" media="screen" />
        <title>ADIMO</title>
    </head>

    <body class="myBackground">
        <c:import url="Uteis/header.jsp"/>
        <main role="main" class="container" style="margin-top: 64px" id="conteudo">

            <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center">
                <div class="col-md-5 p-lg-5 mx-auto my-5">
                    <h2 class="display-5 font-weight-normal">ADIMO Imobili&aacute;ria&#8482;</h2>
                    <p class="lead font-weight-normal">Construindo um futuro para todos.</p>
                </div>
            </div>

            <div id="carousel" class="carousel slide carousel-fade" data-ride="carousel" style="margin-bottom: 40px;">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class=""></li>
                    <li data-target="#carousel" data-slide-to="1" class=""></li>
                    <li data-target="#carousel" data-slide-to="2" class="active"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item">
                        <img src="Resources/casa_8.jpg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false" width="100%" height="100%">
                    </div>
                    <div class="carousel-item">
                        <img src="Resources/casa_7.jpg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false" width="100%" height="100%">
                    </div>
                    <div class="carousel-item active">
                        <img src="Resources/casa_6.jpg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false" width="100%" height="100%">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Pr&oacute;xima</span>
                </a>
            </div>

            <script type="text/javascript">
                $('.carousel').carousel({
                    interval: 2000
                })
            </script>
            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">Encontre os melhores parcelamentos para compra. <span class="text-muted">E os melhores pre&ccedil;os de aluguel na regi&atilde;o.</span></h2>
                    <br><p class="lead"><br>Garantimos que tudo que fazemos &eacute; pensando no seu bolso.</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-fluid mx-auto" src="Resources/valor.jpg" data-holder-rendered="true">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Esque&ccedil;a a burocracia. <span class="text-muted">Trabalhamos com análise de crédito que sai em 24h.</span></h2>
                    <p class="lead">Gostamos facilitar os negócios no ramo imobiliário.</p>
                </div>
                <div class="col-md-5 order-md-1">
                    <img class="featurette-image img-fluid mx-auto" src="Resources/analise.jpg">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">Nossa taxa é a menor do mercado.<span class="text-muted">Com as melhores parcelas e cabem no seu bolso.</span></h2>  
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-fluid mx-auto" src="Resources/taxa.jpg">
                </div>
            </div>
            <hr class="featurette-divider">
            </div>
        </main>
    </body>
</html>