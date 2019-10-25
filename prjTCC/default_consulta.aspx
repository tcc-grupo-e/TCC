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
	
		String strConexao = "Password=etesp; Persist Security Info=True; User ID=sa; Initial Catalog=autoSocorro; Data Source=" + Environment.MachineName + "/SQLEXPRESS";
		SqlConnection objConexao = new SqlConnection(strConexao);
		
		String strSQL = "";
		String contato = ""; 
		String id = indentificador;
		
		
		if(id == "1"){
		
		 strSQL = "exec  usp_PesquisarIdCaminhoesChamadaPlaca '"+dominio+"'";
		
		} else if(id=="2"){
	strSQL = "exec usp_ConsultaUltimaAberturaporCPF '"+dominio+"'";
		}else if(id=="3"){
	strSQL = "exec usp_ProcurarLoginMot '"+dominio+"', '"+dominio2+"'";
		}else if(id=="4"){
	strSQL = "select Nome from Adicionais";
		}else if(id=="5"){
		  strSQL = "Select a.ID_Chamado,c.Nome, a.Placa,a.Modelo,a.Cor from Cliente as c inner join Abertura as a on a.ID_Cliente = c.ID_Cliente where a.ID_Chamado not in (Select ID_Chamado FROM Funcionario_Abertura) order by a.ID_Chamado";
		}else if(id=="6"){
		  strSQL = "select endereco from Destino where ID_Chamado =" +dominio ;
		}
		
		SqlCommand objCommand = new SqlCommand(strSQL, objConexao);
		SqlDataReader dr;
		objConexao.Open();
		dr = objCommand.ExecuteReader();
		contato = "#"; 
		    while (dr.Read())
        {
            for (int i = 0; i < dr.FieldCount; i++)
            {
                if (i == dr.FieldCount - 1)
                    contato += (dr[i].ToString()) + ";";
                else
                    contato += (dr[i].ToString()) + ",";
            }
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