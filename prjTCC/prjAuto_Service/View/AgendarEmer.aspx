﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendarEmer.aspx.cs" MasterPageFile="~/View/LayoutNoForm.Master" Inherits="prjAuto_Service.AgendarEmer" %>

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTPeKObsFAJ94iyjTLBdRGanV6VSj4AeE&libraries=places&callback=initMap"
        async defer></script>
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
            initAutocomplete();


            new AutocompleteDirectionsHandler(map);
        }
        var autocompleteDestination, autocomplete;


        function initAutocomplete() {
            // Create the autocomplete object, restricting the search to geographical
            // location types.
            autocomplete = new google.maps.places.Autocomplete(
                /** @type {!HTMLInputElement} */
                (document.getElementById('txtEnd')), {
                    types: ['geocode']
                });


        }


        function geolocate() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var geolocation = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                    var circle = new google.maps.Circle({
                        center: geolocation,
                        radius: position.coords.accuracy
                    });
                    autocomplete.setBounds(circle.getBounds());
                });
            }
        }


        /**
         * @constructor
        */
        function AutocompleteDirectionsHandler(map) {
            this.map = map;
            this.originPlaceId = null;
            this.destinationPlaceId = null;
            this.travelMode = 'DRIVING';
            var originInput = document.getElementById('oimota_txtOrig');
            var destinationInput = document.getElementById('oimota_txtDestino');
            var modeSelector = document.getElementById('oimota_mode-selector');
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
        var items = [];
        var references = [];
        var waypoints = [];
        function add() {
            var end = $('#txtEnd').val();

            items.push(end);


            var ref = $('#txtReference').val()

            references.push(ref);


            $('#txtEnd').val("");
            $('#txtReference').val("");


            var address = items[items.length - 1];
            if (address !== "") {
                waypoints.push({
                    location: address,
                    stopover: true
                });
            }

            $('#oimota_Hidden1').val(items.join('/'));
            // alert($('#oimota_Hidden1').val());
            $('#oimota_Hidden2').val(references.join('/'));
            //alert($('#oimota_Hidden2').val());
        }





        AutocompleteDirectionsHandler.prototype.route = function () {
            if (!this.originPlaceId || !this.destinationPlaceId) {
                return;
            }
            var me = this;

            this.directionsService.route({
                origin: { 'placeId': this.originPlaceId },
                destination: { 'placeId': this.destinationPlaceId },
                waypoints: waypoints,
                travelMode: this.travelMode
            }, function (response, status) {
                if (status === 'OK') {
                    me.directionsDisplay.setDirections(response);

                    var Skm = 0;
                    for (var x = 0; x < response.routes[0].legs.length; x++) {
                        Skm = Skm + response.routes[0].legs[x].distance.value;
                        //alert(Skm);
                    }
                    var km = (Skm / 1000) + " KM";
                    //alert(km);

                    $('#oimota_txtKm').val(km);
                    var Stime = 0;
                    for (var y = 0; y < response.routes[0].legs.length; y++) {
                        Stime = Stime + response.routes[0].legs[y].duration.value;
                        // alert(Stime);
                    }
                    var hrs = parseInt((Stime / 3600), 10);
                    var mim = parseInt(((Stime - (3600 * hrs)) / 60));
                    var time = hrs + " h " + mim + " mim";
                    // alert(time);
                    $('#oimota_txtTime').val(time);
                    var preco = (100 + (1.5 * parseInt(km))).toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
                    //alert(preco);
                    $('#oimota_txtPreco').val(preco);
                } else {
                    window.alert('Directions request failed due to ' + status);
                }
            });

        };

    </script>
    <main>
        <h4 class="text-darken-3 blue-text center-align">Insira os dados do seu pedido</h4>
        <form id="formF" runat="server">
            <div class="slider fullscreen" style="background-color: #fff">
                <ul class="slides" style="background-color: #fff">
                    <%--<li>
                        <img />

                        <div class="caption center-align">
                            <h4 class="text-darken-3 blue-text center-align">Insira seus dados</h4>
                            <div class="row">
                                <div class="input-field col s6">
                                   
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
                                    
                                </div>

                            </div>
                            <div class="buttons-wrapper">
                                <div class="row right">
                                    <a class="btn waves-effect waves-light blue" onclick="next()">Próximo</a>
                                </div>
                            </div>

                        </div>

                    </li>--%>
                    <%--<li>
                        <img />

                        <div class="caption center-align">
                            <h4 class="text-darken-3 blue-text center-align">Insira os dados do veículo</h4>
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix blue-text text-darken-3">directions_car</i>
                                    <label>Modelo do veículo <span>*</span>:</label>
                                    <asp:TextBox ID="txtVeiculo" class="validate" runat="server" required></asp:TextBox>

                                </div>
                                <div class="input-field col s6">
                                    <label>Marca<span>*</span>:</label>
                                    <asp:TextBox ID="txtMarca" class="validate" runat="server" required></asp:TextBox>
                                </div>

                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix blue-text text-darken-3">color_lens</i>
                                    <label>Cor<span>*</span>:</label>
                                    <asp:TextBox ID="txtCor" class="validate" runat="server" required></asp:TextBox>


                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="txtAno" class="validate" type="number" min="1900" max="2021" runat="server" required></asp:TextBox>
                                    <label>Ano <span>*</span>:</label>
                                    <span class="helper-text" data-error="Selecione um ano entre o intervalo 1900 - 2021" data-success="">De 1900 a 2021</span>
                                </div>

                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text text-darken-3">fiber_pin</i>
                                    <label>Placa<span>*</span>:</label>
                                    <asp:TextBox ID="txtPlaca" class="validate" runat="server" pattern="[A-Z]{3}-\d{4}" required></asp:TextBox>

                                </div>


                            </div>
                            <div class="buttons-wrapper">
                                <div class="row right">
                                    <a class="btn waves-effect waves-light blue" onclick="next()">Próximo</a>
                                </div>
                                <div class="row left">
                                    <a class="btn waves-effect waves-light blue" onclick="prev()">Anterior</a>
                                </div>
                            </div>

                        </div>
                    </li>--%>
                    <li>
                        <img />
                        <div class="caption center-align" style="top: 1vh; left: 0; width: 100%">

                            <div class="row">
                                <div class="row">
                                    <div class="col s4">

                                        <div class="row">
                                            <div class="input-field col s12">
                                                <i class="material-icons prefix blue-text text-darken-3">account_circle</i>
                                                <label>Nome <span>*</span>:</label>
                                                <asp:TextBox ID="TxtNome" class="validate" runat="server" required></asp:TextBox>
                                            </div>
                                            <div class="input-field col s12">
                                                <i class="material-icons prefix blue-text text-darken-3">phone</i>
                                                <label>Telefone para contato<span>*</span>:</label>
                                                <asp:TextBox ID="TxtTel" class="validate" runat="server" required></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <i class="material-icons prefix blue-text text-darken-3">directions_car</i>
                                                <label>Placa<span>*</span>:</label>
                                                <asp:TextBox ID="txtPlaca" class="validate" runat="server" pattern="[A-Z]{3}-\d{4}" required></asp:TextBox>

                                            </div>
                                            <div class="input-field col s6">

                                                <label>Modelo do veículo <span>*</span>:</label>
                                                <asp:TextBox ID="txtVeiculo" class="validate" runat="server" required></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <i class="material-icons prefix blue-text text-darken-3">place</i>
                                                <label class="active" for="oimota_txtOrig">Origem</label>
                                                <asp:TextBox ID="txtOrig" placeholder="Escolha uma origem" onFocus="geolocate()" class="validate" runat="server" required></asp:TextBox>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <i class="material-icons prefix blue-text text-darken-3">place</i>
                                                <input id="txtEnd" placeholder="Escolha um local" type="text" class="validate" />
                                                <label for="txtEnd">Endereço da parada</label>
                                                <span class="helper-text">As paradas aparecem quando a rota for traçada</span>
                                            </div>
                                            <div class="input-field col s6">
                                                <input id="txtReference" type="text" class="validate" />
                                                <label for="txtReference">Referência</label>
                                            </div>

                                            <a class="btn waves-effect waves-light blue" onclick="add()">Adicionar paradas +</a>

                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <i class="material-icons prefix blue-text text-darken-3">place</i>
                                                <label class="active" for="oimota_txtDestino">Destino</label>
                                                <asp:TextBox ID="txtDestino" placeholder="Escolha o destino final" class="validate" runat="server" required></asp:TextBox>

                                            </div>
                                        </div>



                                    </div>


                                    <div class="col s8">
                                        <div id="mode-selector" class="controls" style="display: none">
                                            <input type="radio" name="type" id="changemode-walking" checked="checked">
                                            <label for="changemode-walking">Walking</label>

                                            <input type="radio" name="type" id="changemode-transit">
                                            <label for="changemode-transit">Transit</label>

                                            <input type="radio" name="type" id="changemode-driving">
                                            <label for="changemode-driving">Driving</label>
                                        </div>

                                        <div id="map" style="height: 80vh">
                                        </div>
                                        <div class="buttons-wrapper">
                                            <div class="row right">
                                                <a class="btn waves-effect waves-light blue" onclick="next()">Próximo</a>
                                            </div>
                                        </div>
                                    </div>




                                </div>



                            </div>


                        </div>
                    </li>


                    <li>
                        <img />
                        <div class="caption center-align" style="top: 1vh">

                            <p class="flow-text black-text"><b>Declaração de confidencialidade de dados</b></p>
                            <p class="flow-text black-text">Confirmar a aceitação da nossa declaração de confidencialidade de dados</p>
                            <p class="flow-text black-text">
                                A exibição é efetuada em uma nova janela. Caso seja suprimida a exibição de campos adicionais em um bloqueador de popups, este deve ser primeiro desativado.
                            </p>
                            <p class="flow-text">
                                <a href="img/TERMOS_TCM.pdf" target="_blank"><b>Clique aqui</b></a>
                            </p>
                            <p>Asseguramos que os dados que nos foram transmitidos serão tratados confidencialmente e só serão utilizados para fins apresentados na declaração de confidencialidade de dados.</p>
                            <p class="flow-text black-text">
                                <label>
                                    <input type="checkbox" class="filled-in" required />
                                    <span class="black-text">Li e aceito a declaração de confidencialidade de dados.</span>
                                </label>

                            </p>


                            <p>
                                <asp:Button ID="btnAgendar" class="btn waves-effect waves-light blue" runat="server" Text="Enviar" CssClass="btn waves-effect waves-light blue" OnClick="btnAgendar_Click" />
                            </p>
                            <div class="buttons-wrapper">

                                <div class="row left">
                                    <a class="btn waves-effect waves-light blue" onclick="prev()">Anterior</a>
                                </div>
                            </div>

                        </div>



                    </li>
                </ul>

            </div>
            <asp:TextBox ID="Hidden1" runat="server" type="hidden"></asp:TextBox>
            <asp:TextBox ID="Hidden2" runat="server" type="hidden"></asp:TextBox>
            <asp:TextBox ID="txtKm" runat="server" type="hidden"></asp:TextBox>
            <asp:TextBox ID="txtTime" runat="server" type="hidden"></asp:TextBox>
            <asp:TextBox ID="txtPreco" runat="server" type="hidden"></asp:TextBox>

        </form>











    </main>




    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


</asp:Content>
