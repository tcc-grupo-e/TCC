import java.awt.Color;
import java.awt.Font;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.block.BlockBorder;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.StandardBarPainter;
import org.jfree.chart.title.LegendTitle;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.xy.XYDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import org.jfree.ui.RectangleEdge;
import org.jfree.ui.TextAnchor;

//https://github.com/jfree/jfreechart/tree/master/src/test/java/org/jfree/chart

public class GerarGraficos {
    public ImageIcon icon;
    Valida val = new Valida();
    public ImageIcon gerarBar(ResultSet rs, int width, int height) throws SQLException
    {
        DefaultCategoryDataset ds = new DefaultCategoryDataset( );
        
        while( rs.next( ) ){
                String salario = rs.getString("salario");
                String ID = rs.getString("ID_Funcionario");
                String nome = rs.getString("nome");

                int money = val.salarioInt(salario);
                    ds.addValue(money,nome,"");
        }
        //
        //Definir propriedades do Gráfico
        //
        JFreeChart chart = ChartFactory.createBarChart("Sálário dos Funcíonários","Funcionários","Salário",ds,PlotOrientation.VERTICAL,true, true, false);
        CategoryPlot plot = chart.getCategoryPlot();
        BarRenderer renderer = (BarRenderer) plot.getRenderer();
        LegendTitle legend = chart.getLegend();
        
        BarLegend(legend);
        BarRenderer(renderer,ds);    
        BarPlot(plot);
//        CategoryPlot p = chart.getCategoryPlot(); 
//        CategoryAxis axis = p.getDomainAxis();
//        axis.setLowerMargin(0);
//        axis.setUpperMargin(0);
//        axis.setCategoryMargin(0);
//        renderer.setItemMargin(0); 
            //
            //salvar o grafico em um documento
            //
            gerarImg("Barchart.jpg", chart, width, height);
    return icon;
    }
    public ImageIcon gerarInvertedBar(ResultSet rs, int width, int height) throws SQLException
    {
        DefaultCategoryDataset ds = new DefaultCategoryDataset( );
        
        while( rs.next( ) ){
                String salario = rs.getString("salario");
                String ID = rs.getString("ID_Funcionario");
                String nome = rs.getString("nome");
                int money = val.salarioInt(salario);
                    ds.addValue(money,nome,"");
        }
        //
        //Definir propriedades do Gráfico
        //
        JFreeChart chart = ChartFactory.createBarChart("Sálário dos Funcíonários","Funcionários","Salário",ds,PlotOrientation.HORIZONTAL,true, true, false);
        CategoryPlot plot = chart.getCategoryPlot();
        BarRenderer renderer = (BarRenderer) plot.getRenderer();
        LegendTitle legend = chart.getLegend();
        
        BarLegend(legend);
        InvertedBarRenderer(renderer,ds);    
        BarPlot(plot);
//        CategoryPlot p = chart.getCategoryPlot(); 
//        CategoryAxis axis = p.getDomainAxis();
//        axis.setLowerMargin(0);
//        axis.setUpperMargin(0);
//        axis.setCategoryMargin(0);
//        renderer.setItemMargin(0); 
            //
            //salvar o grafico em um documento
            //
            gerarImg("InvertedBarchart.jpg", chart, width, height);
    return icon;
    }
    public ImageIcon gerarInvertedBartest(String[] data, int width, int height) throws SQLException
    {
        DefaultCategoryDataset ds = new DefaultCategoryDataset( );
        for(int i=0;i<6;i++){
        String nome = (i*2+10)+"H-"+(i*2+12)+"H";
        ds.addValue(Double.parseDouble(data[i]),nome,"");
        }
        //
        //Definir propriedades do Gráfico
        //
        JFreeChart chart = ChartFactory.createBarChart("Quantidade de pedidos por faixa de horário","Faixa de Horários","Quantidade de Pedidos",ds,PlotOrientation.HORIZONTAL,true, true, false);
        
        CategoryPlot plot = chart.getCategoryPlot();
        BarRenderer renderer = (BarRenderer) plot.getRenderer();
        LegendTitle legend = chart.getLegend();
        
        BarLegend(legend);
        InvertedBarRenderer(renderer,ds);    
        BarPlot(plot);
//        CategoryPlot p = chart.getCategoryPlot(); 
//        CategoryAxis axis = p.getDomainAxis();
//        axis.setLowerMargin(0);
//        axis.setUpperMargin(0);
//        axis.setCategoryMargin(0);
//        renderer.setItemMargin(0); 
            //
            //salvar o grafico em um documento
            //
            gerarImg("InvertedBarchart.jpg", chart, width, height);
    return icon;
    }
    public ImageIcon  gerarArea(ResultSet rs, int width, int height) throws SQLException
    {

              //
              //converter rs para ds
              // 
              DefaultCategoryDataset ds = new DefaultCategoryDataset( );
              while( rs.next( )){
                String salario = rs.getString("salario");
                String nome = rs.getString("nome");
                int money = val.salarioInt(salario);
                nome = val.apelido(nome);
                ds.addValue(money, "1", nome);  
              }
              //
              //fazer e inserir dados no chart
              //
                JFreeChart chart = ChartFactory.createAreaChart("Salário dos funcionários","Salário","Quantidade de pessoas",  ds ,  org.jfree.chart.plot.PlotOrientation.VERTICAL,false,false,false);
                CategoryPlot plot = chart.getCategoryPlot();
                Areaplot(plot);
              //
              //salvar o grafico em um documento 
              //
	             gerarImg("Areachart.jpg", chart, width, height);
          return icon;
    }
    public ImageIcon gerarPiechart(ResultSet rs, int width, int height) 
    {
              //
              //converter rs para ds
              // 
        DefaultPieDataset ds = new DefaultPieDataset( );
        try {
            while( rs.next()){
                String salario = rs.getString("salario");
                String nome = rs.getString("nome");
                int money = val.salarioInt(salario);
                ds.setValue(nome, money);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
            JFreeChart chart = ChartFactory.createPieChart(" Eficiencia de cada funcionario",ds,true,true,false);
            PiePlot plot = (PiePlot) chart.getPlot();
            LegendTitle legend = chart.getLegend();
            PieLegend(legend);
            PiePlot(plot);
                 gerarImg("Piechart.jpg", chart, width, height);
    return icon;
    }
    public ImageIcon gerarLine(ResultSet rs, int width, int height)
    {
        DefaultCategoryDataset ds = new DefaultCategoryDataset( );
        try {
            while( rs.next()){
                String salario = rs.getString("salario");
                String nome = rs.getString("nome");
                int money = val.salarioInt(salario);
                nome = val.apelido(nome);
                  ds.addValue(money, "1", nome);  
                  ds.addValue(money+5000, "2", nome);
            }
            
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        JFreeChart chart = ChartFactory.createLineChart("Linecharts medias e medianas","Years","Number of Schools",ds,PlotOrientation.VERTICAL,true,true,false);
         CategoryPlot plot = chart.getCategoryPlot();
         LegendTitle legend = chart.getLegend();
         NumberAxis rangeAxis = (NumberAxis)plot.getRangeAxis();
         rangeAxis.setRange(6000,20000);
         plot.setBackgroundPaint(Color.white);
         plot.setOutlinePaint(Color.white);
         gerarImg("Linearchart.jpg", chart, width, height);
         
         return icon;
        
    }
     public void BarLegend(LegendTitle legend)
    {
        legend.setPosition(RectangleEdge.BOTTOM);
        legend.setItemFont(new Font("Microsoft Sans Serif",Font.CENTER_BASELINE,15));
        legend.setBorder(BlockBorder.NONE);
        RectangleEdge position = legend.getPosition();
        legend.setPosition(position);
        
    }
    public void BarRenderer(BarRenderer renderer,DefaultCategoryDataset ds)
    {
    renderer.setSeriesPaint(0,new Color(0xE5F9E0));
        renderer.setSeriesPaint(1, new Color(0xA3F7B5));
        renderer.setSeriesPaint(2, new Color(0x40C9A2));
        renderer.setBaseItemLabelsVisible(true);
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
        //
        //label com valores
        //
        for(int x = 0;x<ds.getRowCount();x++){
            renderer.setSeriesItemLabelFont(x, new Font("Microsoft Sans Serif",Font.PLAIN,12));
            renderer.setSeriesPositiveItemLabelPosition(x,new ItemLabelPosition(ItemLabelAnchor.OUTSIDE12, TextAnchor.BASELINE_CENTER, TextAnchor.BASELINE_CENTER,0));
        }
    }
    
    public void BarPlot(CategoryPlot plot)
    {
     plot.setBackgroundPaint(new Color(0xFFFFFF));
      plot.setDomainGridlinesVisible(false);
      plot.setOutlinePaint(Color.white);
      plot.setRangeGridlinePaint(Color.black);
      ((BarRenderer) plot.getRenderer()).setBarPainter(new StandardBarPainter());
    }
     public void InvertedBarRenderer(BarRenderer renderer,DefaultCategoryDataset ds)
    {
    renderer.setSeriesPaint(0,new Color(0xE5F9E0));
        renderer.setSeriesPaint(1, new Color(0xA3F7B5));
        renderer.setSeriesPaint(2, new Color(0x40C9A2));
        renderer.setBaseItemLabelsVisible(true);
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
        //
        //label com valores
        //
        for(int x = 0;x<ds.getRowCount();x++){
            renderer.setSeriesItemLabelFont(x, new Font("Microsoft Sans Serif",Font.PLAIN,12));
            renderer.setSeriesPositiveItemLabelPosition(x,new ItemLabelPosition(ItemLabelAnchor.OUTSIDE3, TextAnchor.BASELINE_CENTER, TextAnchor.BASELINE_CENTER,0));
        }
    }
     
    public void Areaplot(CategoryPlot plot)
    {
    
        plot.setBackgroundPaint(new Color(0xFFFFFF));
        plot.setDomainGridlinePaint(Color.white);
        plot.setRangeGridlinePaint(Color.black);
        plot.setDomainCrosshairVisible(true);
        plot.setRangeCrosshairVisible(true);
        plot.setDomainGridlinesVisible(true);
        plot.setOutlinePaint(Color.white);
    }
    public void PieLegend(LegendTitle legend)
    {
         legend.setPosition(RectangleEdge.RIGHT);
         legend.setItemFont(new Font("Microsoft Sans Serif",Font.CENTER_BASELINE,12));
         legend.setBorder(BlockBorder.NONE);
    }
    public void PiePlot(PiePlot plot)
    {
            plot.setBackgroundPaint(Color.white);
            plot.setShadowPaint( Color.white);
            plot.setOutlineVisible(true);            
            plot.setLabelLinksVisible(true);
            plot.setLabelBackgroundPaint(Color.white);
            plot.setSectionPaint(0, new Color(0xE5F9E0));
            plot.setSectionPaint(1, new Color(0xA3F7B5));
            plot.setSectionPaint(2, new Color(0x40C9A2));
    }
    public ImageIcon gerarImg(String nome,JFreeChart chart,int width,int height)
    {
        try {
            ChartUtilities.saveChartAsJPEG(new java.io.File(nome), chart,width,height);
            BufferedImage img = ImageIO.read(new File(nome));
            icon = new ImageIcon(img);
        } catch (IOException ex) {
            System.out.println(ex);
        }
    return icon;
    }
    }

