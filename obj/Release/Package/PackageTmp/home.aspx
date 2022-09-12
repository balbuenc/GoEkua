<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="GoWebForms.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
    <!-- Primary Meta Tags -->
<title>GoFactoring</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Fintech Solutions">

<!-- Canonical SEO -->
<link rel="canonical" href="" />

<!--  Social tags      -->
<meta name="keywords" content="Fintech Solutions">
<meta name="description" content="">

<!-- Schema.org markup for Google+ -->
<meta itemprop="name" content="Fintech Solutions">
<meta itemprop="description" content="">

<meta itemprop="image" content="icono.jpg">

<!-- Twitter Card data -->
<meta name="twitter:card" content="product">
<meta name="twitter:site" content="@">
<meta name="twitter:title" content="Fintech Solutions">

<meta name="twitter:description" content="">
<meta name="twitter:creator" content="@">
<meta name="twitter:image" content="icono.jpg">


<!-- Open Graph data -->
<meta property="fb:app_id" content="655968634437471">
<meta property="og:title" content="Fintech Solutions" />
<meta property="og:type" content="article" />
<meta property="og:url" content="https://www.fintechsolutions.com.py/" />
<meta property="og:image" content="icono.jpg"/>
<meta property="og:description" content="Fintech Solutions" />
<meta property="og:site_name" content="Fintech Solutions" />

<!-- Favicon -->
<link rel="icon" href="../assets/img/favicon/favicon.png" type="image/png">

<!-- Fontawesome -->
<link type="text/css" href="../../vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Nucleo icons -->
<link rel="stylesheet" href="dashboard/assets/vendor/nucleo/css/nucleo.css" type="text/css">

<!-- Prism -->
<link type="text/css" href="../../vendor/prismjs/themes/prism.css" rel="stylesheet">

<!-- Front CSS -->
<link type="text/css" href="../css/front.css" rel="stylesheet">

<!-- Anti-flicker snippet (recommended)
<style>.async-hide { opacity: 0 !important} </style>
<script>(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
(a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
})(window,document.documentElement,'async-hide','dataLayer',4000,
{'GTM-K9BGS8K':true});</script>

<!-- Analytics-Optimize Snippet
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-46172202-22', 'auto', {allowLinker: true});
ga('set', 'anonymizeIp', true);
ga('require', 'GTM-K9BGS8K');
ga('require', 'displayfeatures');
ga('require', 'linker');
ga('linker:autoLink', ["2checkout.com","avangate.com"]);
</script>
<!-- end Analytics-Optimize Snippet -->

<!-- Google Tag Manager
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NKDMSK6');</script>
<!-- End Google Tag Manager -->
</head>

<body>

    <!-- Google Tag Manager (noscript)
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-light navbar-theme-primary">
        <div class="container">
            <a class="navbar-brand @@logo_classes" href="../../home.aspx">
                <img class="navbar-brand-dark common" src="../assets/img/brand/gofactoring2.png" height="35" alt="Logo light">
                <img class="navbar-brand-light common" src="../assets/img/brand/gofactoring.png" height="35" alt="Logo dark">
            </a>
            <div class="navbar-collapse collapse" id="navbar_global">
                <div class="navbar-collapse-header">
                    <div class="row">
                        <div class="col-6 collapse-brand">
                            <a href="../../home.aspx">
                                <img src="../assets/img/brand/gofactoring.png" height="35" alt="">
                            </a>
                        </div>
                        <div class="col-6 collapse-close">
                            <a href="#navbar_global" role="button" class="fas fa-times" data-toggle="collapse"
                                data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false"
                                aria-label="Toggle navigation"></a>
                        </div>
                    </div>
                </div>
                <ul class="navbar-nav navbar-nav-hover justify-content-center js-navbar">
                    <!--<li class="nav-item">
                        <a href="home.aspx" class="nav-link">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a href="#funciones" class="nav-link">Funciones</a>
                    </li>
                    <li class="nav-item">
                        <a href="#calculadora" class="nav-link">Calculadora</a>
                    </li>
                    <li class="nav-item">
                        <a href="#estadisticas" class="nav-link">Estadísticas</a>
                    </li>
                    <li class="nav-item">
                        <a href="#aliados" class="nav-link">Aliados</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text">Soporte</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg">
                            <div class="col-auto px-0" data-dropdown-content>
                                <div class="list-group list-group-flush">-->
                                    <!--<a href="#"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-sm icon-secondary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">Abrir ticket</span>
                                        </div>
                                    </a>-->
                                    <!--<a href="#faqs"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-sm icon-primary"><i
                                                class="fas fa-microphone-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">FAQs</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>-->
                </ul>
            </div>
            
            <div class="d-flex d-lg-none align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global"
                    aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation"><span
                        class="navbar-toggler-icon"></span></button>
            </div>
            
            <div class="d-lg-block @@cta_button_classes js-login">
                <!-- <a href="ingresar.aspx" class="btn btn-sm btn-docs btn-outline-white animate-up-2"><i class="fas fa-sign-in-alt"></i> Ingresar</a>
     <a href="registro.html" target="_blank" class="btn btn-sm btn-secondary animate-up-2"><i class="fas fa-user-plus"></i> Registrarse</a> -->
            </div>
        </div>
    </nav>
</header>
    <main>

        <div class="preloader bg-soft flex-column justify-content-center align-items-center">
    <div class="loader-element">
        <span class="loader-animated-dot"></span>
        <img src="../assets/img/brand/gofactoring.png" height="40" alt="">
       
    </div>
