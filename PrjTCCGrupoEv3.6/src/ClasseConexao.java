import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ClasseConexao {
    Statement smt; 
    Connection con ;
    private String login = "sa";
    private String senha= "123456";
    private String banco = "AutoSocorro";
    private String servidor ;
    private String sql;
    String url;
    ResultSet rs;
    
    
    public Connection getConexao() throws SQLException {
        
        try{
        Class.forName("net.sourceforge.jtds.jdbc.Driver"); 
        }
        catch(Exception e)
        {
             System.out.println(e);
        }
        try{
        servidor = InetAddress.getLocalHost().getHostAddress();
        url = "jdbc:jtds:sqlserver://"+servidor+":1433/"+banco+";instance = SQLEXPRESS";
        con = DriverManager.getConnection(url,login,senha);
        smt = con.createStatement();
        }
        catch(Exception e)
        {
             System.out.println(e);
        }
        return con ; 
    }
    public boolean Logar (String login, String senha)
    {
        boolean autenticado = false ;
        PreparedStatement ps;
        sql = "Select * from Funcionario where Usuario = '"+login+"' and Senha = '"+senha+"' ";
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
        }
        catch(Exception ex)
        {
            System.out.println(ex);;
        }
        return autenticado;
    }
    public ResultSet retornaDados (String Comando)
    {
        PreparedStatement ps ;
        sql = Comando ;
         try
        {
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();    
                ps.close();
        }
         catch(Exception ex){
             System.out.println(ex);
         }
         return rs;
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








