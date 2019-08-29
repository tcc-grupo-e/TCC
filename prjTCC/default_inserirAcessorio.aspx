<%@ Page Language="C#" Debug="true" %>
<%@ import Namespace="System.IO"%>
<%@ import Namespace="System.Data"%>
<%@ import Namespace="System.Data.SqlClient"%>

<script runat="server">

	public void Page_Load()
	{
		string bancoD = (Request.QueryString["bancoD"]);
		string bancoT = (Request.QueryString["bancoT"]);
		string chave = (Request.QueryString["chave"]);
		string extintor = (Request.QueryString["extintor"]);
		string console = (Request.QueryString["console"]);
		string tapete = (Request.QueryString["tapete"]);
		string rodaEspecial = (Request.QueryString["rodaE"]);
		string objPl = (Request.QueryString["objPl"]);
		string farolM = (Request.QueryString["farolM"]);
		string farol = (Request.QueryString["farol"]);
		string lanterna = (Request.QueryString["lanterna"]);
		string radioDVD = (Request.QueryString["radioDVD"]);
		string objPm = (Request.QueryString["objPm"]);
		string estepe = (Request.QueryString["estepe"]);
		string macaco = (Request.QueryString["macaco"]);
		string triangulo = (Request.QueryString["triangulo"]);
		string chaveR = (Request.QueryString["chaveR"]);
		string bagageiro = (Request.QueryString["bagageiro"]);
		string identificador = (Request.QueryString["id"]); 
		string assinaturaC =(Request.QueryString["assinaturaC"]); 
		string assinaturaM =(Request.QueryString["assinaturaM"]); 
		string hora =(Request.QueryString["hora"]); 
			String[] nome = new String[21];
			nome[0] = "'Banco Dianteiro','" + bancoD+"'";
			nome[1] = "'Banco Traseiro','" + bancoT+"'";
			nome[2] = "'Chave do Carro','" + chave+"'";
			nome[3] = "'Extintor','" + extintor+"'";
			nome[4] = "'Console','" + console+"'";
			nome[5] = "'Tapete','" + tapete+"'";
			nome[6] = "'Roda Especial','" + rodaEspecial+"'";
			nome[7] = "'Objeto porta-luvas','" + objPl+"'";
			nome[8] = "'Farol de milha','" + farolM+"'";
			nome[9] = "'Farol','" + farol+"'";
			nome[10] = "'lanterna','" + lanterna+"'";
			nome[11] = "'radioDVD','" + radioDVD+"'";
			nome[12] = "'Objetos porta-malas','" + objPm+"'";
			nome[13] = "'Estepe','" + estepe+"'";
			nome[14] = "'Macaco','" + macaco+"'";
			nome[15] = "'Triangulo','" + triangulo+"'";
			nome[16] = "'Chave de roda','" + chaveR+"'";
			nome[17] = "'Bagageiro','" + bagageiro+"'";
			nome[18] = assinaturaC ;
			nome[19] = assinaturaM ;
			nome[20] = hora ;	
			
			
		String strConexao = "Password=etesp; Persist Security Info=True; User ID=sa; Initial Catalog=autosocorro; Data Source=" + Environment.MachineName;
		SqlConnection objConexao = new SqlConnection(strConexao);
		String contato;
		objConexao.Open();
		String strSQL="";
		for(int i = 0; i<21;i++){
		if(i<18){
		 strSQL = "exec usp_InserirAcessorios " +  nome[i] + " ,"+identificador;
		}else{
		//exec usp_InserirDeclaracao 1,0x000,'12:00'
		 strSQL = "exec usp_InserirDeclaracao "+identificador+","+nome[i]+",'"+ hora+"'";
		
		}
		
		SqlCommand objCommand = new SqlCommand(strSQL, objConexao);
		objCommand.ExecuteNonQuery();
		}
		
		
		
		Label1.Text = "Dados inserídos com sucesso!";
	}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://ww.w3.org/TR/xhtml1/DTD/xhtml1-transitional.detd">

<html xmlns="http://www.w3.org/1999.xhtml">
<head id = "Head1" runat = "server">
 <title></title>
</head>
<body>
 <form id = "form1" runat = "server">
 <div>
	<asp:Label ID = "Label1" runat = "server"></asp:Label>
 </div>
 </form>
</body>
</html>