</div>

        <!-- Hero -->
        <section class="section-header pb-7 pb-lg-5 bg-soft">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-12 col-md-6 order-2 order-lg-1">
                    <img src="../assets/img/illustrations/hero-illustration.svg" alt="">
                    </div>
                    <div class="col-12 col-md-5 order-1 order-lg-2">
                          <h3 class="display-2 mb-3">Liquidez inmediata para tu negocio</h3>
                          <p class="lead">Sin trámites, sin papeles, 100% online.</p>
                          <!--<div class="mt-4">
                            <form action="#" class="d-flex flex-column mb-5 mb-lg-0">
                                <input class="form-control" type="text" name="full-name" placeholder="Full name" required>
                                <input class="form-control my-3" type="email" name="email" placeholder="Your email" required>
                                <button class="btn btn-primary" type="submit">Create your account</button>
                                <div class="form-group form-check mt-3">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label form-check-sign-white" for="exampleCheck1">I agree to the <a href="#">Terms & Conditions</a></label>
                                </div>
                            </form>
                          </div>-->
                      </div>
                </div>
            </div>
            <!--<div class="pattern bottom"></div>-->
        </section>


        <!--<section class="section section-lg" style="padding-top: 0px; padding-bottom: 0px;">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-lg-4">
                    <div class="col-12 col-md-8 text-center">
                        <h1 class="h1 font-weight-bolder mb-4">Comentarios de usuarios</h1>
                     
                    </div>
                </div>
                <div class="row mb-lg-5">
                    <div class="col-12 col-lg-6">
                        <div class="customer-testimonial d-flex mb-5">
                            <img src="../assets/img/team/profile-picture-1.jpg" class="image image-sm mr-3 rounded-circle shadow" alt="">
                            <div class="content bg-soft shadow-soft border border-light rounded position-relative p-4">
                                <div class="d-flex mb-4">
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                </div>
                                <p class="mt-2">"We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep."</p>
                                <span class="h6">- James Curran <small class="ml-0 ml-md-2">General Manager Spotify</small></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 pt-lg-6">
                        <div class="customer-testimonial d-flex mb-5">
                            <img src="../assets/img/team/profile-picture-4.jpg" class="image image-sm mr-3 rounded-circle shadow" alt="">
                            <div class="content bg-soft shadow-soft border border-light rounded position-relative p-4">
                                <div class="d-flex mb-4">
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                </div>
                                <p class="mt-2">"We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep."</p>
                                <span class="h6">- Jose Evans <small class="ml-0 ml-md-2">Chief Engineer Apple</small></span>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </section>-->



        <section class="section section-lg pt-5" id="funciones" style="padding-bottom: 0px;">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-md-5">
                    <div class="col-12 col-md-8 text-center">
                        <h2 class="h1 font-weight-bolder mb-4">C&oacute;mo funciona?</h2>
                        <p class="lead">Conectamos a (1) los clientes (2) con sus proveedores con y (3) el capital</p>
                    </div>

                    <!--<div class="col-12 col-md-8 text-center">
                        <img src="../assets/img/funciones.png">
                    </div>-->
                </div>

                <div class="row justify-content-center">
                    <div class="col-12 col-lg-4">
                        <div class="card shadow-soft bg-white border-light animate-up-3 text-gray py-4 mb-5 mb-lg-0">
                            <div class="card-header text-center pb-0">
                                <div class="icon icon-shape icon-shape-primary rounded-circle mb-3">
                                    <i class="fas fa-user"></i>
                                </div>
                                <h4 class="text-black">Clientes</h4>
                            </div>
                            <div class="card-body">
                                <ul class="list-group">
                                    <li class="list-group-item d-flex px-0 pt-0 pb-2">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Potencia a tus proveedores de confianza</div>
                                    </li>
                                    <li class="list-group-item d-flex px-0 pb-1">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Integración con sus cuentas por pagar</div>
                                    </li>
                                    <li class="list-group-item d-flex px-0 pb-1">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Aprobación o rechazo de las operaciones 100% digital</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="card shadow-soft bg-white border-light animate-up-3 text-gray py-4 mb-5 mb-lg-0">
                            <div class="card-header text-center pb-0">
                                <div class="icon icon-shape icon-shape-primary rounded-circle mb-3">
                                    <i class="fas fa-user-friends"></i>
                                </div>
                                <h4 class="text-black">Proveedores</h4>
                            </div>
                            <div class="card-body">
                                <ul class="list-group">
                                    <li class="list-group-item d-flex px-0 pt-0 pb-2">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Adelanta el pago de tus facturas desde donde quieras</div>
                                    </li>
                                    <li class="list-group-item d-flex px-0 pb-1">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Costos transparentes.</div>
                                    </li>
                                    <li class="list-group-item d-flex px-0 pb-1">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Si tu cliente ya está registrado con nosotros, no hay más tramites. Tu factura y ya está</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="card shadow-soft bg-white border-light animate-up-3 text-gray py-4 mb-5 mb-lg-0">
                            <div class="card-header text-center pb-0">
                                <div class="icon icon-shape icon-shape-primary rounded-circle mb-3">
                                    <i class="fas fa-hand-holding-usd"></i>
                                </div>
                                <h4 class="text-black">Capital</h4>
                            </div>
                            <div class="card-body">
                                <ul class="list-group">
                                    <li class="list-group-item d-flex px-0 pt-0 pb-2">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Acceso al financiamiento de la cadena de suministro</div>
                                    </li>
                                    <li class="list-group-item d-flex px-0 pb-1">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Escalabilidad e ingresos recurrentes</div>
                                    </li>
                                    <li class="list-group-item d-flex px-0 pb-1">
                                        <div class="icon icon-sm icon-success mr-4">
                                            <i class="far fa-check-circle"></i>
                                        </div>
                                        <div>Riesgo de crédito operacional corporativo de corto plazo</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>






        <section class="section section-lg pt-6" id="calculadora" style="padding-bottom: 0px; padding-top: 2rem !important;">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-md-4">
                    <div class="col-12 col-md-8 text-center">
                        <h2 class="h1 font-weight-bolder mb-4">Calculadora</h2>
                        <p class="lead">Simula tu financiamiento ahora</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-12 mb-5" style="padding-left: 0px; padding-right: 0px; border-radius: 25px; border: 2px solid #00adea1f;">
                        <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item pyme proov_2" style="width: 50%">
                    <!-- <a class="nav-link active" href="#home">Home</a> -->
                    <div data-toggle="tab" class="col-md-12 nav-link titulo_factura titulo_celeste active" href="#home" > 
                    Calculo estimativo GS
                        <p><small style="color:#fff; font-size:12px">Sobre anticipo de facturas</small></p>
                        <p id="barra1" class="hrrr">
                    </p></div>
                </li>
                <li class="nav-item proov activeNot1" style="width: 50%">
                    <div class="col-md-12 nav-link text-left titulo_proveedor" href="#menu1" data-toggle="tab"> Calculo estimativo USD
                        <p><small style="color:#fff; font-size:12px">Sobre anticipo de facturas</small></p>
                        <p id="barra" class="">
                    </p></div>
                   
                </li>
                
            </ul>

