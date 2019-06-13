using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Pedidos4DAL
    {
        ClasseConexao cc = new ClasseConexao();

        public bool inserirAbertura(int id_Cli, String nomeAten, String hrs, String retirada, String ano, String kmsaida, String modelo, String marca, String placa, String obs, String data, String cor, String apolice, String destino, String referencia)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirAbertura '" + id_Cli + "','" + nomeAten + "','" + apolice + "','" + data + "','" + marca + "','" + modelo + "','" + cor + "','" + ano + "','" + placa + "','" + retirada + "','" + kmsaida + "','" + hrs + "','" + obs + "'";

            try
            {
                cc.executa_sql(sql, true);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
