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
        public static int IdCliente;
        public static String NovoCadastro = "";

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

        public DataTable pesquisar_Todos_Clientes()
        {
            PedidosDAL peDAL = new PedidosDAL();
            TodosClientes = peDAL.pesquisar_Todos_Clientes();
            return TodosClientes;
        }

        public DataTable pesquisar_Clientes_Nome(String nome)
        {
            PedidosDAL peDAL = new PedidosDAL();
            TodosClientes = peDAL.pesquisar_Clientes_Nome(nome);
            return NomeClientes;
        }

        public int pesquisar_Id_Clientes_Nome(String nome)
        {
            PedidosDAL peDAL = new PedidosDAL();
            IdCliente = peDAL.pesquisar_Id_Clientes_Nome(nome);
            return IdCliente;
        }
    }
}
