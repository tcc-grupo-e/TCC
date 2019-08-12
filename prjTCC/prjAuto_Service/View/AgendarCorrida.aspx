<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendarCorrida.aspx.cs" MasterPageFile="~/View/LayoutNoForm.Master" Inherits="prjAuto_Service.AgendarCorrida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="oimota" runat="server">
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
    <main>
        <h4 class="text-darken-3 blue-text center-align">Insira os dados do seu pedido</h4>
        <form id="formF" runat="server">
            <div class="slider fullscreen" style="background-color: #fff">
                <ul class="slides" style="background-color: #fff">
                    <li>
                        <img />

                        <div class="caption center-align">
                            <h4 class="text-darken-3 blue-text center-align">Insira seus dados</h4>
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix blue-text text-darken-3">account_circle</i>
                                    <label>Nome <span>*</span>:</label>
                                    <asp:TextBox ID="TxtNome" class="validate" runat="server" required></asp:TextBox>

                                </div>
                                <div class="input-field col s6">
                                    <label>CPF<span>*</span>:</label>
                                    <asp:TextBox ID="TxtCpf" class="validate" runat="server" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" required></asp:TextBox>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix blue-text text-darken-3">email</i>
                                    <label>Email <span>*</span>:</label>
                                    <asp:TextBox ID="TxtEmail" class="validate" runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required></asp:TextBox>

                                </div>
                                <div class="input-field col s6">
                                    <label>Telefone celular<span>*</span>:</label>
                                    <asp:TextBox ID="TxtTel" class="validate" runat="server" required></asp:TextBox>
                                </div>
                                
                            </div>
                            <div class="buttons-wrapper">
                                <div class="row right">
                                    <a class="btn-large waves-effect waves-light blue">Próximo</a>
                                </div>
                            </div>

                        </div>

                    </li>
                    <li>
                        <img />
                        <div class="caption center-align" style="top:0;left:0;width:100%">
                            <h4 class="text-darken-3 blue-text center-align">Trace sua rota</h4>
                            <div class="row">
                                <div id="mode-selector" class="controls" style="display: none">
                                    <input type="radio" name="type" id="changemode-walking" checked="checked">
                                    <label for="changemode-walking">Walking</label>

                                    <input type="radio" name="type" id="changemode-transit">
                                    <label for="changemode-transit">Transit</label>

                                    <input type="radio" name="type" id="changemode-driving">
                                    <label for="changemode-driving">Driving</label>
                                </div>

                                <div id="map" style="height: 55vh"></div>
                            </div>
                            <%--<div class="form-group">

                                <p class="campo">
                                    <label>Modelo do veículo <span>*</span>:</label>
                                    <asp:TextBox ID="txtVeiculo" class="form-control" runat="server" required OnLoad="txtVeiculo_Load"></asp:TextBox>

                                </p>
                                <p class="campo">
                                    <label for="u_nome">Ponto de Referência <span>*</span>:</label>
                                    <asp:TextBox ID="txtPonto" class="form-control" runat="server" required></asp:TextBox>

                                </p>
                                <p class="campo">
                                    <label for="u_nome">Placa <span>*</span>:</label>
                                    <asp:TextBox ID="txtPlaca" class="form-control" runat="server" placeholder="AAA-0000" pattern="[A-Z]{3}-\d{4}" required></asp:TextBox>

                                </p>
                                <p class="campo">
                                    <label>Cor <span>*</span>:</label>
                                    <asp:TextBox ID="txtCor" class="form-control" runat="server" required></asp:TextBox>

                                </p>
                                <p class="campo">
                                    <label for="u_nome"></label>
                                    <asp:TextBox ID="txtOrigem" class="controls1" placeholder="Origem" runat="server" required></asp:TextBox>

                                </p>

                                <p class="campo">
                                    <label for="s_nome"></label>
                                    <asp:TextBox ID="txtDestino" class="controls1" placeholder="Destino" runat="server" required></asp:TextBox>

                                </p>
                            </div>--%>
                        </div>
                    </li>

                    <li>
                        <img />
                        <div class="caption center-align">
                            <p class="campo">
                                <label for="sr_nome">Data do serviço <span>*</span>:</label>
                                <asp:TextBox ID="txtData" placeholder="dd/mm/aaaa" class="form-control" runat="server" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" required></asp:TextBox>
                            </p>
                            <p class="campo">
                                <label for="re_nome">Hora do serviço<span>*</span>:</label>
                                <asp:TextBox class="form-control" placeholder="hh:mm" ID="txtHora" runat="server" required></asp:TextBox>
                            </p>


                            <br />
                            <br />
                            <p class="campo"><b>Declaração de confidencialidade de dados</b></p>
                            <p class="campo">Confirmar a aceitação da nossa declaração de confidencialidade de dados</p>
                            <p class="campo">
                                A exibição é efetuada em uma nova janela. Caso seja suprimida a exibição de campos adicionais em um bloqueador de popups, este deve ser primeiro desativado.
                            </p>
                            <p class="campo">
                                <a href="img/TERMOS_TCM.pdf" class="ltd" target="_blank"><b>Declaração de confidencialidade de dados</b></a>
                            </p>
                            <p>Asseguramos que os dados que nos foram transmitidos serão tratados confidencialmente e só serão utilizados para fins apresentados na declaração de confidencialidade de dados.</p>
                            <p class="campo1">
                                <input type="checkbox" name="concordo" class="chec" required>Sim, li e aceito a declaração de confidencialidade de dados.
                            </p>

                            <br />
                            <p class="campo">
                                <asp:Button ID="btnAgendar" class="btn btn-primary" runat="server" Text="Enviar" CssClass="btn btn-primary" OnClick="btnAgendar_Click" />
                            </p>
                        </div>


                    </li>
                </ul>

            </div>
        </form>











    </main>




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
</asp:Content>
