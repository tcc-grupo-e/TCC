<%@ Page Language="C#" Debug="true" %>
<%@ import Namespace="System.IO"%>
<%@ import Namespace="System.Data"%>
<%@ import Namespace="System.Data.SqlClient"%>

<script runat="server">

	public void Page_Load()
	{
		string hora = (Request.QueryString["hora"]);
		string id_Caminhao = (Request.QueryString["id_Caminhao"]);
		string Km_Saida = (Request.QueryString["kms"]);
		string obs = (Request.QueryString["obs"]);
		string id_chamado = (Request.QueryString["chamado"]);
		//Label1.Text = id;
		//String strConexao = "Password=etesp; Persist Security Info=True; User ID=sa; Initial Catalog=AutoSocorro; Data Source=" + Environment.MachineName;

		String strConexao = @"Data Source=.\sqlexpress; Initial Catalog=AutoSocorro; Password=etesp; Persist Security Info=True; User ID=sa";
		SqlConnection objConexao = new SqlConnection(strConexao);
		String contato;
		
		String strSQL = "UPDATE Abertura SET hora_Saida = '" + hora + "',id_Caminhao= '" + id_Caminhao + "',Observacao= '" + obs + "', Km_Saida = '" + Km_Saida + "' WHERE  id_Chamado= " + id_chamado+ "";
		SqlCommand objCommand = new SqlCommand(strSQL, objConexao);
		objConexao.Open();
		objCommand.ExecuteNonQuery();
		Label1.Text = "Dados alterados com sucesso!";
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