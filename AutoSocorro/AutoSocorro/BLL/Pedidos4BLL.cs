using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Pedidos4BLL
    { 
        //
        //Inserção
        //
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
        //
        //Alterar e Deletar
        //
        public static int idAbertura;
        public static String cod;
        public static int linhacod;
        public static int codAb = 1;
        //
        //Consultar
        //
        public static DataTable ChamadasTodas;
        public static DataTable ChamadasData;
        public static DataTable ChamadasPlaca;
        public static DataTable ChamadasModelo;
        public static DataTable ChamadasMotorista;
        public static DataTable ChamadasDestino;
        //
        //Get e Set inserção
        //
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
        //
        //Get e Set Alterar e Deletar
        //
        public void setCodAb(int val)
        {
            codAb = val;
        }
        public int getCodAb()
        {
            return codAb;
        }

        public void setIdAbertura(int val)
        {
            idAbertura = val;
        }
        public int getIdAbertura()
        {
            return idAbertura;
        }

        public void setLinhaCod(int val)
        {
            linhacod = val;
        }
        public int getLinhaCod()
        {
            return linhacod;
        }

        public void setCod(String val)
        {
            cod = val;
        }
        public String getCod()
        {
            return cod;
        }
        //
        //Get e Set Consultar
        //
        public void setTodasChamadas(DataTable val)
        {
            ChamadasTodas = val;
        }
        public DataTable getTodasChamadas()
        {
            return ChamadasTodas;
        }

        public void setPlacaChamadas(DataTable val)
        {
            ChamadasPlaca = val;
        }
        public DataTable getPlacaChamadas()
        {
            return ChamadasPlaca;
        }

        public void setMotoristaChamadas(DataTable val)
        {
            ChamadasMotorista = val;
        }
        public DataTable getMotoristaChamadas()
        {
            return ChamadasMotorista;
        }

        public void setModeloChamadas(DataTable val)
        {
            ChamadasModelo= val;
        }
        public DataTable getModeloChamadas()
        {
            return ChamadasModelo;
        }

        public void setDestinoChamadas(DataTable val)
        {
            ChamadasDestino = val;
        }
        public DataTable getDestinoChamadas()
        {
            return ChamadasDestino;
        }

        public void setDataChamadas(DataTable val)
        {
            ChamadasData = val;
        }
        public DataTable getDataChamadas()
        {
            return ChamadasData;
        }
        //
        //Inserir
        //
        public void InserirAdicAber(int idAb, String Adicional)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            pe.InserirAdicAber(idAb, Adicional);
        }

        public bool inserirAbertura(String retirada, String ano, String hrs, String kmsaida, String modelo, String marca, String placa, String obs, String data, String cor, String apolice)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            PedidosBLL peB = new PedidosBLL();
            LoginBLL lo = new LoginBLL();
            return pe.inserirAbertura(peB.getIdCliente(), peB.getIdCaminhao(), lo.getNome(), hrs, retirada, ano, kmsaida, modelo, marca, placa, obs, data, cor, apolice);
        }

        public bool inserirFuncAber()
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            PedidosBLL peB = new PedidosBLL();
            return pe.inserirFuncAber(peB.getIdMotorista());
        }

        public bool inserirFechamento(String kmche, String hrche, String hrpar, String hrtrab, String contato, String estado, String acom, int id)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            return pe.inserirFechamento(kmche, hrche,hrpar, hrtrab ,contato, estado, acom, id);
        }

        public bool inserirDestinos(int ordem, String destino, String referencia, int id_chamado)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            return pe.inserirDestinos(ordem, destino, referencia, id_chamado);
        }
        //
        //Alterar
        //

        //
        //Deletar
        //

        //
        //Consultar Todos
        //
        public DataTable pesquisarTodas()
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            ChamadasTodas = pe.pesquisarTodosChamados();
            return ChamadasTodas;
        }
        //
        //Consultar pela Placa do carro
        //
        public DataTable pesquisarPlacaCarro(String placa)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            ChamadasPlaca = pe.pesquisarPlacaCarro(placa);
            return ChamadasPlaca;
        }
        //
        //Consultar pelo Modelo do carro
        //
        public DataTable pesquisarModeloCarro(String modelo)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            ChamadasModelo = pe.pesquisarModeloCarro(modelo);
            return ChamadasModelo;
        }
        //
        //Consultar Motorista
        //
        public DataTable pesquisarMotorista(String motorista)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            ChamadasMotorista = pe.pesquisarMotorista(motorista);
            return ChamadasMotorista;
        }
        //
        //Consultar pelo data do chamado
        //
        public DataTable pesquisarDataServico(String data)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            ChamadasData = pe.pesquisarDataServico(data);
            return ChamadasData;
        }
        //
        //Consultar pelo Destino do chamado
        //
        public DataTable pesquisarDestino(String destino)
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            ChamadasDestino = pe.pesquisarDestino(destino);
            return ChamadasDestino;
        }
        //
        //Ultimo Id
        //
        public int UltimoId()
        {
            Pedidos4DAL pe = new Pedidos4DAL();
            return pe.UltimoId(); 
        }
    }
}
