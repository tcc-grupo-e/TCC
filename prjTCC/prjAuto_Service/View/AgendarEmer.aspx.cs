using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class AgendarEmer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataSet ds = new DataSet();
        ClasseConexao xx = new ClasseConexao();
        protected void btnAgendarEme_Click(object sender, EventArgs e)
        {

            ds = xx.executa_sql("select Top 1 id_Corrida from Corrida order by Id_Corrida DESC");
            Session["Corrida"] = ds.Tables[0].Rows[0]["Id_Corrida"].ToString();
            ds = new DataSet();
            xx = new ClasseConexao();

            ds = xx.executa_sql("select Top 1 id_Pedido from Pedido order by Id_Pedido DESC");
            Session["Pedido"] = ds.Tables[0].Rows[0]["Id_Pedido"].ToString();
            ds = new DataSet();
            xx = new ClasseConexao();

            ds = xx.executa_sql("select Top 1 Id_Cliente from Cliente order by Id_Cliente DESC");
            Session["Cliente"] = ds.Tables[0].Rows[0]["Id_Cliente"].ToString();
            ds = new DataSet();
            xx = new ClasseConexao();

            ds = xx.executa_sql("select Top 1 id_Motorista from Motorista order by Id_Motorista DESC");
            Session["Motorista"] = ds.Tables[0].Rows[0]["Id_Motorista"].ToString();
            ds = new DataSet();
            xx = new ClasseConexao();
            ds = xx.executa_sql("select Top 1 id_Caminhao from Caminhao order by Id_Caminhao DESC");
            Session["Caminhao"] = ds.Tables[0].Rows[0]["Id_Caminhao"].ToString();
            ds = new DataSet();
            xx = new ClasseConexao();

            ds = xx.executa_sql("select Top 1 id_Funcionario from Funcionario order by Id_Funcionario DESC");
            Session["Funcionario"] = ds.Tables[0].Rows[0]["Id_Funcionario"].ToString();
            ds = new DataSet();
            xx = new ClasseConexao();

            ds = xx.executa_sql("select Top 1 id_Servicos from Servicos order by Id_Servicos DESC");
            Session["Servicos"] = ds.Tables[0].Rows[0]["Id_Servicos"].ToString();
            ds = new DataSet();
            xx = new ClasseConexao();







            xx = new ClasseConexao();
            xx.executa_sql("insert into Corrida values ('00:00','00:00',0)");
            xx = new ClasseConexao();
            xx.executa_sql("insert into Motorista values ('','','','','','',0.00,'')");
            xx = new ClasseConexao();
            xx.executa_sql("insert into Caminhao values ('','','','',0)");
            xx = new ClasseConexao();
            xx.executa_sql("insert into Servicos values ('AgendaEmer',400.20," + Session["Cliente"] + ")");


            xx = new ClasseConexao();
            xx.executa_sql("insert into cliente values ('" + txtNome.Text + "','EM', '" + txtTelefone.Text + "', '','"+txtEmail.Text +"','','')");

            xx = new ClasseConexao();
            xx.executa_sql("insert into Detalhes values ('01/01/1900','00:00'," + Session["Corrida"] + ")");

            xx = new ClasseConexao();
            xx.executa_sql("Insert into Pedido values ('','',NULL,'','" + txtOrigem.Text + "','" + txtDestino.Text + ", NULL, NULL, NULL," + Session["Cliente"] + ")");
             
            //txtVeiculo.Text = "Insert into Pedido values ('" + txtVeiculo.Text + "','" + txtPonto.Text + "','" + txtOrigem.Text + "','" + txtDestino.Text + "'," + Session["Motorista"] + "," + Session["Caminhao"] + "," + 1 + "," + Session["Servicos_Pedido"] + "," + Session["Cliente"] + ")";  /*Teste do insert*/

            xx = new ClasseConexao();
            xx.executa_sql("insert into Servicos_Pedido values ('" + Session["Servicos"] + "'," + Session["Pedido"] + ")");

            Response.Redirect("Home.aspx");

        }
    }
}