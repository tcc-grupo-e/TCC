package Classes;

import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClasseConexao {

    Statement smt;
    Connection con;
    private String login = "sa";
    private String senha = "etesp";         
    private String banco = "AutoSocorro";
    private String servidor;
    private String servidornome;
    private String sql;
    String url;
    ResultSet rs;

    public Connection getConexao() throws SQLException {

        try {
            Class.forName("net.sourceforge.jtds.jdbc.Driver");
        } catch (Exception e) {
            System.out.println(e);
        }
        try {
            servidor = InetAddress.getLocalHost().getHostAddress();
            servidornome= InetAddress.getLocalHost().getHostName();
            //usar para adicionar mais logins
            //System.out.println(servidornome);
            if (servidor.equals("LAB23T-02")) {
                senha = "etesp";
            }
            if (servidor.equals("192.168.1.57")) {
                senha = "123456";
            }
            
            if (servidornome.equals("DESKTOP-8V6SRNU")) {
                senha = "1234";
            }
            url = "jdbc:jtds:sqlserver://" + servidor + ":1433/" + banco + ";instance = SQLEXPRESS";
            con = DriverManager.getConnection(url, login, senha);
            smt = con.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    public boolean Logar(String login, String senha) {
        boolean autenticado = false;
        PreparedStatement ps;
        sql = "Select * from Funcionario where Usuario = '" + login + "' and Senha = '" + senha + "' ";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                String loginBanco = rs.getString("usuario");
                String senhaBanco = rs.getString("senha");
                autenticado = true;
            }
            ps.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return autenticado;
    }
}

