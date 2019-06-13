using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Pedidos4BLL
    {
        public static String LocalRet;
        public static String Ano;
        public static String KmSaida;
        public static String Modelo;
        public static String Marca;
        public static String Placa;
        public static String Obs;
        public static String Data;
        public static String Cor;
        public static String HoraSaida;
        public static String Apolice;
        public static String Destino;
        public static String Referencia;

        public void setLocalRet(String val)
        {
            LocalRet = val;
        }
        public String getLocalRet()
        {
            return LocalRet;
        }

        public void setAno(String val)
        {
            Ano = val;
        }
        public String getAno()
        {
            return LocalRet;
        }

        public void setKmSaida(String val)
        {
            KmSaida = val;
        }
        public String getKmSaida()
        {
            return KmSaida;
        }

        public void setModelo(String val)
        {
            Modelo = val;
        }
        public String getModelo()
        {
            return Modelo;
        }

        public void setHoraSaida(String val)
        {
            HoraSaida = val;
        }
        public String getHoraSaida()
        {
            return HoraSaida;
        }

        public void setMarca(String val)
        {
            Marca = val;
        }
        public String getMarca()
        {
            return Marca;
        }

        public void setPlaca(String val)
        {
            Placa = val;
        }
        public String getPlaca()
        {
            return Placa;
        }

        public void setObs(String val)
        {
            Obs = val;
        }
        public String getObs()
        {
            return Obs;
        }

        public void setData(String val)
        {
            Data = val;
        }
        public String getData()
        {
            return Data;
        }

        public void setCor(String val)
        {
            Cor = val;
        }
        public String getCor()
        {
            return Cor;
        }

        public void setApolice(String val)
        {
            Apolice = val;
        }
        public String getApolice()
        {
            return Apolice;
        }

        public void setDestino(String val)
        {
            Destino = val;
        }
        public String getDestino()
        {
            return Destino;
        }

        public void setReferencia(String val)
        {
            Referencia = val;
        }
        public String getReferencia()
        {
            return Referencia;
        }

        public bool inserirAbertura(String retirada, String ano, String hrs, String kmsaida, String modelo, String marca, String placa, String obs, String data, String cor, String apolice)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            PedidosBLL peB = new PedidosBLL();
            LoginBLL lo = new LoginBLL();
            return pe.inserirAbertura(peB.getIdCliente(), lo.getNome(), hrs, retirada, ano, kmsaida, modelo, marca, placa, obs, data, cor, apolice, destino, referencia);
        }
    }
}
