<%@ Page Language="C#" Debug="true" %>

<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">
    public void Page_Load()
    {
        string path = (Request.QueryString["path"]);
        string idDec = (Request.QueryString["idDeclaracao"]);
        string idCha = (Request.QueryString["idChamado"]);
        string tipo = (Request.QueryString["tipo"]);
        string horario = (Request.QueryString["horario"]);
        Label1.Text += "Insira a foto armazenada em: "+ path;
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        string path = (Request.QueryString["path"]);
        string idDec = (Request.QueryString["idDeclaracao"]);
        string idCha = (Request.QueryString["idChamado"]);
        string tipo = (Request.QueryString["tipo"]);
        string horario = (Request.QueryString["horario"]);
        String contrabarra = "\\";
		//String strConexao = "Password=etesp; Persist Security Info=True; User ID=sa; Initial Catalog=AutoSocorro; Data Source=" + Environment.MachineName;
        String strConexao = @"Data Source=.\sqlexpress; Initial Catalog=AutoSocorro; Password=etesp; Persist Security Info=True; User ID=sa";
		SqlConnection objConexao = new SqlConnection(strConexao);
        byte[] buffer = fupImage.FileBytes;
        String strSQL = "INSERT INTO Declaracao VALUES ("+idDec+","+idCha+",@img,'"+tipo+"','"+horario+"')";
        SqlCommand objCommand = new SqlCommand(strSQL, objConexao);
        objConexao.Open();
        objCommand.Parameters.AddWithValue("@img", buffer);
        objCommand.ExecuteNonQuery();
         Label1.Text += "Inserido";
        //try
        //{
        //    byte[] buffer = File.ReadAllBytes(caminhoNomeImagem);
        //    SqlCommand comando = new SqlCommand();
        //    comando.CommandText = "insert into imagens values (@image)";
        //    comando.Parameters.AddWithValue("@image", buffer);
        //    comando.Connection = conectar();
        //    int c = comando.ExecuteNonQuery();
        //}
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://ww.w3.org/TR/xhtml1/DTD/xhtml1-transitional.detd">

<html xmlns="http://www.w3.org/1999.xhtml">
<head id = "Head1" runat = "server">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
    <script>
        function readURL(input) {
            var arquivo_certo = $('#<%=Label1.ClientID%>').html();
            arquivo_certo = arquivo_certo.substr(arquivo_certo.lastIndexOf('\\')+1, arquivo_certo.length)
            
            
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                //console.log(e.target.result);
                if (input.files[0].name == arquivo_certo) {
                    $('#blah')
                        .attr('src', e.target.result)
                        .width(200)
                        .height(200);
                    $('#<%=TextBox1.ClientID%>').val(e.target.result);
                    var srccerto = $('#<%=TextBox1.ClientID%>').val().substr( $('#<%=TextBox1.ClientID%>').val().lastIndexOf(',')+1,  $('#<%=TextBox1.ClientID%>').val().length)
                     $('#<%=TextBox1.ClientID%>').val(srccerto);
					 
                }
                else {
                    alert("arquivo errado");
                }
               
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    </script>
    
    
</head>
<body>
 <form id = "form1" runat = "server">
 <div>
     <asp:Label ID="Label1" runat = "server"></asp:Label><br /><br />
     
	<asp:FileUpload ID="fupImage" onchange="readURL(this);" runat="server"></asp:FileUpload>
    <img id="blah" src="#" alt="foto da assinatura" />
    <br/></br/>
     <asp:Button runat="server" Text="Enviar" OnClick="Unnamed_Click"></asp:Button>
     <asp:TextBox ID="TextBox1" type="hidden" runat="server"></asp:TextBox>
 </div>
 </form>
</body>
</html>