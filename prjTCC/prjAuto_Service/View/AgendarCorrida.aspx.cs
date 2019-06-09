using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class AgendarCorrida : System.Web.UI.Page
    {
        #region exemplo mvc
        //Model.Exemplo exe = new Model.Exemplo();
        //Controler.ControladorExemplo cexe = new Controler.ControladorExemplo();
        /* dentro do método de click*/
        //exe.setLogin(txtLogin.Text);
        //exe.setSenha(txtSenha.Text);
        //cexe.inserir(exe);
        #endregion emexemplo mvc

        Model.Agendar agendar = new Model.Agendar();
        Controller.ControladorAgendar control = new Controller.ControladorAgendar();



        protected void Page_Load(object sender, EventArgs e)
        {
            txtVeiculo.Text = "Celta";
            txtCor.Text = "Preto";
            txtData.Text = "12/12/2018";
            txtDestino.Text = "Lugar Nenhum";
            txtOrigem.Text = "Outro lugar";
            txtHora.Text = "12:00";
            txtPlaca.Text = "NHW-0012";
            txtPonto.Text = "Praça próxima";

        }
        //ClasseConexao xx = new ClasseConexao();
        //DataSet ds = new DataSet();


        protected void btnAgendar_Click(object sender, EventArgs e)
        {

            //ds = new DataSet();
            //xx = new ClasseConexao();
            //xx.executa_sql("insert into Corrida values ('00:00','00:00',0)");

            //ds = new DataSet();
            //xx = new ClasseConexao();
            //ds = xx.executa_sql("select Top 1 id_Corrida from Corrida order by Id_Corrida DESC");
            //Session["Corrida"] = ds.Tables[0].Rows[0]["Id_Corrida"].ToString();
            //ds = new DataSet();
            //xx = new ClasseConexao();

            //ds = xx.executa_sql("select Top 1 id_Pedido from Pedido order by Id_Pedido DESC");
            //Session["Pedido"] = ds.Tables[0].Rows[0]["Id_Pedido"].ToString();
            //ds = new DataSet();
            //xx = new ClasseConexao();

            //ds = xx.executa_sql("select Top 1 Id_Cliente from Cliente order by Id_Cliente DESC");
            //Session["Cliente"] = ds.Tables[0].Rows[0]["Id_Cliente"].ToString();
            //ds = new DataSet();
            //xx = new ClasseConexao();

            //ds = xx.executa_sql("select Top 1 id_Motorista from Motorista order by Id_Motorista DESC");
            //Session["Motorista"] = ds.Tables[0].Rows[0]["Id_Motorista"].ToString();
            //ds = new DataSet();
            //xx = new ClasseConexao();
            //ds = xx.executa_sql("select Top 1 id_Caminhao from Caminhao order by Id_Caminhao DESC");
            //Session["Caminhao"] = ds.Tables[0].Rows[0]["Id_Caminhao"].ToString();
            //ds = new DataSet();
            //xx = new ClasseConexao();

            //ds = xx.executa_sql("select Top 1 id_Funcionario from Funcionario order by Id_Funcionario DESC");
            //Session["Funcionario"] = ds.Tables[0].Rows[0]["Id_Funcionario"].ToString();
            //ds = new DataSet();
            //xx = new ClasseConexao();

            //ds = xx.executa_sql("select Top 1 id_Servicos from Servicos order by Id_Servicos DESC");
            //Session["Servicos"] = ds.Tables[0].Rows[0]["Id_Servicos"].ToString();


            //ds = new DataSet();
            //xx = new ClasseConexao();
            //xx.executa_sql("insert into Detalhes values ('" + txtData.Text + "','" + txtHora.Text + "'," + Session["Corrida"] + ")");



            //ds = new DataSet();
            //xx = new ClasseConexao();
            //xx.executa_sql("Insert into Pedido values ('" + txtVeiculo.Text + "','" + txtPlaca.Text + "','" + txtCor.Text + "','" + txtPonto.Text + "','" + txtOrigem.Text + "','" + txtDestino.Text + "',NULL, NULL, NULL," + Session["Cliente"] + ")");

            ////insert into Pedido values('Honda HRV', 'GHH-2523', 'Vinho', 'Casa Amarela', 'Rua Verde, 166', 'Rua Azul, 155', 1, 1, 1, 1)
            //ds = new DataSet();
            //xx = new ClasseConexao();

            //ds = xx.executa_sql("select Top 1 id_Pedido from Pedido order by Id_Pedido DESC");
            //Session["Pedido"] = ds.Tables[0].Rows[0]["Id_Pedido"].ToString();
            //ds = new DataSet();
            //xx = new ClasseConexao();

            //xx.executa_sql("insert into Servicos_Pedido values ('" + Session["Servicos"] + "'," + Session["Pedido"] + ")");

            //Response.Redirect("Home.aspx");

            agendar.setCpf("477.278.588-46");
            agendar.setEmail("mer.mer@gmauil.com");
            agendar.setNome("Alcimar Monteiro");
            agendar.setTelefone("40028922");
            
            agendar.setAno("");
            agendar.setCor("");
            agendar.setModelo("");
            agendar.setMarca("");
            agendar.setPlaca("");
            agendar.setRetirada("");


            control.inserirCliente(agendar);
            control.inserirAbertura(agendar);


        }

        protected void txtVeiculo_Load(object sender, EventArgs e)
        {
            txtVeiculo.Text = "Celta";
            txtCor.Text = "Preto";
            txtData.Text = "12/12/2018";
            txtDestino.Text = "Lugar Nenhum - Rua Mosela - Mosela, Petrópolis - RJ, Brasil";
            txtOrigem.Text = "Outro Lugar Da Mente - Rua Jaguar - Vila Jundiai, Mogi das Cruzes - SP, Brasil";
            txtHora.Text = "12:00";
            txtPlaca.Text = "NHW-0012";
            txtPonto.Text = "Praça próxima";
        }

        
    }
}