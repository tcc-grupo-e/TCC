<%@ Page Language="C#" Debug="true" %>
<%@ import Namespace="System.IO"%>
<%@ import Namespace="System.Data"%>
<%@ import Namespace="System.Data.SqlClient"%>

<script runat="server">

	public void Page_Load()
	{
	string dominio = (Request.QueryString["dominio"]);
	string dominio2 = (Request.QueryString["dominio2"]);
		
		string indentificador = (Request.QueryString["identificador"]);
		
		String strConexao = "Password=etesp; Persist Security Info=True; User ID=sa; Initial Catalog=autoSocorro; Data Source=" + Environment.MachineName;
		SqlConnection objConexao = new SqlConnection(strConexao);
		
		String strSQL = "";
		String contato = ""; 
		String id = indentificador;
		
		if(id == "1"){
		
		 strSQL = "exec  usp_PesquisarIdCaminhoesChamadaPlaca '"+dominio+"'";
		
		} else if(id=="2"){
	strSQL = "exec usp_ConsultaUltimaAberturaporCPF '"+dominio+"'";
		}else if(id=="3"){
	strSQL = "exec usp_ProcurarLoginFunc '"+dominio+"', '"+dominio2+"'";
		}else if(id=="4"){
	strSQL = "select Nome from Adicionais";
		}
		
		SqlCommand objCommand = new SqlCommand(strSQL, objConexao);
		SqlDataReader dr;
		objConexao.Open();
		dr = objCommand.ExecuteReader();
		contato = "#"; 
		while (dr.Read())
		{
			contato += (dr[0].ToString()) + ";";
		
		}
		contato+="^";
		Label1.Text = contato;
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