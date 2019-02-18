<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="prjAuto_Service.FaleConosco" %>





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


</head>

<body>
    <div id="barba-wrapper">
        <div class="barba-container">
            <div>
                <!-- <img src="img/biback.png" alt="fundo experimental" id="body"> -->
            </div>
            <div id="scroller">



                <nav class="navbar sticky-top navbar-expand-sm navbar-dark bg-primary" style="clear: both">
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


                <br />
              
                <main id="c_pricipal_quiz">
                     <h1 class="ht">Contato:</h1>
                <div class="arts1 " >
                        <img src="img/WhatsApp.png" alt="png de guincho" class="foto">
                       <div style="float:left"> <p>956715982</p></div>
                 </div>
                  
                  <div class="arts1"  >
                        <img src="img/fixo.png" alt="png de guincho" class="foto">
                      <p style="float:left">55621495</p>
                 </div>
                   <br /><br /><br />  <br /><br /><br /><br /><br />
                    <h1 class="ht">Envie-nos um email</h1>
                    <div id="imgbemvindo">

                        <form id="form2" runat="server">

                            <div>

                                <asp:Label class="lbl" ID="Label1" runat="server" Text="Email:"></asp:Label>

                                <asp:TextBox class="form-control" ID="txtEmail" runat="server"></asp:TextBox><br />
                                <%--<br /> <br />--%>
                                <asp:Label class="lbl" ID="Label2" runat="server" Text="Nome:"></asp:Label>
                                <asp:TextBox ID="txtNome" class="form-control" runat="server"></asp:TextBox><br />
                                <br />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Mensagem:"></asp:Label><br />
                                <asp:TextBox class="form-control" ID="txtArea" runat="server" Rows="5" Columns="5" TextMode="MultiLine"></asp:TextBox><br />
                                <br />
                                <asp:Button ID="btnEnviar" class="btn" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />

                            </div>

                        </form>
                    </div>


                </main>

                <br />
                <br />
                <br />
                <br />
                <br />
                <footer id="copy">
                    <br />

                    <p>Copyright © 2018 - GRUPO E</p>
                </footer>
                <div id="janelaModal" class="modalVisual">
                    <span class="fechar">x</span>
                    <img class="modalConteudo" id="imgModal">
                    <div id="txtImg"></div>
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    </div>
    </div>
</body>

</html>

