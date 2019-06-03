using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class ClienteBLL
    {
        public static DataTable TodClientes;
        public static DataTable NomClientes;
        public static DataTable EmaClientes;
        public static DataTable TelClientes;
        public static DataTable CpfClientes;

        public void setTodClientes(DataTable val)
        {
            TodClientes = val;
        }
        public DataTable getTodClientes()
        {
            return TodClientes;
        }

        public void setNomClientes(DataTable val)
        {
            NomClientes = val;
        }
        public DataTable getNomClientes()
        {
            return NomClientes;
        }

        public void setEmaClientes(DataTable val)
        {
            EmaClientes = val;
        }
        public DataTable getEmaClientes()
        {
            return EmaClientes;
        }

        public void setTelClientes(DataTable val)
        {
            TelClientes = val;
        }
        public DataTable getTelClientes()
        {
            return TelClientes;
        }

        public void setCpfClientes(DataTable val)
        {
            CpfClientes = val;
        }
        public DataTable getCpfClientes()
        {
            return CpfClientes;
        }

        public DataTable pesquisarCli()
        {
            ClienteDAL cliDAL = new ClienteDAL();
            TodClientes = cliDAL.pesquisarCli();
            return TodClientes;
        }

        public DataTable pesquisarCliNome(String nome)
        {
            ClienteDAL cliDAL = new ClienteDAL();
            NomClientes = cliDAL.pesquisarCliNome(nome);
            return NomClientes;
        }

        public DataTable pesquisarCliEmail(String email)
        {
            ClienteDAL cliDAL = new ClienteDAL();
            EmaClientes = cliDAL.pesquisarCliEmail(email);
            return EmaClientes;
        }

        public DataTable pesquisarCliTelefone(String tel)
        {
            ClienteDAL cliDAL = new ClienteDAL();
            TelClientes = cliDAL.pesquisarCliTelefone(tel);
            return TelClientes;
        }

        public DataTable pesquisarCliCPF(String cpf)
        {
            ClienteDAL cliDAL = new ClienteDAL();
            CpfClientes = cliDAL.pesquisarCliCPF(cpf);
            return CpfClientes;
        }
    }
}
