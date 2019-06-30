<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/LayoutInicial.Master" CodeBehind="Home.aspx.cs" Inherits="prjAuto_Service.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="oimota" runat="server">
    <div id="index-banner" class="parallax-container">
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
    </div>
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

        <%--
        <h1 class="title">No momento que você mais precisa</h1>

        <p class="tx">Sempre estamos disponíveis e preparados para auxiliar em qualquer momento, pois entendemos que um imprevisto pode ocorrer a qualquer hora. Nosso sistema está disponível 24 horas por dia, 7 dias por semanas e pronto para te ajudar sempre que preciso.</p>
        <br />
        <br />
        <div class="subslider" data-speed="25" style="background-image: url(img/Empresa2.jpg);">
            
        </div>
        <br />
        <br />
        <h1 class="ht">Pensando em você, Oferecemos esses Serviços via Web:</h1>
        <a href="AgendarCorrida.aspx">
            <div class="artsy">
                <img src="img/teste2.jpg" alt="Opcao1" class="foto">
                <div class="lp">
                    <p class="lpt">Agendamento Personalizado</p>
                </div>
            </div>
        </a>

        <a href="AgendarEmer.aspx">
            <div class="artsy">
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
        <br />
        <br />


        <br />
        <div class="subslider" data-speed="15" style="background-image: url(img/Empresa.png);">
            
        </div>
        <br />
        <br />
        <h1 class="ht">Nossa Missão</h1>



        <h1 class="ht1">O que Visamos</h1>
        <br />
        <br />
        <div style="width: 80%">
            <p class="tx">
                Buscamos inovar de várias formas possíveis dentro do mercado de trabalho e sabemos que para alcançar isso temos que dar o nosso melhor. Dessa forma, sempre buscamos melhorar e aprender com as nossas experiências. O comprometimendo de cada funcionário da nossa empresa sempre reflete nos nosso principais valores que buscamos mostrar para nossos clientes que seriam: Trabalho em equipe, melhora contínua e principalmente a inovação no mercado de trabalho.
            </p>
            <br>
            <br>
            <h1 class="title">Nossos Profissionais</h1>
            <br />
            <br />
            <p class="tx">
                A Auto Socorro reúne profissionais altamente capacitados e que buscam realizar seus serviços da maneira mais eficaz possível. Sempre comprometidos com o trabalho, cada um faz a sua parte, assim proporcionando um bom trabalho em equipe e uma maior eficácia para os nosso serviços. Trabalhamos com qualidade e não quantidade, por isso nossa empresa não possui tantos funcionários assim, mas sempre estamos de portas abertas para pessoas qualificadas.
            </p>
            <br>
            <br>
        </div>--%>
        <script>
            (function ($) {
                $(function () {

                    $('.sidenav').sidenav();
                    $('.parallax').parallax();

                }); // end of document ready
            })(jQuery); // end of jQuery name space

        </script>
    </main>
</asp:Content>
