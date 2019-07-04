<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/LayoutInicial.Master" CodeBehind="SobreNos.aspx.cs" Inherits="prjAuto_Service.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="oimota" runat="server">

    <main>
        <div class="parallax-container">
            <div class="section no-pad-bot">
                <div class="container">
                    <br />
                    <br />
                    <br />
                    <h1 class="header center blue-text text-darken-2">Nossa História</h1>


                    <br />
                    <br />
                </div>
            </div>
            <div class="parallax">
                <img src="img/trabalho.png" alt="Unsplashed background img 1" />
            </div>
        </div>
        <div class="container">
            <div class="section">

                <div class="row">


                    <div class="col s12">
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">star</i></h2>
                            <h4 class="center">O Começo</h4>

                            <p class="flow-text">
                                Nossa principal ideia ao criar a empresa era fornecer aos nossos clientes,
                                serviços de guincho que, além de serem seguros e rápidos,
                                também tivessem um preço justo para todo o estado de SP.
                                Começamos com uma equipe pequena e ainda hoje trabalhamos dessa mesma
                                maneira, valorizando mais a qualidade ao inves da quantidade.
                                Ao longo do tempo,
                                nossa empresa conseguiu servir os clientes e enfim estabelecer uma a visão e boa qualidade que pensamos
                                desde o inicio.

                            </p>
                        </div>
                    </div>

                    <div class="col s12">
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">hearing</i></h2>
                            <h4 class="center">Meios de comunicação</h4>

                            <p class="flow-text">
                                Outro fator importante na criação da nossa empresa foi a internet e seus meios de comunicação.
                                Graças a isso,
                                conseguimos expandir nossos serviços de forma que qualquer pessoa com problemas na área de SP
                                fosse atendida.
                                Como as principais dificuldades de muitas pessoas com os serviços de guincho eram os meios de comunicação
                                que poderiam ser muitas vezes de má qualidade dependendo do serviço solicitado,
                                vimos que a melhor forma de estabelcer um bom e novo serviço era melhorar o máximo possível o meio de
                                comunicação que hoje em dia é um das principais ferramentas de todas as empresas,
                                principalmente a nossa.
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
                    <h1 class="header center blue-text text-darken-2">Sobre o futuro</h1>


                    <br />
                    <br />
                </div>
            </div>
            <div class="parallax">
                <img src="img/wotakoi.png" alt="kairi kairi mekuri kekuru history story" />
            </div>
        </div>
         <div class="container">
            <div class="section">

                <div class="row">


                    <div class="col s12">
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">attach_file</i></h2>
                            <h4 class="center">Planejamentos</h4>

                            <p class="flow-text">
                                A inovação foi sempre o objetivo principal da nossa empresa,
                                e assim buscamos ao longo dos anos e inúmeros serviços,
                                melhorar tanto a eficácia de nossos serviços quanto a criatividade deste.

                            </p>
                        </div>
                    </div>

                    <div class="col s12">
                        <div class="icon-block">
                            <h2 class="center blue-text text-darken-2"><i class="material-icons md-48">photo</i></h2>
                            <h4 class="center">Considerações finais</h4>

                            <p class="flow-text">
                                Esperamos que nossos serviços tenham auxiliados e superado a expectativa de muitos dos nossos clientes.
                                É sempre importante que para nós, mantermos uma boa relação com os nossos clientes, para que assim,
                                estes sempre possam contar com a gente em qualquer momento e que tenham conciência de que nosso serviço está disponível.
                            </p>
                        </div>
                    </div>




                </div>
            </div>
        </div>
        

      
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
