<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendarEmer.aspx.cs" Inherits="prjAuto_Service.AgendarEmer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
    <link rel="shortcut icon" type="image/ico" href="img/favicon.ico" />
    <link rel="icon" type="image/ico" href="img/favicon.ico" />
    <link rel="apple-touch-icon" type="image/ico" href="img/favicon.ico" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <link href="css/ipage1.0.css" rel="stylesheet" />
    <title>Auto Socorro </title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no" />
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/barba.min.js" type="text/javascript"></script>
    <script src="js/bannerRotativo.js" type="text/javascript"></script>
    <script src="js/ativaMenu.js" type="text/javascript"></script>
    <script src="js/loading.js" type="text/javascript"></script>
    <style>
        /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
        #map {
            height: 100%;
        }
        /* Optional: Makes the sample page fill the window. */

        .controls {
            margin-top: 10px;
            border: 1px solid transparent;
            border-radius: 2px 0 0 2px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            height: 32px;
            outline: none;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        }

        .controls1 {
             margin-top: 10px;
            border: 1px solid transparent;
            border-radius: 2px 0 0 2px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            height: 32px;
            outline: none;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
            margin-left: 12px;
            padding: 0 11px 0 13px;
            text-overflow: ellipsis;
            width: 200px;
        }
    </style>

