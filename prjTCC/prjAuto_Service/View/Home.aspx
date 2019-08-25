<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/LayoutInicial.Master" CodeBehind="Home.aspx.cs" Inherits="prjAuto_Service.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="oimota" runat="server">

    <div class="slider">
        <ul class="slides">
            <li>
                <img src="img/Slide0.jpg" />
                <!-- random image -->
                <div class="caption center-align">
                    <h3>Bem Vindo à Auto-Socorro</h3>
                    <h5 class="light grey-text text-lighten-3">Serviço de confiança, rápido e prático</h5>
                    <br />
                    <br />
                    <div class="buttons-wrapper">
                        <div class="row center">
                            <a href="#peca" class="modal-trigger btn-large waves-effect waves-light blue">Pedir guincho</a>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <img src="img/Slide1.jpg" />
                <!-- random image -->
                <div class="caption left-align">
                    <h3>Bem Vindo à Auto-Socorro</h3>
                    <h5 class="light grey-text text-lighten-3">Serviço de confiança, rápido e prático</h5>
                    <br />
                    <br />
                    <div class="buttons-wrapper">
                        <div class="row left">
                            <a href="#peca" class="modal-trigger btn-large waves-effect waves-light blue">Pedir guincho</a>
                        </div>
                    </div>
                </div>
            </li>

            <li>
                <img src="img/Slide2.jpg" />
                <div class="caption right-align">
                    <h3>Bem Vindo à Auto-Socorro</h3>
                    <h5 class="light grey-text text-lighten-3">Serviço de confiança, rápido e prático</h5>
                    <br />
                    <br />
                    <div class="buttons-wrapper">
                        <div class="row right">
                            <a href="#peca" class="modal-trigger btn-large waves-effect waves-light blue">Pedir guincho</a>
                        </div>
                    </div>
                </div>
            </li>

        </ul>

    </div>



    <%--<div id="index-banner" class="parallax-container">
        <div class="section no-pad-bot">
            <div class="container">
                <br />
                <br />
                <h1 class="header center blue-text text-darken-2">Bem Vindo à Auto-Socorro</h1>
                <div class="row center">
                    <h5 class="header col s12 light">Serviço de confiança, rápido e prático</h5>
                </div>
                <div class="row center">
                    <a href="#" id="download-button" class="btn-large waves-effect waves-light blue">Pedir guincho</a>
                </div>
                <br />
                <br />
            </div>
        </div>
        <div class="parallax">
            <img src="img/parallaxexperiment1.jpg" alt="Unsplashed background img 1" />
        </div>
    </div>--%>
    <main>
        <div class="container">
            <div class="section">

                <div class="row">


                    <div>
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">group</i></h2>
                            <h4 class="center">Entendemos o Problema e Temos a Solução</h4>

                            <p class="flow-text">
                                Sabemos como é difícil atualmente conseguir um bom serviço de guinchos em um curto tempo,
                                por causa disso buscamos oferecer a você,
                                nosso cliente, o melhor atendimento possível em relação ao seus problemas.
                            </p>
                        </div>
                    </div>




                </div>
            </div>
        </div>
        <div class="parallax-container">
            <div class="section no-pad-bot">
                <div class="container">
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="row center">
                        <h3 class="header col s12 light">24 Horas por dia, 7 dias por semana</h3>
                    </div>

                </div>
            </div>
            <div class="parallax">
                <img src="img/Empresa2.jpg" alt="Unsplashed background img 1" />
            </div>
        </div>
        <div class="container">
            <div class="section">

                <div class="row">


                    <div>
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">flash_on</i></h2>
                            <h4 class="center">O que Visamos</h4>

                            <p class="flow-text">
                                Buscamos inovar de várias formas possíveis dentro do mercado de trabalho e sabemos que para alcançar isso temos que dar o nosso melhor. Dessa forma, sempre buscamos melhorar e aprender com as nossas experiências. O comprometimendo de cada funcionário da nossa empresa sempre reflete nos nosso principais valores que buscamos mostrar para nossos clientes que seriam: Trabalho em equipe, melhora contínua e principalmente a inovação no mercado de trabalho.
                            </p>
                        </div>
                    </div>



                </div>
            </div>
        </div>
        <div class="parallax-container">
            <div class="section no-pad-bot">
                <div class="container">
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="row center">
                        <h3 class="header col s12 light">24 Horas por dia, 7 dias por semana</h3>
                    </div>

                </div>
            </div>
            <div class="parallax">
                <img src="img/parallaxexperiment1.jpg" alt="Unsplashed background img 1" />
            </div>
        </div>
        <div class="container">
            <div class="section">

                <div class="row">


                    <div>
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">book</i></h2>
                            <h4 class="center">O que Visamos</h4>

                            <p class="flow-text">
                                Buscamos inovar de várias formas possíveis dentro do mercado de trabalho e sabemos que para alcançar isso temos que dar o nosso melhor. Dessa forma, sempre buscamos melhorar e aprender com as nossas experiências. O comprometimendo de cada funcionário da nossa empresa sempre reflete nos nosso principais valores que buscamos mostrar para nossos clientes que seriam: Trabalho em equipe, melhora contínua e principalmente a inovação no mercado de trabalho.
                            </p>
                        </div>
                    </div>



                </div>
            </div>
        </div>

        <!-- Modal Structure -->

        <div id="peca" class="modal">
            <div class="modal-content">
                <h4 class="text-darken-3 blue-text">Escolha uma opção</h4>

                <div class="row">

                    <div class="col s12 m6">
                        <div class="card blue darken-2">
                            <div class="card-image">
                                <img src="img/teste2.jpg" />
                                <span class="card-title">Guincho Agora</span>
                                <a href="AgendarEmer.aspx" class="btn-floating btn-large halfway-fab waves-effect waves-teal white">
                                    <i class="material-icons blue-text">add</i>
                                </a>
                            </div>

                            <div class="card-content">
                                <p class="white-text">
                                    Precisa de um reboque ou transporte agora mesmo? Esta é a opção. 
                           
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m6">
                        <div class="card blue darken-2">
                            <div class="card-image">
                                <img src="img/pngteste.png" />
                                <span class="card-title">Agendar</span>
                                <a href="AgendarCorrida.aspx" class="btn-floating btn-large halfway-fab waves-effect waves-teal white">
                                    <i class="material-icons blue-text">add</i>
                                </a>

                            </div>

                            <div class="card-content">
                                <p class="white-text">
                                    Precisando de um serviço para daqui a alguns dias? clique em adicionar. 
                            
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="row">
                    <p class="light center-align col s12">WhatsApp 956715982 / Fixo 55621495</p>

                </div>
            </div>
        </div>

        <div id="confirmada" class="modal">
            <div class="modal-content">
                <h4 class="text-darken-3 blue-text">Corrida Confirmada</h4>

                <div class="row">

                    <div class="input-field col s6">
                         <p id="origem" class="center-align"></p>
                    </div>
                    <div class="input-field col s6">
                        <p id="destiny" class="center-align"></p>
                    </div>

               
                    <div class="input-field col s6">
                        <p id="data" class="center-align"></p>
                    </div>
                    <div class="input-field col s6">
                        <p id="hora" class="center-align"></p>
                    </div>

               
                    <div class="input-field col s6">
                        <p id="km" class="center-align"></p>
                    </div>
                    <div class="input-field col s6">
                        <p id="time" class="center-align"></p>
                    </div>

                
                    <div class="input-field col s12">
                        <p id="preco" class="center-align"></p>
                    </div>
                    

                </div>
            </div>
            <div class="modal-footer" style="border-top: 1px solid rgba(0, 0, 0, 0.1);">
                <div class="row">
                    <p class="light center-align col s4">WhatsApp 956715982 / Fixo 55621495</p>
                    <p class="light center-align col s6">* Serviços extra, Ex: Chaveiro, Patins, etc</p>
                    <a href="#!" class="modal-close center-align waves-effect waves-light blue btn-flat white-text col s2">OK</a>
                </div>
            </div>
        </div>





        <script>
            (function ($) {
                $(function () {

                    $('.sidenav').sidenav();
                    $('.parallax').parallax();
                    $('.slider').slider({
                        full_width: true,
                        height: 480, // default - height : 400
                        interval: 24000,
                        indicators: true// default - interval: 6000
                    });
                    $('.modal').modal();
                    var url_string = window.location.href;
                    var url = new URL(url_string);
                    var c = url.searchParams.get("c");
                    if (c == "T") {

                        $('#fale').modal('open');
                    }
                    if (c == "C") {
                        $('#origem').html("<spam class=\"blue-text text-darken-3\">Origem: </spam>" +  url.searchParams.get("origem"));
                        $('#destiny').html("<spam class=\"blue-text text-darken-3\">Destino: </spam>" +  url.searchParams.get("destino"));
                        $('#hora').html("<spam class=\"blue-text text-darken-3\">Hora: </spam>" +  url.searchParams.get("hora"));
                        $('#data').html("<spam class=\"blue-text text-darken-3\">Data: </spam>" +  url.searchParams.get("data"));
                        $('#km').html("<spam class=\"blue-text text-darken-3\">Distância: </spam>" +  url.searchParams.get("km"));
                        $('#time').html("<spam class=\"blue-text text-darken-3\">Tempo estimado: </spam>" +  url.searchParams.get("time"));
                        $('#preco').html("<spam class=\"blue-text text-darken-3\">Preço estimado: </spam>" +  url.searchParams.get("preco") + " + Adicionais*");
                        $('#confirmada').modal('open');
                    }

                }); // end of document ready
            })(jQuery); // end of jQuery name space

        </script>
    </main>
</asp:Content>
