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
        public static String Nome;
        public static String Email;
        public static String Telefone;
        public static String CPF;

        public void setNome(String val)
        {
            Nome = val;
        }
        public String getNome()
        {
            return Nome;
        }

        public void setEmail(String val)
        {
            Email = val;
        }
        public String getEmail()
        {
            return Email;
        }

        public void setTelefone(String val)
        {
            Telefone = val;
        }
        public String getTelefone()
        {
            return Telefone;
        }

        public void setCpf(String val)
        {
            CPF = val;
        }
        public String getCpf()
        {
            return CPF;
        }

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

        public bool inserirCli(String nome, String email, String tel, String cpf)
        {
            ClienteDAL cliDAL = new ClienteDAL();

            Nome = nome;
            Email = email;
            Telefone = tel;
            CPF = cpf;

            return cliDAL.inserirCli(Nome, Email, Telefone, CPF);
        }

        public bool alterarCli(String nome, String email, String tel, String cpf, String cod)
        {
            ClienteDAL cliDAL = new ClienteDAL();

            Nome = nome;
            Email = email;
            Telefone = tel;
            CPF = cpf;


            return cliDAL.alterarCli(Nome, Email, Telefone, CPF, cod);
        }

        public bool deletarCli(String cod)
        {
            ClienteDAL cliDAL = new ClienteDAL();
            return cliDAL.deletarCli(cod);
        }
    }
}
