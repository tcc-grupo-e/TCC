<%@ Page Title="" Language="C#" MasterPageFile="~/View/LayoutInicial.Master" AutoEventWireup="true" CodeBehind="Servicos.aspx.cs" Inherits="prjAuto_Service.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="oimota" runat="server">
    <main>
        <div class="container">
            <div class="section">

                <div class="row">


                    <div>
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">build</i></h2>
                            <h4 class="center">Sobre os nossos serviços</h4>

                            <p class="flow-text">
                                Disponibilizamos serviços de guincho com alta qualidade e eficácia para toda SP. Possuímos diversidade no transporte, central de monitoramento e um atendimento especializado sempre praparado para nossos clientes. Estamos sempre abertos para sugestões de nossos clientes.
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
                        <h3 class="header col s12 light">Serviço rápido prático e de confiança</h3>
                    </div>

                </div>
            </div>
            <div class="parallax">
                <img src="img/Servico.png" alt="Unsplashed background img 1" />
            </div>
        </div>
        <div class="container">
            <div class="section">

                <div class="row">


                    <div>
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">visibility</i></h2>
                            <h4 class="center">Monitoramento</h4>

                            <p class="flow-text">
                                Contamos com um sistema avançado de monitoramento, que nos proporciona uma alta eficácia na hora de localizarmos os nossos clientes. Este sistema garante a segurança e agilidade na hora de tratarmos com nossos clientes e seus serviços. Criado pela nossa própria equipe, podemos sempre garantir a sua manutenção regular para o seu bom funcionamento.
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
                        <h3 class="header col s12 light">Serviço rápido prático e de confiança</h3>
                    </div>

                </div>
            </div>
            <div class="parallax">
                <img src="img/Servico2.jpg" alt="Unsplashed background img 1" />
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col s12 m6">
                <div class="card blue darken-2">
                    <div class="card-image">
                        <img src="img/teste2.jpg" />
                        <span class="card-title">Guincho Agora</span>
                    </div>
                    <div class="card-content">
                        <p class="white-text">
                            Precisa de um reboque ou transporte agora mesmo? Esta é a opção. 
                            <a href="AgendarEmer.aspx" class="btn-floating btn-large halfway-fab waves-effect waves-teal white">
                               <i class="material-icons blue-text">add</i>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card blue darken-2">
                    <div class="card-image">
                        <img src="img/pngteste.png" />
                        <span class="card-title">Agendar</span>
                    </div>
                    <div class="card-content">
                        <p class="white-text">
                            Precisando de um serviço para daqui a alguns dias? clique em adicionar. 
                            <a href="AgendarCorrida.aspx" class="btn-floating btn-large halfway-fab waves-effect waves-teal white">
                                <i class="material-icons blue-text">add</i>
                            </a>
                        </p>
                    </div>
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

                }); // end of document ready
            })(jQuery); // end of jQuery name space

        </script>
    </main>
    <%--    <div style="width:80%">
                    <h1 class="ht">Sobre os Nossos Serviços:</h1>
                   
                    <br />
                    <br />
                    <br />
                    <br />
                      <img src ="img/Servico.png" style="width:100%">
                    <br />
                    <br />
                    <br />
                    <br />
                  
                    <p class="tx">
                       Disponibilizamos serviços de guincho com alta qualidade e eficácia para toda SP. Possuímos diversidade no transporte, central de monitoramento e um atendimento especializado sempre praparado para nossos clientes. Estamos sempre abertos para sugestões de nossos clientes.</p>
                    <br>
                    <br>
                    <h1 class="title">Central de monitoramento</h1>
                    <br />
                    <br />
                    <p class="tx">Contamos com um sistema avançado de monitoramento, que nos proporciona uma alta eficácia na hora de localizarmos os nossos clientes. Este sistema garante a segurança e agilidade na hora de tratarmos com nossos clientes e seus serviços. Criado pela nossa própria equipe, podemos sempre garantir a sua manutenção regular para o seu bom funcionamento.</p>
                    <br>
                    <br>

                   </div> 
               
                <br />
                <br />
                <div class="subslider" data-speed="25" style="background-image: url(img/Servico2.jpg);">
                    kairi kairi mekuri kekuru history story
                </div>
                <br />
                <br />
   

        <h1 class="ht">Ofereçemos os seguintes serviços via Web: </h1>



     <a href="AgendarCorrida.aspx">
            <div class="artsy">
                <img src="img/teste2.jpg" alt="Opcao1" class="foto">
                <div class="lp">
                    <p class="lpt">Agendamento Personalizado</p>
                </div>
            </div>
        </a>

         <a href="AgendarEmer.aspx">
        <div class="artsy" >
            <img src="img/pngteste.png" alt="Opcao2" class="foto">
            <div class="lp">
                <p class="lpt">Agende Agora Uma Corrida</p>
            </div>
        </div>
    </a>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />     
        <br />
        <br />

        

        <br />
        <br />
     </main>--%>
</asp:Content>
