using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class PedidosBLL
    {
        public static DataTable TodosClientes;
        public static DataTable NomeClientes;
        public static DataTable TodosMotoristas;
        public static DataTable NomeMotoristas;
        public static DataTable TodosCaminhoes;
        public static DataTable PlacaCaminhoes;
        public static int IdCliente = 0;
        public static int IdMotorista = 0;
        public static int IdCaminhao = 0;
        public static String NovoCadastro = "";
        public static String ClienteFJ = "";

        public void setClienteFJ(String val)
        {
            ClienteFJ = val;
        }
        public String getClienteFJ()
        {
            return ClienteFJ;
        }

        public void setTodosClientes(DataTable val)
        {
            TodosClientes = val;
        }
        public DataTable getTodosClientes()
        {
            return TodosClientes;
        }

        public void setNomeClientes(DataTable val)
        {
            NomeClientes = val;
        }
        public DataTable getNomeClientes()
        {
            return NomeClientes;
        }

        public void setNovoCadastro(String val)
        {
            NovoCadastro = val;
        }
        public String getNovoCadastro()
        {
            return NovoCadastro;
        }

        public void setIdCliente(int val)
        {
            IdCliente = val;
        }
        public int getIdCliente()
        {
            return IdCliente;
        }

        public void setTodosMotoristas(DataTable val)
        {
            TodosMotoristas = val;
        }
        public DataTable getTodosMotoristas()
        {
            return TodosMotoristas;
        }

        public void setNomeMotoristas(DataTable val)
        {
            NomeMotoristas = val;
        }
        public DataTable getNomeMotoristas()
        {
            return NomeMotoristas;
        }

        public void setIdMotorista(int val)
        {
            IdMotorista = val;
        }
        public int getIdMotorista()
        {
            return IdMotorista;
        }

        public void setTodosCaminhoes(DataTable val)
        {
            TodosCaminhoes = val;
        }
        public DataTable getTodosCaminhoes()
        {
            return TodosCaminhoes;
        }

        public void setPlacaCaminhoes(DataTable val)
        {
            PlacaCaminhoes = val;
        }
        public DataTable getPlacaCaminhoes()
        {
            return PlacaCaminhoes;
        }

        public void setIdCaminhao(int val)
        {
            IdCaminhao = val;
        }
        public int getIdCaminhao()
        {
            return IdCaminhao;
        }

        public DataTable pesquisar_Todos_Clientes()
        {
            PedidosDAL peDAL = new PedidosDAL();
            TodosClientes = peDAL.pesquisar_Todos_Clientes();
            return TodosClientes;
        }

        public DataTable pesquisar_Clientes_Nome(String nome)
        {
            PedidosDAL peDAL = new PedidosDAL();
            NomeClientes = peDAL.pesquisar_Clientes_Nome(nome);
            return NomeClientes;
        }

        public int pesquisar_Id_Clientes_Nome(String nome)
        {
            PedidosDAL peDAL = new PedidosDAL();
            IdCliente = peDAL.pesquisar_Id_Clientes_Nome(nome);
            return IdCliente;
        }

        public DataTable pesquisar_Todos_Motoristas()
        {
            PedidosDAL peDAL = new PedidosDAL();
            TodosMotoristas = peDAL.pesquisar_Todos_Motoristas();
            return TodosMotoristas;
        }

        public DataTable pesquisar_Motoristas_Nome(String nome)
        {
            PedidosDAL peDAL = new PedidosDAL();
            NomeMotoristas = peDAL.pesquisar_Motoristas_Nome(nome);
            return NomeMotoristas;
        }

        public int pesquisar_Id_Motoristas_Nome(String nome)
        {
            PedidosDAL peDAL = new PedidosDAL();
            IdMotorista = peDAL.pesquisar_Id_Motoristas_Nome(nome);
            return IdMotorista;
        }

        public DataTable pesquisar_Todos_Caminhoes()
        {
            PedidosDAL peDAL = new PedidosDAL();
            TodosCaminhoes = peDAL.pesquisar_Todos_Caminhoes();
            return TodosCaminhoes;
        }

        public DataTable pesquisar_Caminhoes_Placa(String placa)
        {
            PedidosDAL peDAL = new PedidosDAL();
            PlacaCaminhoes = peDAL.pesquisar_Caminhoes_Placa(placa);
            return PlacaCaminhoes;
        }

        public int pesquisar_Id_Caminhoes_Placa(String placa)
        {
            PedidosDAL peDAL = new PedidosDAL();
            IdCaminhao = peDAL.pesquisar_Id_Caminhoes_Placa(placa);
            return IdCaminhao;
        }
    }
}
