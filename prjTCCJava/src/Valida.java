
import com.itextpdf.text.Image;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.TimeZone;
import javax.swing.ImageIcon;

public class Valida {

    int salario;
    ClasseConexao clas = new ClasseConexao();
    public String sql;

    public int salarioInt(String salar) {//formata o salario
        salar = salar.replace(".", "");
        salar = salar.replace("R$", "");
        salario = Integer.parseInt(salar);
        return salario;
    }

    public String apelido(String nome) {//formata o nome
        String[] str = nome.split(" ");
        String[] str2 = new String[str.length];
        str2 = str[1].split("");
        str2[0] = str[0] + " ." + str2[0];
        return str2[0];
    }

    public void AddFile(String texto) throws IOException {//cria um txt
        String Filename = "texto.txt";
        File file = new File(Filename);
        if (!file.exists()) {
            file.createNewFile();
        }
        BufferedWriter bf;
        FileWriter wr = new FileWriter(file.getAbsoluteFile());
        bf = new BufferedWriter(wr);
        bf.write(texto);
        bf.close();
        System.out.println("Arquivo salvo");
    }

    public String[] Meses(String In, String Fim) {//divide os meses do periodo escolhido
        System.out.println(In + Fim);
        String[] datas;
        String[] In1 = In.split("/");
        String[] Fim1 = Fim.split("/");
        if (Integer.parseInt(In1[1]) > 12 || Integer.parseInt(Fim1[1]) > 12) {

            System.out.println("Digite os meses entre 1 até 12");
            return null;
        }
        if (Integer.parseInt(In1[2]) < 1946 || Integer.parseInt(Fim1[2]) > 3000) {
            System.out.println("A internet foi criada em 1946 e esta aplicação não vai ultrapassar o ano 3000");
            return null;
        }
        if (In1 == Fim1) {
            System.out.println("Digite datas Diferentes");
            return null;
        }
        int anos;
        int meses;
        if ((Integer.parseInt(Fim1[2]) != Integer.parseInt(In1[2])) && Integer.parseInt(Fim1[2]) != Integer.parseInt(In1[2]) + 1) {
            anos = Integer.parseInt(Fim1[2]) - Integer.parseInt(In1[2]);
            meses = 12 + Integer.parseInt(Fim1[1]) - Integer.parseInt(In1[1]);
            meses = anos * 12 + meses - 12;
        } else {
            meses = Integer.parseInt(Fim1[1]) + 12 - Integer.parseInt(In1[1]);
            anos = meses / 12;
            System.out.println("ababa");
        }
        System.out.println("Count de Meses :" + meses + "Count de anos  :" + anos);
        datas = new String[meses + 2];
        datas[0] = In;
        int count;
        for (int i = 0; i < meses; i++) {
            count = Integer.parseInt(In1[1]) + i;
            int m = count % 12;
            int n = count / 12;
            if (m + 1 < 10) {
                datas[i + 1] = "01/0" + (m + 1) + "/" + (n + Integer.parseInt(In1[2]));
            } else {
                datas[i + 1] = "01/" + (m + 1) + "/" + (n + Integer.parseInt(In1[2]));
            }
        }
        datas[meses + 1] = Fim;
        for (int i = 0; i < meses + 2; i++) {
            System.out.println(datas[i]);
        }
        return Integer.parseInt(Fim1[2]) >= Integer.parseInt(In1[2]) ? datas : Integer.parseInt(Fim1[1]) >= Integer.parseInt(In1[1]) ? datas : Integer.parseInt(Fim1[0]) > Integer.parseInt(In1[0]) ? datas : null;
    }

    public String[] faixaPedido() throws SQLException {//busca no banco a quantidade de pedidos por faixa de horario
        String[] data = new String[6];
        String[] hora = new String[]{"10he12h", "12he14h", "14he16h", "16he18h", "18he20h", "20he22h"};
        for (int i = 0; i < 6; i++) {
            clas.getConexao();
            clas.rs = clas.smt.executeQuery("exec usp_PedidoEntre" + hora[i]);
            if (!clas.rs.next()) {
                data[i] = "0";
            } else {
                data[i] = clas.rs.getString("qtde");
            }
        }
        return data;
    }