<div class="tab-content">
                <div id="home" class="container-fluid tab-pane active" style=""><br>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-12" style="padding-bottom: 0px;"> <strong class="InTextSim">Monto de tu Factura</strong></div>
                            <div class="col-md-12" style="padding-bottom: 10px;">
                                <div class="thumb" id="thumb"></div>
                                <div class="range-value " id="rangeV" style="visibility: hidden; left: calc(0% + 10px);">Gs.10.000.000</div>
                                <div class="range-value " id="demo">Gs.10.000.000</div>
                                <input class="__range" id="amount" type="range" min="10000000" max="1000000000" value="10000000" step="100000" placeholder="Ingrese monto total de la factura" data-slider-id="ex1Slider" onchange="Calculate()" style="background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, from(rgb(59, 189, 10)), from(rgb(245, 246, 248))); ">
                                <div class="row">
                                    <div class="col-md-6" style="display: none;">Gs. 10.000.000</div>
                                    <!--<div class="col-md-6 text-right">  $100.000.000</div>-->
                                </div>
                            </div>
                            <div class="col-md-12" style="padding-bottom: 10px;"><strong class="InTextSim">¿En cuántos días pagan tu factura?</strong></div>
                            <div class="col-md-12">
                                <!-- <div class="col-md-6"><small id="rate2"></small></div> -->
                                <div class="range-value2" id="rate2" style="left: calc(0% + 10px);"><span>30 Días</span></div>
                                <input id="rate" class="__range dia" type="range" min="1" max="90" value="1" step="1" placeholder="De 30 a +90 días" onchange="Calculate()" style="background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, from(rgb(59, 189, 10)), from(rgb(245, 246, 248)));">
                                <div class="row">
                                    <div class="col-md-6" style="display: none;">30 Días</div>
            
                                    <!--<div class="col-md-6 text-right">90 Días</div>-->
                                </div>
            
            
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-lg-12 text-left sim_padding-left">
                                <div class="sim_padding">
                                    <srtong class="InTextSim"><b>Resumen del financiamiento</b></srtong>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Monto total de la Factura</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo" id="total_amount">Gs. 10.000.000</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Monto no financiado</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo " id="monto_no_financiado">Gs. 500.000</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Monto financiado</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo" id="monto_financiado">Gs. 9.500.000</div>
                                </div>
                                <div class="row" style="display: none">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Costo total</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo" id="costo_total">$1610</div>
                                </div>
                                <div class="row sim_padding">
                                    <div class="col-lg-6 col-6 col-sm-12 text-left sim_titulo rec_fivana">Recibes hoy en tu cuenta</div>
                                    <div class="col-lg-6 col-6 col-sm-12 text-right sim_titulo sim_verde rec_fivana" id="total">Gs. 9.261.595</div>
                                </div>
                                <div class="text-left"><small><i> *Valores referenciales</i></small></div>
                                <!-- <hr class="sim_padding"> -->
                                <div class="row sim_padding align-middle">

                                    <div class="col-lg-12 text-right col-sm-12 col-xs-12 simbot" style="text-align: right;float: right;">
                                        <a class="btn btn-primary rounded-pill sim_buttom_text all-news-btn elementor-button-link elementor-button elementor-size-sm" style="background-color:#f15051; border-color:#f15051; padding:18px" href="registro.aspx" target="_parent">Comenzar </a>
                                    </div>
                                </div>
            
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu1" class="container-fluid tab-pane fade"><br>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-12" style="padding-bottom: 30px;"> <strong class="InTextSim">Monto de tu factura</strong></div>
                            <div class="col-md-12" style="padding-bottom: 55px;">
                                <div class="range-value range" id="range_usd" style="left: calc(0% + 10px);">$1.000</div>
                                <input id="amount_usd" class="slider __range" type="range" min="1000" max="100000" value="1000" step="1000" placeholder="Ingrese monto total de la factura" data-slider-id="ex1Slider" onchange="calculadora_usd2()" style="background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, from(rgb(59, 189, 10)), from(rgb(245, 246, 248)));">
                                <div class="row">
                                    <div class="col-md-6" style="display: none;">$1.000.000</div>
                                    <!--<div class="col-md-6 text-right"> + $35.000.000</div>-->
                                </div>
                            </div>
                            <div class="col-md-12" style="padding-bottom: 25px;"><strong class="InTextSim">¿En cuántos días emitirás la factura?</strong></div>
                            <div class="col-md-12">
                                <div class="range-value2" id="rate_usd2" style="left: calc(0% + 10px);"><span>1 Días</span></div>
                                <input id="rate_usd" type="range" class="__range" min="1" max="90" value="1" step="1" placeholder="De 1 a 90 días" onchange="calculadora_usd2()" style="background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, from(rgb(59, 189, 10)), from(rgb(245, 246, 248)));">
                                <div class="row">
                                    <div class="col-md-6" style="display: none;">90 Días</div>
            
                                    <!--<div class="col-md-6 text-right">90 Días</div>-->
                                </div>
            
            
                            </div>
                        </div>
                        <div class="col-md-6" style="border-left: 1px solid #ccc">
                            <div class="col-lg-12 text-left sim_padding-left">
                                <div class="sim_padding">
                                    <srtong class="InTextSim" style="font-weight:bold">Resumen del financiamiento</srtong>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Monto de tu factura</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo" id="total_amount_usd">$1.000</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Monto no financiado</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo" id="monto_no_financiado2">$50</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Monto financiado</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo" id="monto_financiado_usd">$950</div>
                                </div>
                                <!--<div class="row">
                                    <div class="col-lg-6 col-6 text-left sim_titulo">Costo total</div>
                                    <div class="col-lg-6 col-6 text-right sim_titulo" id="costo_total_2">$63.250</div>
                                </div>-->
                                <div class="row sim_padding">
                                    <div class="col-lg-6 col-6 col-sm-12 text-left sim_titulo" style="font-weight:bold">Recibes en total</div>
                                    <div class="col-lg-6 col-6 col-sm-12 text-right sim_titulo" id="total_usd" style="font-weight:bold">$939</div>
                                </div>
                                <!-- <div class="text-left"><small><i>* Si quieres mejorar tu simulación, enrólate</i></small></div> -->
                                <hr class="sim_padding" style="padding-bottom:0px; padding-top: 0px;">

                                <div class="text-left"><small><i> *Valores referenciales</i></small></div>
                                <div class="row sim_padding " style="float: right;">
                                    <!-- <div class="col-lg-6 col-sm-12 col-xs-12 simbot">
                                    <button type="button"
                                    class="btn btn-outline-primary rounded-pill sim_buttom_text all-news-btn elementor-button-link elementor-button elementor-size-sm" style="width: 200px;">Limpiar la simulación</button>
                            </div>  -->
                                    <div class="col-lg-6 text-right col-sm-12 col-xs-12 simbot" style="text-align: right;float: right; padding-top: 20px;">
                                        <a class="btn btn-primary rounded-pill sim_buttom_text all-news-btn elementor-button-link elementor-button elementor-size-sm" style="background-color:#f15051; border-color:#f15051; padding:18px" href="https://app.fivana.com/auth/login?register=true" target="_parent">Comenzar </a>
                                    </div>
                                </div>
            
                            </div>

                        </div>
                    </div>
                </div>
            </div>
                    </div>


                </div>
            </div>
        </section>




        <section class="section section-lg bg-white line-bottom-light" id="faqs" style="padding-top: 0px; padding-bottom: 2rem;">
                <div class="container">
                    <div class="row justify-content-center mb-4 mb-lg-4">
                        <div class="col-12 col-lg-8 text-center">
                            <h1 class="display-3 mb-4">Preguntas frecuentes</h1>
                            <p class="lead text-gray">Todo lo que necesitas saber.</p>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-12 col-lg-8">
                            <!--Accordion-->
                            <div class="accordion">
                                <div class="card card-sm card-body border border-light rounded mb-3">
                                    <div data-target="#panel-1" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-1">
                                        <span class="h6 mb-0">¿Qu&eacute; nos hace diferentes?</span>
                                        <span class="icon"><i class="fas fa-angle-down"></i></span>
                                    </div>
                                    <div class="collapse" id="panel-1">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                                Somos la única plataforma en Paraguay que no financia directamente a las pymes por lo que podemos procesar las operaciones de factoring de cualquier entidad financiera, fondo de inversión o inversionista SIN CONFLICTO DE INTERES.
                                            </p>
                                            <p class="mb-0">
                                                Al no ofrecer prestamos directamente, nuestro interés se centra en fomentar el mayor número de operaciones posible, lo que deriva necesariamente en aumentar la cobertura del factoring en la economía.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-sm card-body border border-light rounded mb-3">
                                    <div data-target="#panel-2" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-2">
                                        <span class="h6 mb-0">¿C&oacute;mo funciona el factoring?</span>
                                        <span class="icon"><i class="fas fa-angle-down"></i></span>
                                    </div>
                                    <div class="collapse" id="panel-2">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                               El factoring consiste en el adelanto de pago de facturas de venta con un descuento que depende del plazo en el que la factura será pagada. El descuento también puede variar dependiendo de quien es pagara dicha factura.
                                             </p>
                                             <p class="mb-0">
                                                 En Gofactoring procesamos el adelanto de pago de facturas emitidas a nuestras empresas aliadas por los proveedores registrados en el sitio.
                                             </p>
                                             <br>
                                             <div style="text-align: center">
                                             <img src="../assets/img/comofunc.png">
                                             </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-sm card-body border border-light rounded mb-3">
                                    <div data-target="#panel-3" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-3">
                                        <span class="h6 mb-0">Mi cliente no es aliado de Gofactoring, ¿puedo adelantar el pago de facturas a través del sitio?</span>
                                        <span class="icon"><i class="fas fa-angle-down"></i></span>
                                    </div>
                                    <div class="collapse" id="panel-3">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                               Lamentablemente no, en Gofactoring comenzamos el proceso de factoring desde la empresa receptora de facturas, es decir que ofrecemos factoraje solo a los proveedores de nuestras empresas aliadas.
                                               </p>
                                               <p class="mb-0">
                                                   Uno de nuestros objetivos es ofrecer una herramienta para las empresas de poder potenciar a sus proveedores sin financiarlos directamente, pero permitiéndoles acceder a mayores órdenes de compra.
                                               </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-sm card-body border border-light rounded mb-3">
                                    <div data-target="#panel-4" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-4">
                                        <span class="h6 mb-0">¿C&oacute;mo me hago aliado de Gofactoring?</span>
                                        <span class="icon"><i class="fas fa-angle-down"></i></span>
                                    </div>
                                    <div class="collapse" id="panel-4">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                               Regístrate en el sitio, es fácil y rápido. Si te gusta lo que ves, te invitamos a realizar la segunda parte del registro donde te pediremos más información sobre tu estados financieros y situación crediticia.
                                               </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-sm card-body border border-light rounded mb-3">
                                    <div data-target="#panel-5" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-5">
                                        <span class="h6 mb-0">¿C&oacute;mo íntegro a mis procesos de cobros/pagos de facturas?</span>
                                        <span class="icon"><i class="fas fa-angle-down"></i></span>
                                    </div>
                                    <div class="collapse" id="panel-5">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                                GoFactoring, con el objetivo de integración a sistemas de gestión integral (ERP) cuenta con APIS de integración que operan con sistemas de clase mundial como SAP, Dynamics AX y otros. Si estas en una etapa inicial y tu empresa no cuenta aún con un ERP, brindamos APIs de migración de información basados en archivos estándares de intercambio con formatos abiertos Ej.: CSV, XML, JSON.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="card card-sm card-body border border-light rounded mb-3">
                                    <div data-target="#panel-6" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-5">
                                        <span class="h6 mb-0">¿Cuánto me cuesta financiar mis facturas de venta via GoFactoring?</span>
                                        <span class="icon"><i class="fas fa-angle-down"></i></span>
                                    </div>
                                    <div class="collapse" id="panel-6">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                                Te invitamos a revisar nuestra calculadora haciendo <a href="#calculadora">click aqu&iacute;.</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!--<div class="row mt-5 mt-lg-6">
                                    <div class="col text-center">
                                        <a href="#" class="btn btn-primary animate-up-2"><span class="mr-2"><i class="fas fa-question-circle"></i></span> Ver todos</a>
                                    </div>
                                </div>-->
                            </div>
                            <!--End of Accordion-->
                        </div>
                    </div>
                </div>
            </section>



                    <!-- Hero -->
        <section class="section-header pb-5 pb-lg-5 bg-soft" style="padding-top: 2rem;">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-12 col-md-6 order-2 order-lg-1">
                    <img src="../assets/img/illustrations/hero-illustration.svg" alt="">
                    </div>
                    <div class="col-12 col-md-5 order-1 order-lg-2">
                          <h1 class="display-2 mb-3">Registro de proveedor y/o cliente</h1>
                          <p class="lead">Complete sus datos para registrarse como un proveedor y/o cliente.</p>
                          <div class="mt-4">
                            <form action="#" class="d-flex flex-column mb-5 mb-lg-0">
                                <div class="row">
                                <div class="col-md-6">
                                <input class="form-control my-3" type="text" name="razon_social" id="razon_social" placeholder="Raz&oacute;n social" required>
                                </div>
                                
                                <div class="col-md-6">
                                <input class="form-control my-3" type="text" name="ruc" id="ruc" placeholder="RUC" required>
                                </div>
                                
                                <div class="col-md-6">
                                <input class="form-control my-3" type="text" name="representante" id="representante" placeholder="Nombre" required>
                                </div>
                                
                                <div class="col-md-6" style="display:none">
                                <input class="form-control my-3" type="text" name="cargo" id="cargo" placeholder="Cargo" value="0" required>
                                </div>
                                
                                <div class="col-md-6" style="display:none">
                                <input class="form-control my-3" type="text" name="telefono1" id="telefono1" placeholder="Teléfono"  value="0"  required>
                                </div>
                                
                                <div class="col-md-6">
                                <input class="form-control my-3" type="email" name="email" id="email" placeholder="Correo" required>
                                </div>
                                
                                <div class="col-md-12"  style="display:none">
                                <input class="form-control my-3" type="text" name="direccion" id="direccion" value="0" placeholder="Direcci&oacute;n" required>
                                </div>
                                
                                <div class="col-md-12">
                                <select name="tipo" id="tipo" class="form-control my-3">
                                    <option value="PROVEEDOR">PROVEEDOR</option>
                                    <option value="CLIENTE">CLIENTE</option>
                                    <option value="PROVEEDOR Y CLIENTE">PROVEEDOR Y CLIENTE</option>
                                </select>
                                </div>
                                
                                <div class="col-md-12">
                                <div class="form-group form-check my-3">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label form-check-sign-white" for="exampleCheck1">Acepto los <a href="#">Términos y Condiciones</a></label>
                                </div>
                                <button class="btn btn-primary" type="button" onclick="registro_proveedor_cliente();">Crear cuenta</button>
                                </div>
                                </div>
                            </form>
                            
                            <div id="mypar"></div>
                          </div>
                      </div>
                </div>
            </div>
            <!--<div class="pattern bottom"></div>-->
        </section>


        <section class="section section-lg bg-primary text-center text-white" id="estadisticas" style="padding-top: 6rem; padding-bottom: 1rem;">
            <div class="container">
                <div class="row justify-content-center mb-4 mb-lg-6">
                    <div class="col-12">
                        <h1 class="display-3 mb-4 mb-lg-5">Estadísticas</h1>
                        <div class="row text-white">
                            <div class="col-12 col-lg-6 px-md-0 mb-4 mb-lg-0">
                                <div class="card-body text-center bg-primary border-right border-default py-4">
                                    <!-- Heading -->
                                    <h2 class="font-weight-bold">
                                        <span class="h1 mr-2">1 empresa cliente</span>
                                    </h2>
                                    <!-- Text -->
                                    <span class="h5 font-weight-normal">Empresa aliada a GoFactoring.</span>
                                </div>
                            </div>
                            <div class="col-12 col-lg-6 px-md-0 mb-4 mb-lg-0">
                                <div class="card-body text-center bg-primary border-right border-default py-4">
                                    <!-- Heading -->
                                    <h2 class="font-weight-bold">
                                        <span class="h1 mr-2">52 proveedores</span>
                                    </h2>
                                    <!-- Text -->
                                    <span class="h5 font-weight-normal">Proveedores aliados a GoFactoring.</span>
                                </div>
                            </div>
                             <!--<div class="col-12 col-lg-4 px-md-0">
                                <div class="card-body text-center bg-primary py-4">
                                   
                                    <h2 class="font-weight-bold">
                                        <span class="h1 mr-2">250,000</span>
                                    </h2>
                                  
                                    <span class="h5 font-weight-normal">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                                </div>
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </section>

        
        <section class="section section-lg pb-5 bg-soft" id="aliados" style="padding-top: 2rem;">
    <div class="container">
        <div class="row"> 
            <div class="col-12 text-center mb-5">
                <h2 class="mb-4">Clientes</h2>
                <p class="lead mb-5">Unirse a <span class="font-weight-bolder">100+</span> usuarios</p>
                <a href="#" class="icon icon-lg text-gray mr-3">
                   <%--<img src="../assets/img/brand/sertec.png">--%>
                </a>
                <!--<a href="#" class="icon icon-lg text-gray mr-3">
                <img src="https://connectamericas.com/sites/default/files/content-idb/verifiedbadge.png" />
                </a>-->
            </div>
            <div class="col-12 text-center">
                <!-- Button Modal -->
                <a href="#" class="btn btn-primary"><span class="mr-2"><i class="fas fa-hand-pointer"></i></span>Registrate ac&aacute;</a>
            </div>
        </div> 
    </div>    
