import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.stage.StageStyle;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
 
public class Barchart extends Application {
    
    ClasseConexao clas = new ClasseConexao();
    FrmGráficoDespesas desp = new FrmGráficoDespesas();
    Valida pad = new Valida();
    
    public static Stage st;
    public static ResultSet rs;
    int Num;
    String Nome;
    public static String sql = null;
    int nCampo;
    
    @Override public void start(Stage stage) {
        stage.initStyle(StageStyle.UNDECORATED);
        stage.setAlwaysOnTop( true );
        stage.setTitle("Bar Chart Sample");
//        sql= desp.getSql();
        try {
            clas.getConexao();
            rs = clas.smt.executeQuery(sql);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        final CategoryAxis xAxis = new CategoryAxis();
        final NumberAxis yAxis = new NumberAxis();
        final BarChart<String,Number> bc = new BarChart<>(xAxis,yAxis);
        bc.setTitle("Country Summary");
        xAxis.setLabel("Country");       
        yAxis.setLabel("Value");
        XYChart.Series series1 = new XYChart.Series();
        series1.setName("Funcionarios");
        try {
            while(rs.next()){
                Nome= rs.getString("nome");
                Num =pad.salarioInt(rs.getString("salario"));
                series1.getData().add(new XYChart.Data(Nome,Num));
                nCampo++;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        Scene scene  = new Scene(bc,678,378);
        bc.getData().addAll(series1);
        st = stage;
        st.setScene(scene);
        st.show();
        st.setX(711);
        st.setY(331);
    }
    public static void main(String[] args) {
            launch(args);
    }
}