    public String[] faixaSalario() {//busca no banco a quantidade de salarios na faixa de preço
        clas = new ClasseConexao();
        String[] qtde = new String[6];
        for (int i = 0; i < 6; i++) {
            sql = "exec usp_QtdeSalario '" + (4000 * i) + "','" + (4000 * (i + 1)) + "'";
            if (i == 5) {
                sql = "exec usp_QtdeSalario '" + (4000 * i) + "','" + 100000 + "'";
            }
            System.out.println(sql);
            try {
                clas.getConexao();
                clas.rs = clas.smt.executeQuery(sql);
                if (!clas.rs.next()) {
                    qtde[i] = "0";
                } else {
                    qtde[i] = clas.rs.getString("qtde");
                }

            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
        return qtde;
    }

    public String dateTime() {//retorna a data de hoje
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        int dia = calendar.get(Calendar.DATE);
        int mes = calendar.get(Calendar.MONTH) + 1;
        int ano = calendar.get(Calendar.YEAR);
        String data = dia + "/" + mes + "/" + ano;
        System.out.println(data);
        return data;
    }

    public String NumMeses(String num) {//troca os numeros por meses
        String mes = "";
        switch (num) {
            case "01":
                mes = "jan";
                break;
            case "02":
                mes = "fev";
                break;
            case "03":
                mes = "mar";
                break;
            case "04":
                mes = "abr";
                break;
            case "05":
                mes = "mai";
                break;
            case "06":
                mes = "jun";
                break;
            case "07":
                mes = "jul";
                break;
            case "08":
                mes = "ago";
                break;
            case "09":
                mes = "set";
                break;
            case "10":
                mes = "out";
                break;
            case "11":
                mes = "nov";
                break;
            case "12":
                mes = "dez";
                break;
        }
        return mes;
    }

    public String[][] VendasDespesas(String Inicio, String Fim) throws SQLException {
        clas.getConexao();
        int count = Meses(Inicio, Fim).length;
        String[][] dados = new String[3][count];
        dados[1] = Meses(Inicio, Fim);
        for (int i = 1; i < count - 1; i++) {
            //Calculo das vendas
            //Ganhos por Adicionais
            double vendas = 0;
            double despesas = 0;
            String datas = "'" + dados[1][i - 1] + "','" + dados[1][i] + "'";
            sql = "exec usp_AdicionaisPeriodo " + datas;
            clas.rs = clas.smt.executeQuery(sql);
            while (clas.rs.next()) {
                vendas += Double.parseDouble(clas.rs.getString("qtde"));
                System.out.println("ad");
            }
            //Ganhos por Fechamento
            clas.rs = clas.smt.executeQuery("exec usp_QtdeFechamento " + datas);
            clas.rs.next();
            vendas = vendas + (100 * Double.parseDouble(clas.rs.getString("qtde")));

            //Ganho por Kilometros 
            clas.rs = clas.smt.executeQuery("exec usp_KmPeriodo " + datas);
            clas.rs.next();
            if (clas.rs.getString("qtde") != null) {
                double km = Double.parseDouble(clas.rs.getString("qtde"));
                vendas = vendas + km;
            }
            System.out.println(" vendas :" + vendas);
            //Calculo das despesas 
            clas.rs = clas.smt.executeQuery("exec usp_GastoSalario '1'");
            clas.rs.next();
            despesas = Double.parseDouble(clas.rs.getString("qtde"));

            clas.rs = clas.smt.executeQuery("exec usp_GasolinaPeriodo " + datas);
            clas.rs.next();
            if (clas.rs.getString("qtde") != null) {
                despesas = despesas + Double.parseDouble(clas.rs.getString("qtde"));
                System.out.println("despesas : " + despesas);
            }
            dados[0][i - 1] = vendas + "";
            dados[2][i - 1] = despesas + "";
            System.out.println("dados 1" + dados[0][i - 1] + " dados2 " + dados[2][i - 1]);
            System.out.println("total da vendas" + vendas + "/total das despesas" + despesas);
            System.out.println(i);
        }
        return dados;
    }

    public String[][] Lucro(String Inicio, String Fim) throws SQLException {
        clas.getConexao();
        int count = Meses(Inicio, Fim).length;

        String[][] dados = new String[2][count];
        dados[1] = Meses(Inicio, Fim);
        for (int i = 1; i < count - 1; i++) {
            //Calculo das vendas
            //Ganhos por Adicionais
            double vendas = 0;
            double despesas = 0;
            String datas = "'" + dados[1][i - 1] + "','" + dados[1][i] + "'";
            sql = "exec usp_AdicionaisPeriodo " + datas;
            clas.rs = clas.smt.executeQuery(sql);
            while (clas.rs.next()) {
                vendas += Double.parseDouble(clas.rs.getString("qtde"));
                System.out.println("ad");
            }
            //Ganhos por Fechamento
            clas.rs = clas.smt.executeQuery("exec usp_QtdeFechamento " + datas);
            clas.rs.next();
            vendas = vendas + (100 * Double.parseDouble(clas.rs.getString("qtde")));

            //Ganho por Kilometros 
            clas.rs = clas.smt.executeQuery("exec usp_KmPeriodo " + datas);
            clas.rs.next();
            if (clas.rs.getString("qtde") != null) {
                double km = Double.parseDouble(clas.rs.getString("qtde"));
                vendas = vendas + km;
            }
            System.out.println(" vendas :" + vendas);
            //Calculo das despesas 
            clas.rs = clas.smt.executeQuery("exec usp_GastoSalario '1'");
            clas.rs.next();
            despesas = Double.parseDouble(clas.rs.getString("qtde"));
            clas.rs = clas.smt.executeQuery("exec usp_GasolinaPeriodo " + datas);
            clas.rs.next();
            if (clas.rs.getString("qtde") != null) {
                despesas = despesas + Double.parseDouble(clas.rs.getString("qtde"));
                System.out.println("despesas : " + despesas);
            }
            dados[0][i - 1] = vendas - despesas + "";
            System.out.println("dados " + dados[0][i - 1]);
            System.out.println("total da vendas" + vendas + "/total das despesas" + despesas);
            System.out.println(i);
        }
        return dados;
    }

    public ImageIcon resize(String path,int width,int height) {
        ImageIcon imageIcon = new ImageIcon(path); 
        java.awt.Image image = imageIcon.getImage(); 
        java.awt.Image newimg = image.getScaledInstance(width, height, java.awt.Image.SCALE_SMOOTH);
        imageIcon = new ImageIcon(newimg);
        return imageIcon;
    }
}