</section>




        <section class="section section-lg pt-6" style="padding-top: 2rem !important; padding-bottom: 0px">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-md-4">
                    <div class="col-12 col-md-8 text-center">
                        <h2 class="h1 font-weight-bolder mb-4">Certificaciones y Hosting</h2>
                        <!--<p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel leo porta lectus pulvinar eleifend. In vitae tincidunt nibh, vitae hendrerit libero.</p>-->
                    </div>
                </div>
                

                <div class="section section-lg pt-0 line-bottom-light">
            <div class="container">
                <div class="row">
                    
                    <div class="col-12 col-md-12 text-center px-4 mb-5 mb-lg-0">
                        <div class="icon icon-sm icon-shape icon-shape-primary rounded mb-4">
                            <i class="fas fa-user-shield"></i>
                        </div>
                        <h5 class="mb-3">Seguridad</h5>
                        <h5>Encriptado predeterminado </h5>
                        <p>
                            Encriptamos el tráfico de datos y almacenados en nuestras instalaciones, de modo que solo se pueda acceder a ellos mediante roles y servicios autorizados con acceso auditado a las claves de encriptado.
                        </p>
                        <p>
                            Seguridad mejorada y baja latencia gracias al servicio “Cloud Key Management Service” de Google cloud. 
                        </p>
                        <h5>Estándares abiertos.</h5>
                        <p>
                            Garantiza la expansión e integración con el ecosistema digital y futuros desarrollos al adoptar Open Source y los protocolos abiertos. 
                        </p>
                    </div>
                    
                    
                    <div class="col-12 col-md-6 text-center px-4 mb-5 mb-lg-0">
                        <div class="icon icon-sm icon-shape icon-shape-primary rounded mb-4">
                            <i class="fab fa-expeditedssl"></i>
                        </div>
                        <h5 class="mb-3">SSL</h5>
                        <p>
                            Nosotros trabajamos para proteger la seguridad de tu información durante la transmisión usando Secure Socket Layers (SSL) o Sitio Seguro que criptografía las informaciones que digitás.                              
                        </p>
                    </div>
                    
                    <div class="col-12 col-md-6 text-center px-4">
                        <div class="icon icon-sm icon-shape icon-shape-primary rounded mb-4">
                            <i class="fas fa-server"></i>
                        </div>
                        <h5 class="mb-3">Hosting</h5>
                        <p>
                            Nuestro centro de datos dispone de instalaciones especializadas que cuentan con un sistema de protección contra incendios, sensores de humo y calor.                        
                        </p>
                    </div>
                </div>
            </div>
        </div>

            </div>
        </section>


        <footer class="footer section pt-6 pt-md-8 pt-lg-10 pb-3 bg-primary text-white overflow-hidden">
    <div class="pattern pattern-soft top"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mb-4 mb-lg-0">
                <a class="footer-brand mr-lg-5 d-flex" href="../../home.aspx">
                    <img src="../assets/img/brand/gofactoring2.png" height="35" class="mr-3" alt="Footer logo">
                </a>
                <!--<p class="my-4">Un aliado para tu negocio</p>-->
                <div class="dropdown mb-4 mb-lg-0">
                    <p>Asunción, Paraguay</p>
                    <p>Teléfono de contacto -  +595985678599</p>
                    <p>Mail de contacto -  hola@gofactoring.com.py</p>
                    <!--<a id="langsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle footer-language-link">
                        <img src="../assets/img/flags/united-states-of-america.svg" alt="USA Flag" class="language-flag"> English
                        <i class="fas fa-chevron-down ml-1"></i>
                    </a>
                    <div aria-labelledby="langsDropdown" class="dropdown-menu dropdown-menu-center">
                        <a href="#" class="dropdown-item text-gray text-sm"><img src="../assets/img/flags/germany.svg" alt="Germany Flag" class="language-flag"> German</a>
                        <a href="#" class="dropdown-item text-gray text-sm"><img src="../assets/img/flags/spain.svg" alt="Spain Flag" class="language-flag"> Spanish</a>
                        <a href="#" class="dropdown-item text-gray text-sm"><img src="../assets/img/flags/france.svg" alt="France Flag" class="language-flag"> French</a>
                    </div>-->
                </div>
            </div>
            <div class="col-12 col-sm-4 col-lg-4 mb-4 mb-lg-0">
                <h6>Información</h6>
                <ul class="links-vertical">
                    <li><a target="_blank" href="politicas.html">Política de Privacidad</a></li>
                    <li><a target="_blank" href="legal.html">Términos y condiciones</a></li>
                    <li><a target="_blank" href="novedades.html">Novedades</a></li>
                </ul>
                
            </div>
            <!--<div class="col-6 col-sm-3 col-lg-2 mb-4 mb-lg-0">
                <h6>Creative Tim</h6>
                <ul class="links-vertical">
                    <li><a target="_blank" href="https://www.creative-tim.com/blog">Blog</a></li>
                    <li><a target="_blank" href="https://www.creative-tim.com/templates">Products</a></li>
                    <li><a target="_blank" href="https://www.creative-tim.com/support-terms">Support</a></li>
                    <li><a target="_blank" href="https://www.creative-tim.com/license">License</a>
                    </li>
                </ul>
            </div>-->
            <div class="col-12 col-sm-4 col-lg-4">
                <h6>Suscribirse</h6>
                <p class="font-small">Manténgase informado de nuestras últimas novedades.</p>
                <form action="#">
                    <div class="form-row">
                        <div class="col-8">
                            <input type="email" class="form-control mb-2" placeholder="Correo" name="email" required>
                        </div>
                        <div class="col-4">
                            <button type="submit" class="btn btn-secondary btn-block"><span>Suscribirse</span></button>
                        </div>
                    </div>
                </form>
                <!--<small class="mt-2 form-text"><a href="#" class="font-weight-bold text-underline"></a> <a href="#" class="font-weight-bold text-underline"></a></small>-->
            </div>
        </div>
        <hr class="my-4 my-lg-5">
        <div class="row">
            <div class="col pb-4 mb-md-0">
                <div class="d-flex text-center justify-content-center align-items-center">
                    <p class="font-weight-normal mb-0">© <a href="#" target="_blank">Fintech Solutions</p>
                </div>
            </div>
        </div>
    </div>
