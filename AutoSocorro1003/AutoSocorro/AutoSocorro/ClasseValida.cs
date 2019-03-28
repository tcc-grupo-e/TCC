using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;


class ClasseValida
{
    public Boolean ValidaLogin(String Texto)
    {
        if (Texto.Equals("") || Texto.Equals("Login"))
            return false;
        else
            return true;
    }

    public Boolean ValidaVazio(String Texto)
    {
        if (Texto.Equals("") || Texto.Equals("Complemento"))
            return false;
        else
            return true;
    }

    public Boolean ValidaCNH(String cnh)
    {
        if (cnh.Length == 11)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public Boolean ValidaPlaca(String placa)
    {
        placa = placa.Replace("-", "");
        if (placa.Length == 8)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public Boolean ValidaData(String Data)
    {
        DateTime data = DateTime.MinValue;
        if (DateTime.TryParse(Data, out data))
        {
            return true;
        }
        return false;
    }

    public Boolean ValidaCNPJ(String CNPJ)
    {
        int[] multiplicador1 = new int[12] { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
        int[] multiplicador2 = new int[13] { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };

        int soma;
        int resto;

        string digito;
        string tempCNPJ;

        CNPJ = CNPJ.Trim();
        CNPJ = CNPJ.Replace(".", "").Replace("-", "").Replace("/", "").Replace(",", "");
        if (CNPJ.Length != 14)
        {
            return false;
        }
        tempCNPJ = CNPJ.Substring(0, 12);
        soma = 0;

        for (int i = 0; i < 12; i++)
        {
            soma += int.Parse(tempCNPJ[i].ToString()) * multiplicador1[i];
        }

        resto = (soma % 11);

        if (resto < 2)
        {
            resto = 0;
        }
        else
        {
            resto = 11 - resto;
        }

        digito = resto.ToString();

        tempCNPJ = tempCNPJ + digito;

        soma = 0;

        for (int i = 0; i < 13; i++)
        {
            soma += int.Parse(tempCNPJ[i].ToString()) * multiplicador2[i];
        }

        resto = (soma % 11);

        if (resto < 2)
        {
            resto = 0;
        }

        else
        {
            resto = 11 - resto;
        }

        digito = digito + resto.ToString();

        String dig = CNPJ.Substring(12, 2);
        if (dig.Equals(digito))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public Boolean ValidaCPF(String CPF)
    {
        int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
        int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

        string tempCPF;
        string digito;

        int soma;
        int resto;

        CPF = CPF.Trim();
        CPF = CPF.Replace(".", "").Replace("-", "").Replace(",", "").Replace("/", "");

        if (CPF.Length != 11)
        {

            return false;
        }

        tempCPF = CPF.Substring(0, 9);
        soma = 0;

        for (int i = 0; i < 9; i++)
        {
            soma += int.Parse(tempCPF[i].ToString()) * multiplicador1[i];
        }

        resto = soma % 11;

        if (resto < 2)
        {
            resto = 0;
        }
        else
        {
            resto = 11 - resto;
        }

        digito = resto.ToString();
        tempCPF = tempCPF + digito;

        soma = 0;

        for (int i = 0; i < 10; i++)
        {
            soma += int.Parse(tempCPF[i].ToString()) * multiplicador2[i];
        }

        resto = soma % 11;

        if (resto < 2)
        {
            resto = 0;
        }
        else
        {
            resto = 11 - resto;
        }

        digito = digito + resto.ToString();

        String dig = CPF.Substring(9, 2);
        if (dig.Equals(digito))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public Boolean ValidaSenha(String Senha)
    {
        if (Senha.Length < 5 || Senha.Equals("Senha"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaNome(String Nome)
    {
        if (Nome.Length < 3 || Nome.Equals("Nome") || Nome.Equals("Nome do conjuge")) 
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaEmail(String Email)
    {
        Regex rg = new Regex(@"^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$");

        if (rg.IsMatch(Email) )
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public Boolean ValidaCelular(String Celular)
    {
        Celular = Celular.Replace("(","");
        Celular = Celular.Replace(")", "");
        Celular = Celular.Replace("-", "");
        if (Celular.Length != 11)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaTelefone(String Telefone)
    {
        Telefone = Telefone.Replace("-", "");
        if (Telefone.Length != 8 || Telefone.Equals("Telefone"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaRG(String RG)
    {
        RG = RG.Replace(".","");
        RG = RG.Replace("-", "");
        if (RG.Length < 5)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaUF(String UF)
    {
        if (UF.Equals(""))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaEnd(String End)
    {
        if (End.Equals("") || End.Equals("Endereço"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaBairro(String End)
    {
        if (End.Equals("") || End.Equals("Cidade"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public Boolean ValidaCEP(String CEP)
    {
        if (CEP.Length != 9)
        {
            return false;
        }

        try
        {
            Regex Rgx = new Regex(@"^\d{5}-\d{3}$");
            
            if (!Rgx.IsMatch(CEP))
                return false;
            else
                return true;

            //var ws = new AutoSocorro.ValCep.AtendeClienteClient();
            //var resposta = ws.consultaCEP(CEP);
        }
        catch 
        {
            return false;
        }
    }
}
