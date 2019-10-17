import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
 
public class InvertedBarChart extends Application {
    
    ClasseConexao clas = new ClasseConexao();
    FrmGráficoDespesas desp = new FrmGráficoDespesas();
    Valida pad = new Valida();
    
     public static String sql = "select * from funcionario";
     public static ResultSet rs;
     int Num;
     String Nome;
     String campo1 = "nome";
     String campo2 = "salario";
    
    @Override public void start(Stage stage) {
        
        stage.initStyle(StageStyle.UNDECORATED);
        stage.setTitle("Bar Chart Sample");
        final NumberAxis xAxis = new NumberAxis();
        final CategoryAxis yAxis = new CategoryAxis();
        int nCampo = 0 ;
        
        final BarChart<Number,String> bc = new BarChart<Number,String>(xAxis,yAxis);
        
        
        bc.setTitle("Inverted Gráfic");
        xAxis.setLabel("var 1");
        yAxis.setLabel("var 2");  
        xAxis.setTickLabelRotation(90);
        
        try {
            clas.getConexao();
            rs = clas.smt.executeQuery(sql);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        
        XYChart.Series series1 = new XYChart.Series();
        series1.setName("2017");       
        try {
            while(rs.next()){
                Nome= rs.getString(campo1);
                Num =pad.salarioInt(rs.getString(campo2));
                series1.getData().add(new XYChart.Data(Num,Nome));
                nCampo++;
            }
            System.out.println(nCampo);
        } catch (SQLException ex) {
            System.out.println(ex+"Gráfico não gerado");
        }
        Scene scene  = new Scene(bc,678,378);
        
        bc.getData().addAll(series1);
        
        stage.setScene(scene);
        stage.show();
        
        stage.setX(711);
        stage.setY(331);
    }
 
    public static void main(String[] args) {
        launch(args);
    }
}