</footer>

    </main>

    <!-- Core -->
<script src="../../vendor/jquery/dist/jquery.min.js"></script>
<script src="../../vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="../../vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../../vendor/headroom.js/dist/headroom.min.js"></script>

<!-- Vendor JS -->
<script src="../../vendor/onscreen/dist/on-screen.umd.min.js"></script>
<script src="../../vendor/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="../../vendor/jarallax/dist/jarallax.min.js"></script>
<script src="../../vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<!-- Impact JS -->
<script src="../assets/js/front.js"></script>

<script>

    $("a.nav-link").on('click', function (event) {
        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 800, function () {

                window.location.hash = hash;
            });
        }
    });




    var formatter = new Intl.NumberFormat('es-PY', {
        style: 'currency',
        currency: 'pyg',
        minimumFractionDigits: 0,
        maximumFractionDigits: 3,

    });


    var formatter2 = new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD',
        minimumFractionDigits: 0,
        maximumFractionDigits: 3,

    });



    function Calculate() {

        calculadora_gs();


    }


    function calculadora_gs() {
        var tasa_gs = 15 / 100;
        var plazo_dias = parseInt(document.getElementById('rate').value);
        var monto_factura = parseInt(document.getElementById('amount').value);
        var monto_no_fin = monto_factura * (5 / 100);
        var monto_fin = monto_factura - monto_no_fin;
        var monto_real = 0;
        var conversion_gs = 6700;

        var producto1 = Math.pow((1 + tasa_gs), (plazo_dias / 365));
        monto_real = Math.round(1 / (producto1) * (monto_fin) - (1.5 / 100) * (monto_factura) + 3 * 6700);
        console.log("\nEl monto real es : " + monto_real + "\n pow: " + producto1);


        const amount = document.querySelector("#amount");
        //const amount_ = document.querySelector("#amount_");

        const rate = document.getElementById("rate");
        //const rate_ = document.querySelector("#rate_");

        var nonfinanceAmount = (amount.value * (5 / 100));

        var financeAmount = (amount.value) - (nonfinanceAmount);

        var fixedCost = Math.round((financeAmount * 0.0075));
        var iva = Math.round((fixedCost * 0.19));
        const interest = Math.round((financeAmount * (0.015 / 30) * rate.value));

        const rangeV = document.getElementById('rangeV');
        //const rate2 = document.getElementById('rate2');

        var tasa_ = 0.025;
        var fixedCost_ = 50000;
        var iva_ = (fixedCost_ * 0.19);
        var financeAmount_ = (amount.value * 0.30);
        var rest_financeAmount_ = (amount.value * 0.70);
        var totalAmount_ = (amount.value);

        const interest_ = (financeAmount_ * (0.025 / 30) * rate.value);

        const rangeV_ = document.getElementById('rangeV');
        //const rate2_ = document.getElementById('rate2_');

        tasaFactoring = 0.015;
        amountFactoring = amount.value * 0.98;

        interestFactoring = ((amount.value * 0.98) * (0.015 / 30) * rate.value);

        fixedCostFactoring_ = amountFactoring * 0.0075;

        ivaFactoring_ = fixedCostFactoring_ * 0.19;

        totalFactoring_ = Math.round((amountFactoring - interestFactoring - fixedCostFactoring_ - ivaFactoring_ - financeAmount_));

        totalOrdering_ = (financeAmount_ - interest_ - fixedCost_ - iva_);

        excessFactoring_ = (amount.value - amount.value * 0.98);

        totalFactoringCost_ = excessFactoring_ + totalOrdering_ + totalFactoring_;

        const totalCost = Math.round((interest + fixedCost + iva));
        const totalCost_ = Math.round((interest_ + fixedCost_ + iva_));

        // Calculating total payment
        //const total = Math.round((financeAmount - totalCost).toFixed(2));
        //const total_ = Math.round((financeAmount_ - totalCost_).toFixed(2));

        var dias_rod = rate.value;
        var tasa_rod = 15 / 100;

        var pow = Math.pow((1 + tasa_rod), (dias_rod / 365));
        const total = Math.round(1 / (pow) * (financeAmount) - (1.5 / 100) * (amount.value) + 3 * 6700);

        const newValue = Number((amount.value - amount.min) * 100 / (amount.max - amount.min));
        const newPosition = 10 - (newValue * 0.2);
        rangeV.innerHTML = `<span>${amount.value}</span>`;
        rangeV.style.left = `calc(${newValue}% + (${newPosition}px))`;

        // DIAS
        const newValueD = Number((rate.value - rate.min) * 100 / (rate.max - rate.min));
        const newPositionD = 10 - (newValueD * 0.2);
        rate2.innerHTML = `<span>${rate.value} Días</span>`;
        rate2.style.left = `calc(${newValueD}% + (${newPositionD}px))`;


        const newValue_ = Number((amount.value - amount.min) * 100 / (amount.max - amount.min));
        const newPosition_ = 10 - (newValue_ * 0.2);
        rangeV_.innerHTML = `<span>${amount.value}</span>`;
        rangeV_.style.left = `calc(${newValue_}% + (${newPosition_}px))`;

        // DIAS
        const newValueD_ = Number((rate.value - rate.min) * 100 / (rate.max - rate.min));
        const newPositionD_ = 10 - (newValueD_ * 0.2);
        rate.innerHTML = `<span>${rate.value} Días</span>`;
        rate.style.left = `calc(${newValueD_}% + (${newPositionD_}px))`;


        $('#rangeV').text(amount.value);
        //$('#rangeV_').text(amount.value);

        //Transform variables to CLP¨
        final_financeAmount = formatter.format(financeAmount);
        final_nonfinanceAmount = formatter.format(nonfinanceAmount);
        finalAmount = formatter.format(amount.value);
        final_fixedCost = formatter.format(fixedCost);
        finalInterest = formatter.format(interest);
        finalIVA = formatter.format(iva);
        final_totalCost = formatter.format(totalCost);
        finalTotal = formatter.format(total);

        // SIMULADOR 2
        /*finalAmount_ = formatter.format(amount.value);
        final_financeAmount_ = formatter.format(financeAmount_);
        final_fixedCost_ = formatter.format(fixedCost_);
        finalInterest_ = formatter.format(interest_);
        finalIVA_ = formatter.format(iva_);
        final_totalCost_= formatter.format(totalCost_);
        final_fixedCostFact = formatter.format(fixedCostFactoring_);
        finalTotalOrdering_ = formatter.format(totalOrdering_);
        finalTotalFactoring_ = formatter.format(totalFactoring_);
        finalExcedente_ = formatter.format(excessFactoring_);
        finalIVAFact = formatter.format(ivaFactoring_);
        final_totalAmount_ = formatter.format(totalAmount_);
        final_restfinanceAmount_ = formatter.format(rest_financeAmount_);
        */



        jQuery(document).ready(function ($) {
            jQuery("#total_amount").text(finalAmount);
            /*jQuery("#total_amount_").text(final_totalAmount_);*/

            // Code that uses jQuery's $ can follow here.
        });

        //Show variables in <p> HTML 
        // document.getElementById("#total_amount") = finalAmount;

        document.querySelector("#costo_total").innerHTML = final_totalCost;
        document.querySelector("#monto_no_financiado").innerHTML = final_nonfinanceAmount;
        document.querySelector("#monto_financiado").innerHTML = final_financeAmount;
        /*document.querySelector("#monto_no_financiado_").innerHTML = final_restfinanceAmount_;
        document.querySelector("#monto_financiado_").innerHTML = final_financeAmount_;
        document.querySelector("#costo_total_").innerHTML = final_totalCost_;*/
        // document.querySelector("#rate2").innerHTML=rate.value + " Días";

        document.querySelector("#total").innerHTML = finalTotal;

        /*document.querySelector("#total_ordering").innerHTML = finalTotalOrdering_;
        document.querySelector("#total_factoring").innerHTML = finalTotalFactoring_;
        document.querySelector("#total_excess").innerHTML = finalExcedente_;*/
    }





    function calculadora_usd2() {
        var tasa_gs = 15 / 100;
        var plazo_dias = parseInt(document.getElementById('rate_usd').value);
        var monto_factura = parseInt(document.getElementById('amount_usd').value);
        var monto_no_fin = monto_factura * (5 / 100);
        var monto_fin = monto_factura - monto_no_fin;
        var monto_real = 0;
        var conversion_gs = 6700;

        var producto1 = Math.pow((1 + tasa_gs), (plazo_dias / 365));
        monto_real = Math.round(1 / (producto1) * (monto_fin));
        console.log("\nEl monto real es : " + monto_real + "\n pow: " + producto1);


        const amount = document.querySelector("#amount_usd");
        //const amount_ = document.querySelector("#amount_");

        const rate = document.getElementById("rate_usd");
        //const rate_ = document.querySelector("#rate_");

        var nonfinanceAmount = (amount.value * (5 / 100));

        var financeAmount = (amount.value) - (nonfinanceAmount);

        var fixedCost = Math.round((financeAmount * 0.0075));
        var iva = Math.round((fixedCost * 0.19));
        const interest = Math.round((financeAmount * (0.015 / 30) * rate.value));

        const rangeV = document.getElementById('range_usd');
        const rate2 = document.getElementById('rate_usd2');

        var tasa_ = 0.025;
        var fixedCost_ = 50000;
        var iva_ = (fixedCost_ * 0.19);
        var financeAmount_ = (amount.value * 0.30);
        var rest_financeAmount_ = (amount.value * 0.70);
        var totalAmount_ = (amount.value);

        const interest_ = (financeAmount_ * (0.025 / 30) * rate.value);

        const rangeV_ = document.getElementById('range_usd');
        //const rate2_ = document.getElementById('rate2_');

        tasaFactoring = 0.015;
        amountFactoring = amount.value * 0.98;

        interestFactoring = ((amount.value * 0.98) * (0.015 / 30) * rate.value);

        fixedCostFactoring_ = amountFactoring * 0.0075;

        ivaFactoring_ = fixedCostFactoring_ * 0.19;

        totalFactoring_ = Math.round((amountFactoring - interestFactoring - fixedCostFactoring_ - ivaFactoring_ - financeAmount_));

        totalOrdering_ = (financeAmount_ - interest_ - fixedCost_ - iva_);

        excessFactoring_ = (amount.value - amount.value * 0.98);

        totalFactoringCost_ = excessFactoring_ + totalOrdering_ + totalFactoring_;

        const totalCost = Math.round((interest + fixedCost + iva));
        const totalCost_ = Math.round((interest_ + fixedCost_ + iva_));

        // Calculating total payment
        //const total = Math.round((financeAmount - totalCost).toFixed(2));
        //const total_ = Math.round((financeAmount_ - totalCost_).toFixed(2));

        var dias_rod = rate.value;
        var tasa_rod = 15 / 100;

        var pow = Math.pow((1 + tasa_rod), (dias_rod / 365));
        const total = Math.round(1 / (pow) * (financeAmount) - (1.5 / 100) * (amount.value) + 3 * 6700);

        const newValue = Number((amount.value - amount.min) * 100 / (amount.max - amount.min));
        const newPosition = 10 - (newValue * 0.2);
        rangeV.innerHTML = `<span>${amount.value}</span>`;
        rangeV.style.left = `calc(${newValue}% + (${newPosition}px))`;

        // DIAS
        const newValueD = Number((rate.value - rate.min) * 100 / (rate.max - rate.min));
        const newPositionD = 10 - (newValueD * 0.2);
        rate2.innerHTML = `<span>${rate.value} Días</span>`;
        rate.style.left = `calc(${newValueD}% + (${newPositionD}px))`;


        const newValue_ = Number((amount.value - amount.min) * 100 / (amount.max - amount.min));
        const newPosition_ = 10 - (newValue_ * 0.2);
        rangeV_.innerHTML = `<span>${amount.value}</span>`;
        rangeV_.style.left = `calc(${newValue_}% + (${newPosition_}px))`;

        // DIAS
        const newValueD_ = Number((rate.value - rate.min) * 100 / (rate.max - rate.min));
        const newPositionD_ = 10 - (newValueD_ * 0.2);
        rate.innerHTML = `<span>${rate.value} Días</span>`;
        rate.style.left = `calc(${newValueD_}% + (${newPositionD_}px))`;


        $('#range_usd').text(new Intl.NumberFormat().format(parseInt(amount.value)));
        //$('#rangeV_').text(amount.value);

        //Transform variables to CLP¨
        final_financeAmount = formatter2.format(financeAmount);
        final_nonfinanceAmount = formatter2.format(nonfinanceAmount);
        finalAmount = formatter2.format(amount.value);
        final_fixedCost = formatter2.format(fixedCost);
        finalInterest = formatter2.format(interest);
        finalIVA = formatter2.format(iva);
        final_totalCost = formatter2.format(totalCost);
        finalTotal = formatter2.format(total);

        // SIMULADOR 2
        /*finalAmount_ = formatter.format(amount.value);
        final_financeAmount_ = formatter.format(financeAmount_);
        final_fixedCost_ = formatter.format(fixedCost_);
        finalInterest_ = formatter.format(interest_);
        finalIVA_ = formatter.format(iva_);
        final_totalCost_= formatter.format(totalCost_);
        final_fixedCostFact = formatter.format(fixedCostFactoring_);
        finalTotalOrdering_ = formatter.format(totalOrdering_);
        finalTotalFactoring_ = formatter.format(totalFactoring_);
        finalExcedente_ = formatter.format(excessFactoring_);
        finalIVAFact = formatter.format(ivaFactoring_);
        final_totalAmount_ = formatter.format(totalAmount_);
        final_restfinanceAmount_ = formatter.format(rest_financeAmount_);
        */



        jQuery(document).ready(function ($) {
            jQuery("#total_amount_usd").text(finalAmount);
            /*jQuery("#total_amount_").text(final_totalAmount_);*/

            // Code that uses jQuery's $ can follow here.
        });

        //Show variables in <p> HTML 
        // document.getElementById("#total_amount") = finalAmount;

        document.querySelector("#costo_total").innerHTML = final_totalCost;
        document.querySelector("#monto_no_financiado").innerHTML = final_nonfinanceAmount;
        document.querySelector("#monto_financiado").innerHTML = final_financeAmount;
        /*document.querySelector("#monto_no_financiado_").innerHTML = final_restfinanceAmount_;
        document.querySelector("#monto_financiado_").innerHTML = final_financeAmount_;
        document.querySelector("#costo_total_").innerHTML = final_totalCost_;*/
        // document.querySelector("#rate2").innerHTML=rate.value + " Días";

        document.querySelector("#total_usd").innerHTML = "$" + new Intl.NumberFormat().format(parseInt(monto_real));

        /*document.querySelector("#total_ordering").innerHTML = finalTotalOrdering_;
        document.querySelector("#total_factoring").innerHTML = finalTotalFactoring_;
        document.querySelector("#total_excess").innerHTML = finalExcedente_;*/
    }







    function calculadora_usd() {
        var tasa_gs = 15 / 100;
        var plazo_dias = parseInt(document.getElementById('rate_2').value);
        var monto_factura = parseInt(document.getElementById('amount_2').value);
        var monto_no_fin = monto_factura * (5 / 100);
        var monto_fin = monto_factura - monto_no_fin;
        var monto_real = 0;
        var conversion_gs = 6700;

        var producto1 = Math.pow((1 + tasa_gs), (plazo_dias / 365));
        monto_real = Math.round(1 / (producto1) * (monto_fin) - (1.5 / 100) * (monto_factura) + 3 * 6700);
        console.log("\nEl monto real es : " + monto_real + "\n pow: " + producto1);


        const amount = document.querySelector("#amount_2");
        //const amount_ = document.querySelector("#amount_");

        const rate = document.getElementById("rate2");
        //const rate_ = document.querySelector("#rate_");

        var nonfinanceAmount = (amount.value * (5 / 100));

        var financeAmount = (amount.value) - (nonfinanceAmount);

        var fixedCost = Math.round((financeAmount * 0.0075));
        var iva = Math.round((fixedCost * 0.19));
        const interest = Math.round((financeAmount * (0.015 / 30) * rate.value));

        const rangeV = document.getElementById('rangeV_2');
        //const rate2 = document.getElementById('rate2');

        var tasa_ = 0.025;
        var fixedCost_ = 50000;
        var iva_ = (fixedCost_ * 0.19);
        var financeAmount_ = (amount.value * 0.30);
        var rest_financeAmount_ = (amount.value * 0.70);
        var totalAmount_ = (amount.value);

        const interest_ = (financeAmount_ * (0.025 / 30) * rate.value);

        const rangeV_ = document.getElementById('rangeV_2');
        const rate2_ = document.getElementById('rate2_');

        tasaFactoring = 0.015;
        amountFactoring = amount.value * 0.98;

        interestFactoring = ((amount.value * 0.98) * (0.015 / 30) * rate.value);

        fixedCostFactoring_ = amountFactoring * 0.0075;

        ivaFactoring_ = fixedCostFactoring_ * 0.19;

        totalFactoring_ = Math.round((amountFactoring - interestFactoring - fixedCostFactoring_ - ivaFactoring_ - financeAmount_));

        totalOrdering_ = (financeAmount_ - interest_ - fixedCost_ - iva_);

        excessFactoring_ = (amount.value - amount.value * 0.98);

        totalFactoringCost_ = excessFactoring_ + totalOrdering_ + totalFactoring_;

        const totalCost = Math.round((interest + fixedCost + iva));
        const totalCost_ = Math.round((interest_ + fixedCost_ + iva_));

        // Calculating total payment
        //const total = Math.round((financeAmount - totalCost).toFixed(2));
        //const total_ = Math.round((financeAmount_ - totalCost_).toFixed(2));

        var dias_rod = rate.value;
        var tasa_rod = 15 / 100;

        var pow = Math.pow((1 + tasa_rod), (dias_rod / 365));
        const total = Math.round(1 / (pow) * (financeAmount) - (1.5 / 100) * (amount.value) + 3 * 6700);

        const newValue = Number((amount.value - amount.min) * 100 / (amount.max - amount.min));
        const newPosition = 10 - (newValue * 0.2);
        rangeV.innerHTML = `<span>${amount.value}</span>`;
        rangeV.style.left = `calc(${newValue}% + (${newPosition}px))`;

        // DIAS
        const newValueD = Number((rate.value - rate.min) * 100 / (rate.max - rate.min));
        const newPositionD = 10 - (newValueD * 0.2);
        rate2.innerHTML = `<span>${rate.value} Días</span>`;
        rate2.style.left = `calc(${newValueD}% + (${newPositionD}px))`;


        const newValue_ = Number((amount.value - amount.min) * 100 / (amount.max - amount.min));
        const newPosition_ = 10 - (newValue_ * 0.2);
        rangeV_.innerHTML = `<span>${amount.value}</span>`;
        rangeV_.style.left = `calc(${newValue_}% + (${newPosition_}px))`;

        // DIAS
        const newValueD_ = Number((rate.value - rate.min) * 100 / (rate.max - rate.min));
        const newPositionD_ = 10 - (newValueD_ * 0.2);
        rate2_.innerHTML = `<span>${rate2_.value} Días</span>`;
        rate2_.style.left = `calc(${newValueD_}% + (${newPositionD_}px))`;


        $('#rangeV').text(amount.value);
        //$('#rangeV_').text(amount.value);

        //Transform variables to CLP¨
        final_financeAmount = formatter.format(financeAmount);
        final_nonfinanceAmount = formatter.format(nonfinanceAmount);
        finalAmount = formatter.format(amount.value);
        final_fixedCost = formatter.format(fixedCost);
        finalInterest = formatter.format(interest);
        finalIVA = formatter.format(iva);
        final_totalCost = formatter.format(totalCost);
        finalTotal = formatter.format(total);

        // SIMULADOR 2
        /*finalAmount_ = formatter.format(amount.value);
        final_financeAmount_ = formatter.format(financeAmount_);
        final_fixedCost_ = formatter.format(fixedCost_);
        finalInterest_ = formatter.format(interest_);
        finalIVA_ = formatter.format(iva_);
        final_totalCost_= formatter.format(totalCost_);
        final_fixedCostFact = formatter.format(fixedCostFactoring_);
        finalTotalOrdering_ = formatter.format(totalOrdering_);
        finalTotalFactoring_ = formatter.format(totalFactoring_);
        finalExcedente_ = formatter.format(excessFactoring_);
        finalIVAFact = formatter.format(ivaFactoring_);
        final_totalAmount_ = formatter.format(totalAmount_);
        final_restfinanceAmount_ = formatter.format(rest_financeAmount_);
        */



        jQuery(document).ready(function ($) {
            jQuery("#total_amount_2").text(finalAmount);
            /*jQuery("#total_amount_").text(final_totalAmount_);*/

            // Code that uses jQuery's $ can follow here.
        });

        //Show variables in <p> HTML 
        // document.getElementById("#total_amount") = finalAmount;

        //document.querySelector("#costo_total_2").innerHTML = final_totalCost;
        document.querySelector("#monto_no_financiado2").innerHTML = final_nonfinanceAmount;
        document.querySelector("#monto_financiado2").innerHTML = final_financeAmount;
        /*document.querySelector("#monto_no_financiado_").innerHTML = final_restfinanceAmount_;
        document.querySelector("#monto_financiado_").innerHTML = final_financeAmount_;
        document.querySelector("#costo_total_").innerHTML = final_totalCost_;*/
        // document.querySelector("#rate2").innerHTML=rate.value + " Días";

        document.querySelector("#total2").innerHTML = finalTotal;

        /*document.querySelector("#total_ordering").innerHTML = finalTotalOrdering_;
        document.querySelector("#total_factoring").innerHTML = finalTotalFactoring_;
        document.querySelector("#total_excess").innerHTML = finalExcedente_;*/
    }

    $(document).ready(function ($) {
        // console.log("ready");
        Calculate();
        $(".proov").click(function () {
            $(".pyme").addClass('activeNot');
            $(".proov").removeClass('activeNot1');
            $("#barra").addClass('hrrr');
            $("#barra1").removeClass('hrrr');
            $(".titulo_proveedor").addClass('titulo_celeste');
            $(".titulo_factura").removeClass('titulo_celeste');
            $(".proov").addClass('proov_');
            $(".pyme").removeClass('proov_2');


        });
        $(".pyme").click(function () {
            // alert("prooooov");
            $(".proov").removeClass('proov_');
            $(".pyme").addClass('proov_2');

            $(".proov").addClass('activeNot1');
            $(".pyme").removeClass('activeNot');
            $("#barra1").addClass('hrrr');
            $("#barra").removeClass('hrrr');

            $(".titulo_factura").addClass('titulo_celeste');
            $(".titulo_proveedor").removeClass('titulo_celeste');
        });
    });


    document.querySelectorAll(".__range").forEach(function (el) {
        var output = document.getElementById("demo");
        var amount = document.getElementById("amount");
        // output.innerHTML = slider.value;   
        el.oninput = function () {
            // console.log(this.value);
            // console.log(amount.value);
            output.innerHTML = formatter.format(amount.value);
            Calculate();

            var valPercent = (el.valueAsNumber - parseInt(el.min)) /
                (parseInt(el.max) - parseInt(el.min));
            var style = 'background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, color-stop(' + valPercent + ', #3BBD0A), color-stop(' + valPercent + ', #f5f6f8));';
            el.style = style;
        };
        el.oninput();
    });

    document.querySelectorAll(".dia").forEach(function (el) {
        var output = document.getElementById("rate2");
        // var amount = document.getElementById("amount");
        // output.innerHTML = slider.value;   
        el.oninput = function () {
            // console.log(this.value);
            // console.log(amount.value);
            output.innerHTML = this.value + " Días";
            Calculate();

            var valPercent = (el.valueAsNumber - parseInt(el.min)) /
                (parseInt(el.max) - parseInt(el.min));
            var style = 'background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, color-stop(' + valPercent + ', #3BBD0A), color-stop(' + valPercent + ', #f5f6f8));';
            el.style = style;
        };
        el.oninput();
    });
//   output.innerHTML = __range.value;
// var __range = document.getElementById("__range");
//   __range.oninput = function() {
//     output.innerHTML = this.value;
//     console.log(this.value);
//   }

</script>
    
</body>

</html>
