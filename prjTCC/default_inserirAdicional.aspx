<%@ Page Language="C#" Debug="true" %>
<%@ import Namespace="System.IO"%>
<%@ import Namespace="System.Data"%>
<%@ import Namespace="System.Data.SqlClient"%>

<script runat="server">

	public void Page_Load()
	{
		string id = (Request.QueryString["id"]);
		string nome = (Request.QueryString["nome"]);
		
		String strConexao = @"Data Source=.\sqlexpress; Initial Catalog=AutoSocorro; Password=etesp; Persist Security Info=True; User ID=sa";
		//String strConexao = "Password=etesp; Persist Security Info=True; User ID=sa; Initial Catalog=AutoSocorro; Data Source=" + Environment.MachineName;
		
		SqlConnection objConexao = new SqlConnection(strConexao);
		String contato;
		String strSQL = "exec usp_InserirAdicionalAbertura " +id+ ", '"+nome+"'";
		SqlCommand objCommand = new SqlCommand(strSQL, objConexao);
		objConexao.Open();
		objCommand.ExecuteNonQuery();
		Label1.Text = "Dados inser�dos com sucesso!";
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