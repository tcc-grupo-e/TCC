using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    public class FuncionarioBLL
    {
        private static String Nome;
        private static String Email;
        private static String RG;
        private static String CEP;
        private static String Endereco;
        private static String Cidade;
        private static String Estado;
        private static String DataNasc;
        private static String Telefone;
        private static String CNH;
        private static String EstCivil;
        private static String NomeConj;
        private static String Salario;
        private static String Cargo;
        private static String TelConjuge;
        private static String Carteira;
        private static String Login;
        private static String Senha;
        private static DataTable ds;

        public void setDataTable(DataTable val)
        {
            ds = val;
        }
        public DataTable getDataTable()
        {
            return ds;
        }

        public void setCarteira(String val)
        {
            Carteira = val;
        }
        public String getCarteira()
        {
            return Carteira;
        }

        public void setLogin(String val)
        {
            Login = val;
        }
        public String getLogin()
        {
            return Login;
        }
        public void setSenha(String val)
        {
            Senha = val;
        }
        public String getSenha()
        {
            return Senha;
        }

        public void setTelConjuge(String val)
        {
            TelConjuge = val;
        }
        public String getTelConjuge()
        {
            return TelConjuge;
        }

        public void setCargo(String val)
        {
            Cargo = val;
        }
        public String getCargo()
        {
            return Cargo;
        }

        public void setSalario(String val)
        {
            Salario = val;
        }
        public String getSalario()
        {
            return Salario;
        }

        public void setNomeConj(String val)
        {
            NomeConj = val;
        }
        public String getNomeConj()
        {
            return NomeConj;
        }

        public void setEstCivil(String val)
        {
            EstCivil = val;
        }
        public String getEstCivil()
        {
            return EstCivil;
        }

        public void setCNH(String val)
        {
            CNH = val;
        }
        public String getCNH()
        {
            return CNH;
        }

        public void setTelefone(String val)
        {
            Telefone = val;
        }
        public String getTelefone()
        {
            return Telefone;
        }

        public void setDataNasc(String val)
        {
            DataNasc = val;
        }
        public String getDataNasc()
        {
            return DataNasc;
        }

        public void setEstado(String val)
        {
            Estado = val;
        }
        public String getEstado()
        {
            return Estado;
        }

        public void setCidade(String val)
        {
            Cidade = val;
        }
        public String getCidade()
        {
            return Cidade;
        }

        public void setEndereco(String val)
        {
            Endereco = val;
        }
        public String getEndereco()
        {
            return Endereco;
        }

        public void setCEP(String val)
        {
            CEP = val;
        }
        public String getCEP()
        {
            return CEP;
        }

        public void setRG(String val)
        {
            RG = val;
        }
        public String getRG()
        {
            return RG;
        }

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

        public bool inserirFunc(String nome, String email, String rg, String cep, String endereco, String cidade, String estado, String datanasc, String tel, String cnh, String estcivil, String nomeconj, String salario, String cargo, String telconj, String carteira, String login, String senha)
        {
            FuncionarioDAL funcDAL = new FuncionarioDAL();

            Nome = nome;
            Email = email;
            RG = rg;
            CEP = cep;
            Endereco = endereco;
            Cidade = cidade;
            Estado = estado;
            DataNasc = datanasc;
            Telefone = tel;
            CNH = cnh;
            EstCivil = estcivil;
            NomeConj = nomeconj;
            Salario = salario;
            Cargo = cargo;
            TelConjuge = telconj;
            Carteira = carteira;
            Senha = senha;
            Login = login;

            return funcDAL.inserirFunc(Nome, Email, RG, CEP, Endereco, Cidade, Estado, DataNasc, Telefone, CNH, EstCivil, NomeConj, Salario, Cargo, TelConjuge, Carteira, Login, Senha);
        }

        public DataTable pesquisarFunc(String p)
        {
            FuncionarioDAL funcDAL = new FuncionarioDAL();
           
            return funcDAL.pesquisarFunc(p);
        }
    }
}
