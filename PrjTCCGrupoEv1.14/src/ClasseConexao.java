import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import java.sql.PreparedStatement;

import java.util.logging.Level;
import java.util.logging.Logger; 

import java.sql.Driver;
import java.sql.ResultSet;

public class ClasseConexao {
    private static Statement smt; 
    private static Connection con = null;
    private static String log;
    private static String sen;
    private static String serv;
    private static String banc;
    private String sql;
    private String url;
    
    
    
    public Connection getConexao(String login, String senha, String servidor,String banco) throws SQLException {
        banc =banco;
        serv =servidor;
        sen = senha;
        log = login;
 
        try{
        Class.forName("net.sourceforge.jtds.jdbc.Driver");
        JOptionPane.showMessageDialog(null, "sourceforge deu certo!");        
        }
        catch(Exception e)
        {
             System.out.println(e);
        }
        url = "jdbc:jtds:sqlserver://"+serv+":1433/"+banc+"";
        try{
        con = DriverManager.getConnection(url,log,sen);
        smt = con.createStatement();
        JOptionPane.showMessageDialog(null,"DriveManager.getConnection deu certo !");
        }
        catch(Exception e)
        {
             System.out.println(e + "\n"+ url);
        }
        
        return con ; 
    }
    public boolean consultar (String login, String senha)
    {
        String sen ,log;
        sen = senha;
        log = login;
        boolean autenticado = false ;
        ResultSet rs;
        PreparedStatement ps;
        sql = "Select * from Funcionario where Usuario = '"+log+"' and Senha = '"+sen+"' ";
        try
        {
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();    
            if(rs.next())
            {
                String loginBanco = rs.getString("usuario");
                String senhaBanco = rs.getString("senha");
                autenticado = true;
            }
                ps.close();
                JOptionPane.showMessageDialog(null,"Login e Senha deu certo");
        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(null,ex);
        }
        return autenticado;
    }
}
    
    
   //     jtds-1.3.1.jar download    https://docs.microsoft.com/pt-br/sql/connect/jdbc/step-3-proof-of-concept-connecting-to-sql-using-java?view=sql-server-2017        "jdbc:microsoft:sqlserver://" + servidor + ":" + porta, login, senha
//     "jdbc:jtds:sqlserver://"+servidor+":1433/"+banco+""
//     jdbc:jtds:sqlserver://"+serv+":1433/"+banc+";instance=SQLEXPRESS;namedpipe=true
//     "jdbc:sqlserver://"+ servidor +":1433;databaseName="+ banco +";user=" + login + ";password=" + senha
//     net.sourceforge.jtds.jdbc.Driver  
//     com.microsoft.sqlserver.jdbc.SQLServerDriver
//     https://www.guj.com.br/t/erro-java-sql-sqlexception-network-error-ioexception-connection-refused-connect/57375
 




//public boolean consultar (String login, String senha){
//            boolean autenticado = false;
//            String sql;
//            sql = "select login, senha from NOME_DA_SUA_TABELA where login = ? and senha = ?";
//            PreparedStatement ps;
//             ps = conexao.prepareStatement(sql);
//            ps.setString(1, login);
//            ps.setString(2, senha);
// 
//            ResultSet rs;
//            rs = ps.executeQuery();
// 
//            if (rs.next()) {
//                String loginBanco = rs.getString("NOME_DA_COLUNA_QUE_TEM_O_LOGIN");
//                String senhaBanco = rs.getString("NOME_DA_COLUNA_QUE_TEM_A_SENHA");
//            autentificado = true;
//            }
// 
//            ps.close();
//   
// 
//            return autenticado;
// 
//         catch (SQLException ex) {
//            System.out.println("Erro ao recuperar cliente/ senha.);
//            Logger.getLogger(CartaoDAO.class.getName()).log(Level.SEVERE, null, ex);
//            throw new RuntimeException();
//           
//        }