</head>
<body>
    <div id="barba-wrapper">
        <div class="barba-container">
            <div>
                <!-- <img src="img/biback.png" alt="fundo experimental" id="body"> -->
            </div>
            <div id="scroller">



                <nav class="navbar sticky-top navbar-expand-sm navbar-dark bg-primary">
                    <div class="container">
                        <a class="navbar-brand" href="Home.aspx">Auto Socorro</a>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="Home.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="SobreNos.aspx">Sobre</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Servicos.aspx">Serviços</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="FaleConosco.aspx">Fale Conosco</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cadastro</a>
                                <div class="dropdown-menu">
                                    <a href="CadastroF.aspx" class="dropdown-item">Pessoa Física</a>
                                    <a href="CadastroJ.aspx" class="dropdown-item">Pessoa Jurídica</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>


                <%-- <h1 class="centertext"><i>Bem Vindo a Auto-Socorro</i></h1>
              <div id="mainslider">
            <!-- <img src="img/slide0.jpg" alt="imagem da empresa" class="foto1"> -->
                 
                  
                  
             </div>--%>

                <main id="c_pricipal_quiz" style="width: 80%; padding: 1.5vw">

                    <h1 class="ht">Insira os dados do seu pedido</h1>

                    <form id="formF" runat="server">
                        <div class="form-group">

                            <p class="campo">
                                <label>Nome <span>*</span>:</label>
                                <asp:TextBox ID="txtNome" class="form-control" runat="server" required></asp:TextBox>

                            </p>
                            <br />
                          <p class="campo">
                                <label for="sr_nome">Telefone <span>*</span>:</label>
                                <asp:TextBox ID="txtTelefone" placeholder="" class="form-control" runat="server" required></asp:TextBox>
                            </p>
                             
                            <p class="campo">
                                <label for="re_nome">Email<span>*</span>:</label>
                                <asp:TextBox class="form-control" placeholder="" ID="txtEmail" runat="server" required></asp:TextBox>
                            </p>

                            <p class="campo">
                                <label for="u_nome"><%--Local de origem <span>*</span>:--%></label>
                                <asp:TextBox ID="txtOrigem" class="controls1" placeholder="Origem" runat="server" required></asp:TextBox>

                            </p>

                            <p class="campo">
                                <label for="s_nome"><%--Local de destino <span>*</span>:--%></label>
                                <asp:TextBox ID="txtDestino" class="controls1" placeholder="Destino" runat="server" required></asp:TextBox>

                            </p>

                            <br />


                            <div id="mode-selector" class="controls" style="display:none">
                                <input type="radio" name="type" id="changemode-walking" checked="checked">
                                <label for="changemode-walking">Walking</label>

                                <input type="radio" name="type" id="changemode-transit">
                                <label for="changemode-transit">Transit</label>

                                <input type="radio" name="type" id="changemode-driving">
                                <label for="changemode-driving">Driving</label>
                            </div>

                            <div id="map" style="height: 75vh"></div>


                            <br />
                            <br />
                            <br />
                            <br />





                           

                            <br />
                            <br />
                            <p class="campo"><b>Declaração de confidencialidade de dados</b></p>
                            <p class="campo">Confirmar a aceitação da nossa declaração de confidencialidade de dados</p>
                            <p class="campo">
                                A exibição é efetuada em uma nova janela. Caso seja suprimida a exibição de campos adicionais em um bloqueador de popups, este deve ser primeiro desativado.<p>
                                    <p class="campo">
                                        <a href="img/TERMOS_TCM.pdf" class="ltd" target="_blank"><b>Declaração de confidencialidade de dados</b><a>
                                    </p>
                                    <p>Asseguramos que os dados que nos foram transmitidos serão tratados confidencialmente e só serão utilizados para fins apresentados na declaração de confidencialidade de dados.</p>
                                    <p class="campo1">
                                        <input type="checkbox" name="concordo" class="chec" required>Sim, li e aceito a declaração de confidencialidade de dados.
                                    </p>

                      
                        <br />
                        <p class="campo">
                        </div><asp:Button ID="btnAgendarEmer" runat="server" Text="Enviar" class="btn btn-primary" CssClass="btn btn-primary" OnClick="btnAgendarEme_Click" ></asp:Button>
                        </p>
                    </form>



                </main>

                <br />
                <br />
                <br />
                <br />
                <br />
                <footer id="copy">
                    <br />

                    <p>
                  Copyright © 2018 - GRUPO E 
                       <div id="janelaModal" class="modalVisual">
                    <span class="fechar">x</span>
                    <img class="modalConteudo" id="imgModal">
                    <div id="txtImg"></div>
                </div>
            </div>
        </div>

    </div>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script>
        // This example requires the Places library. Include the libraries=places
        // parameter when you first load the API. For example:
        // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                mapTypeControl: false,
                center: { lat: -23.5489, lng: -46.6388 },
                zoom: 13
            });

            new AutocompleteDirectionsHandler(map);
        }

        /**
         * @constructor
        */
        function AutocompleteDirectionsHandler(map) {
            this.map = map;
            this.originPlaceId = null;
            this.destinationPlaceId = null;
            this.travelMode = 'DRIVING';
            var originInput = document.getElementById('txtOrigem');
            var destinationInput = document.getElementById('txtDestino');
            var modeSelector = document.getElementById('mode-selector');
            this.directionsService = new google.maps.DirectionsService;
            this.directionsDisplay = new google.maps.DirectionsRenderer;
            this.directionsDisplay.setMap(map);

            var originAutocomplete = new google.maps.places.Autocomplete(
                originInput, { placeIdOnly: true });
            var destinationAutocomplete = new google.maps.places.Autocomplete(
                destinationInput, { placeIdOnly: true });

            this.setupClickListener('changemode-walking', 'WALKING');
            this.setupClickListener('changemode-transit', 'TRANSIT');
            this.setupClickListener('changemode-driving', 'DRIVING');

            this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
            this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

            this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
            this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput);
            this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
        }

        // Sets a listener on a radio button to change the filter type on Places
        // Autocomplete.
        AutocompleteDirectionsHandler.prototype.setupClickListener = function (id, mode) {
            var radioButton = document.getElementById(id);
            var me = this;
            radioButton.addEventListener('click', function () {
                me.travelMode = mode;
                me.route();
            });
        };

        AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function (autocomplete, mode) {
            var me = this;
            autocomplete.bindTo('bounds', this.map);
            autocomplete.addListener('place_changed', function () {
                var place = autocomplete.getPlace();
                if (!place.place_id) {
                    window.alert("Please select an option from the dropdown list.");
                    return;
                }
                if (mode === 'ORIG') {
                    me.originPlaceId = place.place_id;
                } else {
                    me.destinationPlaceId = place.place_id;
                }
                me.route();
            });

        };

        AutocompleteDirectionsHandler.prototype.route = function () {
            if (!this.originPlaceId || !this.destinationPlaceId) {
                return;
            }
            var me = this;

            this.directionsService.route({
                origin: { 'placeId': this.originPlaceId },
                destination: { 'placeId': this.destinationPlaceId },
                travelMode: this.travelMode
            }, function (response, status) {
                if (status === 'OK') {
                    me.directionsDisplay.setDirections(response);
                } else {
                    window.alert('Directions request failed due to ' + status);
                }
            });
        };

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTPeKObsFAJ94iyjTLBdRGanV6VSj4AeE&libraries=places&callback=initMap"
        async defer></script>



</body>
</html>
