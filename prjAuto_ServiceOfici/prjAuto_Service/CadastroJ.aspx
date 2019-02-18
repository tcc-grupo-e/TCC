<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroJ.aspx.cs" Inherits="prjAuto_Service.CadastroJ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="HeadJ" runat="server">
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

                    <h1 class="ht">Insira seus dados</h1>

                    <form id="formJ" runat="server">
                         <div class="row">
                            <div class="col">
                             <p class="campo">
                                <label>Razão social :</label>
                                <asp:TextBox ID="txtNomeJ" class="form-control" runat="server" required></asp:TextBox>
                                <asp:Label ID="lblNomeJ" runat="server" Text="" CssClass="lbl" class="form-text text-muted"></asp:Label>
                            </p>
                            </div>
                            <div class="col">
                              <p class="campo">
                                <label for="u_nome">Nome de usuario :</label>
                                <asp:TextBox ID="txtNomeUsuJ" class="form-control" runat="server" required></asp:TextBox>
                                <asp:Label ID="lblNomeUsuJ" runat="server" Text="" CssClass="lbl" class="form-text text-muted"></asp:Label>
                            </p>
                            </div>
                          </div>
                        <br />
                
                          <div class="row">
                            <div class="col">
                               <p class="campo">
                                <label for="s_nome">Senha :</label>
                                <asp:TextBox ID="txtSenhaJ" class="form-control" runat="server" TYPE="password" required></asp:TextBox>
                                <asp:Label ID="lblSenhaJ" runat="server" Text="" CssClass="lbl" class="form-text text-muted"></asp:Label>
                            </p>
                            </div>
                            <div class="col">
                              <p class="campo">
                                <label for="sr_nome">Repita senha :</label>
                                <asp:TextBox ID="txtReSenhaJ" class="form-control" runat="server" TYPE="password" required></asp:TextBox>
                            </p>
                            </div>
                          </div>
                        <br />
                
                        <div class="row">
                            <div class="col">
                              <p class="campo">
                                <label for="e_nome">E-mail :</label>
                                <asp:TextBox ID="txtEmailJ" class="form-control" runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required></asp:TextBox>
                                <asp:Label ID="lblEmailJ" runat="server" Text="" CssClass="lbl" class="form-text text-muted"></asp:Label>
                            </p>
                            </div>
                            <div class="col">
                              <p class="campo">
                                <label for="re_nome">Repetir E-mail :</label>
                                <asp:TextBox class="form-control" ID="txtReEmailJ" runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required></asp:TextBox>
                            </p>
                            </div>
                          </div>
                        <br />
                
                        <div class="row">
                            <div class="col">
                              <p class="campo">
                                <label for="s_nome">Telefone :</label>
                                <asp:TextBox ID="txtTelJ" class="form-control" runat="server" pattern="[0-9]+" required></asp:TextBox>
                                <asp:Label ID="lblTelJ" runat="server" Text="" CssClass="lbl" class="form-text text-muted"></asp:Label>
                            </p>
                            </div>
                            <div class="col">
                               <p class="campo">
                                <label for="s_nome">Celular :</label>
                                <asp:TextBox ID="txtCel" class="form-control" runat="server" pattern="[0-9]+" required></asp:TextBox>
                                <asp:Label ID="lblCel" runat="server" Text="" CssClass="lbl" class="form-text text-muted"></asp:Label>
                            </p>
                            </div>
                          </div>
                        <div class="form-group">
                            
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
                        </div>
                        <br />
                        <p class="campo">
                            <asp:Button ID="btnCadastroJuridica" class="btn btn-primary" runat="server" Text="Enviar" CssClass="btn btn-primary" OnClick="btnCadastroJuridica_Click" />
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
                </footer>
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
</body>

</html>
