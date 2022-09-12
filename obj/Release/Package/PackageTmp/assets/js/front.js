/*

=========================================================
* Impact Design System - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/impact-design-system
* Copyright 2010 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/impact-design-system/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/

"use strict";
$(document).ready(function () {

    // options

    var breakpoints = {
        sm: 540,
        md: 720,
        lg: 960,
        xl: 1140
    };


    //Login functionality
    const loginElements = document.querySelector(".js-login");
    const user = JSON.parse(localStorage.getItem("user:info"));

    if (loginElements) {
        if (user?.authorized) {
            loginElements.innerHTML = '<span class="btn btn-sm btn-docs btn-outline-white animate-up-2">' + user.user + ' </span><span target="_blank" class="btn btn-sm btn-secondary animate-up-2 js-logout" > <i class="fas fa-sign-in-alt"></i> Cerrar sesión</span> ';
        } else {
            loginElements.innerHTML = '<a href="ingresar.aspx" class="btn btn-sm btn-docs btn-outline-white animate-up-2"><i class="fas fa-sign-in-alt"></i> Ingresar</a><a href="registro.aspx" target="_blank" class="btn btn-sm btn-secondary animate-up-2" > <i class="fas fa-user-plus"></i> Registrarse</a>';
        }
    }
    //logout

    var logoutElement = $(".js-logout");
    
    {}
    logoutElement.on("click", () => {
        localStorage.removeItem("user:info");
        window.location.href = "/";
    });


    //Navbar depending on authentication
    const navbarElement = document.querySelector(".js-navbar");

    if (navbarElement) {
        if (user?.authorized) {
            navbarElement.innerHTML = `
                <li class="nav-item">
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
                        <li class="nav-item">
                            <a href="/facturas.html" class="nav-link">Mis Facturas</a>
                        </li>
                        <li class="nav-item">
                            <a href="/Clientes.html" class="nav-link">Clientes</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                                <span class="nav-link-inner-text mr-1">Soporte</span>
                                <i class="fas fa-angle-down nav-link-arrow"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg">
                                <div class="col-auto px-0" data-dropdown-content>
                                    <div class="list-group list-group-flush">
                                        <a href="#"
                                            class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-secondary"><i class="fas fa-file-alt"></i></span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">Abrir ticket</span>
                                            </div>
                                        </a>
                                        <a href="#faqs"
                                           class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-primary">
                                                <i class="fas fa-microphone-alt"></i>
                                            </span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">FAQs</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>`;
        } else {
            navbarElement.innerHTML = `
                <li class="nav-item">
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
                                <span class="nav-link-inner-text mr-1">Soporte</span>
                                <i class="fas fa-angle-down nav-link-arrow"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg">
                                <div class="col-auto px-0" data-dropdown-content>
                                    <div class="list-group list-group-flush">
                                        <a href="#"
                                            class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-secondary"><i class="fas fa-file-alt"></i></span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">Abrir ticket</span>
                                            </div>
                                        </a>
                                        <a href="#faqs"
                                           class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-primary">
                                                <i class="fas fa-microphone-alt"></i>
                                            </span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">FAQs</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
            `;
        }
    }


    // preloader
    var $preloader = $('.preloader');
    if($preloader.length) {
        $preloader.delay(1500).slideUp();
    }

    var $navbarCollapse = $('.navbar-main .collapse');

    // Collapse navigation
    $navbarCollapse.on('hide.bs.collapse', function () {
        var $this = $(this);
        $this.addClass('collapsing-out');
        $('html, body').css('overflow', 'initial');
    });

    $navbarCollapse.on('hidden.bs.collapse', function () {
        var $this = $(this);
        $this.removeClass('collapsing-out');
    });

    $navbarCollapse.on('shown.bs.collapse', function () {
        $('html, body').css('overflow', 'hidden');
    });

    $('.navbar-main .dropdown').on('hide.bs.dropdown', function () {
        var $this = $(this).find('.dropdown-menu');

        $this.addClass('close');

        setTimeout(function () {
            $this.removeClass('close');
        }, 200);

    });

    $('.dropdown-submenu > .dropdown-toggle').click(function (e) {
        e.preventDefault();
        $(this).parent('.dropdown-submenu').toggleClass('show');
    });

    $('.dropdown').hover(function() {
        $(this).addClass('show');
        $(this).find('.dropdown-menu').addClass('show');
        $(this).find('.dropdown-toggle').attr('aria-expanded', 'true');
    }, function () {
        $(this).removeClass('show');
        $(this).find('.dropdown-menu').removeClass('show');
        $(this).find('.dropdown-toggle').attr('aria-expanded', 'false');
    });

    $('.dropdown').click(function() {
        if ($(this).hasClass('show')) {
            $(this).removeClass('show');
            $(this).find('.dropdown-menu').removeClass('show');
            $(this).find('.dropdown-toggle').attr('aria-expanded', 'false');
        } else {
            $(this).addClass('show');
        $(this).find('.dropdown-menu').addClass('show');
        $(this).find('.dropdown-toggle').attr('aria-expanded', 'true');
        }
    });

    // Headroom - show/hide navbar on scroll
    if ($('.headroom')[0]) {
        var headroom = new Headroom(document.querySelector("#navbar-main"), {
            offset: 0,
            tolerance: {
                up: 1,
                down: 0
            },
        });
        headroom.init();
    }

    // Background images for sections
    $('[data-background]').each(function () {
        $(this).css('background-image', 'url(' + $(this).attr('data-background') + ')');
    });

    $('[data-background-color]').each(function () {
        $(this).css('background-color', $(this).attr('data-background-color'));
    });

    $('[data-color]').each(function () {
        $(this).css('color', $(this).attr('data-color'));
    });

    // Tooltip
    $('[data-toggle="tooltip"]').tooltip();

    // Popover
    $('[data-toggle="popover"]').each(function () {
        var popoverClass = '';
        if ($(this).data('color')) {
            popoverClass = 'popover-' + $(this).data('color');
        }
        $(this).popover({
            trigger: 'focus',
            template: '<div class="popover ' + popoverClass + '" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'
        })
    });

    // Additional .focus class on form-groups
    $('.form-control').on('focus blur', function (e) {
        $(this).parents('.form-group').toggleClass('focused', (e.type === 'focus' || this.value.length > 0));
    }).trigger('blur');

    $(".progress-bar").each(function () {
        $(this).waypoint(function () {
            var progressBar = $(".progress-bar");
            progressBar.each(function (indx) {
                $(this).css("width", $(this).attr("aria-valuenow") + "%");
            });
            $('.progress-bar').css({
                animation: "animate-positive 3s",
                opacity: "1"
            });
        }, {
                triggerOnce: true,
                offset: '60%'
            });
    });

    // When in viewport
    $('[data-toggle="on-screen"]')[0] && $('[data-toggle="on-screen"]').onScreen({
        container: window,
        direction: 'vertical',
        doIn: function () {
            //alert();
        },
        doOut: function () {
            // Do something to the matched elements as they get off scren
        },
        tolerance: 200,
        throttle: 50,
        toggleClass: 'on-screen',
        debug: false
    });

    // Scroll to anchor with scroll animation
    $('[data-toggle="scroll"]').on('click', function (event) {
        var hash = $(this).attr('href');
        var offset = $(this).data('offset') ? $(this).data('offset') : 0;

        // Animate scroll to the selected section
        $('html, body').stop(true, true).animate({
            scrollTop: $(hash).offset().top - offset
        }, 600);

        event.preventDefault();
    });

    //Parallax
    $('.jarallax').jarallax({
        speed: 0.2
    });

    //Smooth scroll
    var scroll = new SmoothScroll('a[href*="#"]', {
        speed: 500,
        speedAsDuration: true
    });

    // Equalize height to the max of the elements
    if ($(document).width() >= breakpoints.lg) {

        // object to keep track of id's and jQuery elements
        var equalize = {
            uniqueIds: [],
            elements: []
        };

        // identify all unique id's
        $('[data-equalize-height]').each(function () {
            var id = $(this).attr('data-equalize-height');
            if (!equalize.uniqueIds.includes(id)) {
                equalize.uniqueIds.push(id)
                equalize.elements.push({ id: id, elements: [] });
            }
        });

        // add elements in order
        $('[data-equalize-height]').each(function () {
            var $el = $(this);
            var id = $el.attr('data-equalize-height');
            equalize.elements.map(function (elements) {
                if (elements.id === id) {
                    elements.elements.push($el);
                }
            });
        });

        // equalize
        equalize.elements.map(function (elements) {
            var elements = elements.elements;
            if (elements.length) {
                var maxHeight = 0;

                // determine the larget height
                elements.map(function ($element) {
                    maxHeight = maxHeight < $element.outerHeight() ? $element.outerHeight() : maxHeight;
                });

                // make all elements with the same [data-equalize-height] value
                // equal the larget height
                elements.map(function ($element) {
                    $element.height(maxHeight);
                })
            }
        });
    }

    // update target element content to match number of characters
    $('[data-bind-characters-target]').each(function () {
        var $text = $($(this).attr('data-bind-characters-target'));
        var maxCharacters = parseInt($(this).attr('maxlength'));
        $text.text(maxCharacters);

        $(this).on('keyup change', function (e) {
            var string = $(this).val();
            var characters = string.length;
            var charactersRemaining = maxCharacters - characters;
            $text.text(charactersRemaining);
        })
    });

    // copy docs
    $('.copy-docs').on('click', function () {
        var $copy = $(this);
        var htmlEntities = $copy.parents('.nav-wrapper').siblings('.card').find('.tab-pane:last-of-type').html();
        var htmlDecoded = $('<div/>').html(htmlEntities).text().trim();

        var $temp = $('<textarea>');
        $('body').append($temp);
        console.log(htmlDecoded);
        $temp.val(htmlDecoded).select();
        document.execCommand('copy');
        $temp.remove();

        $copy.text('Copied!');
        $copy.addClass('copied');

        setTimeout(function () {
            $copy.text('Copy');
            $copy.removeClass('copied');
        }, 1000);
    });

    $('.current-year').text(new Date().getFullYear());


});

function iniciar_go()
{
    var usuario = document.getElementById('usuario').value;
    var pass = document.getElementById('pass').value;
     $.ajax({
         url: "https://www.gofactoring.com.py:9500/go/api/AuthorizeGoUser",
        method: 'GET',
        data: { user:usuario, key:pass},
        async: false,
        dataType: 'JSON',
        success: function(respuesta) {
            if (respuesta.authorized) {
                localStorage.setItem("user:info", JSON.stringify(respuesta));
                window.location.href = "/";
            }else{
               alert(respuesta.status);
            }
        }
    });
}



function registro_proveedor_cliente()
{
    var terminos = document.getElementById('exampleCheck1');
    if(terminos.checked == true){
        var id_estado = 1;
        var razon_social = document.getElementById('razon_social').value;
        var ruc = document.getElementById('ruc').value;
        var representante = document.getElementById('representante').value;
        var cargo = document.getElementById('cargo').value;
        var telefono1 = document.getElementById('telefono1').value;
        var telefono2 = "";
        var email = document.getElementById('email').value;
        var direccion = document.getElementById('direccion').value;
        var tipo = document.getElementById('tipo').value;
    
        var settings = {
            "url": "https://www.gofactoring.com.py:9500/go/api/GoRequest",
          "method": "POST",
          "timeout": 0,
          "headers": {
            "Content-Type": "application/json"
          },
          "data": JSON.stringify({
            "id_estado": id_estado,
            "razon_social": razon_social,
            "ruc": ruc,
            "telefono1": telefono1,
            "telefono2": telefono2,
            "email": email,
            "direccion": direccion,
            "representante": representante,
            "cargo": cargo,
            "tipo": tipo
          }),
        };

        $.ajax(settings).done(function (response) {
          if(response == true){
              alert("Gracias por registrarse\nRecibirá un correo de validación con sus credenciales.");
              console.log(response);
          }else{
              console.log(response);
              alert("Error");
          }
        });
    }else{
        alert("Debe aceptar los términos y condiciones.");
    }
}



