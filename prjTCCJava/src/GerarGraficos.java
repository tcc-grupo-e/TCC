
import java.awt.BasicStroke;
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
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.LayeredBarRenderer;
import org.jfree.chart.renderer.category.LineAndShapeRenderer;
import org.jfree.chart.title.LegendTitle;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.ui.HorizontalAlignment;
import org.jfree.ui.RectangleEdge;
import org.jfree.ui.RectangleInsets;
import org.jfree.ui.VerticalAlignment;

public class GerarGraficos {

    public ImageIcon icon;
    Valida val = new Valida();
    PropGraficos prop = new PropGraficos();

    public ImageIcon gerarBar(ResultSet rs, String txttitle, int width, int height) throws SQLException {
        DefaultCategoryDataset ds = new DefaultCategoryDataset();
        JFreeChart chart = null;
        while (rs.next()) {//pega os dados do result set
            String qtde = rs.getString("qtde");
            System.out.println(qtde);
            String nome = rs.getString("nome");
            int money = val.salarioInt(qtde);
            ds.addValue(money, nome, "");//transfere para o data ser
        }
        //
        //Definir propriedades do Gráfico
        //
        switch (txttitle) {//muda os titulos e legendas de acordo com o grafico
            case "salario de cada funcionário":
                chart = ChartFactory.createBarChart("Sálário dos Funcíonários", "Funcionários", "Salário em Reais", ds, PlotOrientation.VERTICAL, true, true, false);
                break;
            case "Ranking dos Motoristas":
                chart = ChartFactory.createBarChart("Ranking dos Motoristas", "Motoristas", "Número de Fechamentos efetuados", ds, PlotOrientation.VERTICAL, true, true, false);
                break;
            case "Ranking dos Atendentes":
                chart = ChartFactory.createBarChart("Ranking dos Atendentes", "Atendentes", "Número de Atendimentos feitos", ds, PlotOrientation.VERTICAL, true, true, false);
                break;
            case "Ranking dos Adicionais":
                chart = ChartFactory.createBarChart("Ranking dos Adicionais", "Tipos de Adicionais", "Quantidade de Adicionais", ds, PlotOrientation.VERTICAL, true, true, false);
                break;
        }
        //Estabelece as caracteristicas dos Gráficos
        CategoryPlot plot = chart.getCategoryPlot();
        BarRenderer renderer = (BarRenderer) plot.getRenderer();
        LegendTitle legend = chart.getLegend();
        prop.BarLegend(legend);
        prop.BarRenderer(renderer, ds);
        prop.BarPlot(plot);
        TextTitle title = new TextTitle(txttitle, new Font("Code Bold", Font.PLAIN, 24), new Color(0x555555), RectangleEdge.TOP, HorizontalAlignment.CENTER, VerticalAlignment.CENTER, RectangleInsets.ZERO_INSETS);
        chart.setTitle(title);
        //salva o grafico em um documento
        gerarImg(txttitle + ".jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarBarTest(String[][] dados, int width, int height) throws SQLException {
        DefaultCategoryDataset ds = new DefaultCategoryDataset();
        for (int i = 0; i < dados[0].length - 2; i++) {//divide os dados em Lucros caso + perdas caso - 
            String[] spliter = dados[1][i].split("/");
            String[] spliter2 = spliter[2].split("");
            if (Double.parseDouble(dados[0][i]) >= 0) {
                ds.addValue(Double.parseDouble(dados[0][i]), "Lucro", val.NumMeses(spliter[1]) + spliter2[2] + spliter2[3]);
            } else {
                ds.addValue(Double.parseDouble(dados[0][i]), "Perdas", val.NumMeses(spliter[1]) + spliter2[2] + spliter2[3]);
            }

        }
        //Defini propriedades do Gráfico
        //eixox
        CategoryAxis cAxis = new CategoryAxis("Tempo");
        cAxis.setLabelFont(new Font("Tahoma", Font.TYPE1_FONT, 14));
        cAxis.setLabelPaint(new Color(0x444444));
        cAxis.setTickLabelFont(new Font("Tahoma", Font.PLAIN, 12));
        //eixoy
        ValueAxis vAxis = new NumberAxis("Reais");
        vAxis.setLabelFont(new Font("Tahoma", Font.TYPE1_FONT, 14));
        vAxis.setLabelPaint(new Color(0x444444));
        vAxis.setTickLabelFont(new Font("Tahoma", Font.PLAIN, 12));

        CategoryPlot plot = new CategoryPlot(ds, cAxis, vAxis, new LayeredBarRenderer());
        plot.setOrientation(PlotOrientation.VERTICAL);
        //constroi o gráfico
        JFreeChart chart = new JFreeChart("Lucro", new Font("Tahoma", Font.TYPE1_FONT, 14), plot, true);
        //define ainda mais caracteristicas
        chart.getLegend().setItemFont(new Font("Tahoma", Font.PLAIN, 12));
        chart.setBackgroundPaint(new Color(0xFFFFFF));
        plot.setDomainGridlinesVisible(true);
        LayeredBarRenderer renderer = (LayeredBarRenderer) plot.getRenderer();//deixa o gradico sobreposto
        prop.BarRenderer(renderer, ds);
        prop.BarPlot(plot);
        renderer.setSeriesPaint(1, new Color(0xed462f));
        renderer.setSeriesPaint(0, new Color(0x54ae0a));
        TextTitle title = new TextTitle("Lucro", new Font("Code Bold", Font.PLAIN, 24), new Color(0x555555), RectangleEdge.TOP, HorizontalAlignment.CENTER, VerticalAlignment.CENTER, RectangleInsets.ZERO_INSETS);
        chart.setTitle(title);
        //salva o grafico em um documento
        gerarImg("Lucros.jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarInvertedBar(ResultSet rs, int width, int height) throws SQLException {
        DefaultCategoryDataset ds = new DefaultCategoryDataset();

        while (rs.next()) {//transforma o Resultset em dataset
            String salario = rs.getString("salario");
            String ID = rs.getString("ID_Funcionario");
            String nome = rs.getString("nome");
            int money = val.salarioInt(salario);
            ds.addValue(money, nome, "");
        }
        //constroi o grafico
        JFreeChart chart = ChartFactory.createBarChart("Sálário dos Funcíonários", "Funcionários", "Salário", ds, PlotOrientation.HORIZONTAL, true, true, false);
        CategoryPlot plot = chart.getCategoryPlot();
        BarRenderer renderer = (BarRenderer) plot.getRenderer();
        LegendTitle legend = chart.getLegend();
        //Definir propriedades do Gráfico
        prop.BarLegend(legend);
        prop.InvertedBarRenderer(renderer, ds);
        prop.BarPlot(plot);
        //salva o grafico em um documento
        gerarImg("Salário.jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarInvertedBartest(String[] data, String txttitle, int width, int height, String grafico) throws SQLException {
        DefaultCategoryDataset ds = new DefaultCategoryDataset();
        String Title = "";
        String Axis = "";
        String Axis2 = "";
        if (grafico.equals("pedido")) {//define as faixas de hora dos pedidos
            for (int i = 0; i < 6; i++) {
                String nome = (i * 2 + 10) + "H-" + (i * 2 + 12) + "H";
                ds.addValue(Double.parseDouble(data[i]), nome, "");
            }
            Title = "Quantidade de pedidos por faixa de horário";
            Axis = "Faixa de Horários";
        }
        if (grafico.equals("salario")) {//define as faixas do salario dos funcionarios
            for (int i = 0; i < 6; i++) {
                int k = (4 * i);
                ds.addValue(Double.parseDouble(data[i]), k + "Mil até " + (k + 4) + "Mil", "");
            }
            Title = "Quantidade Salários por faixa salarial";
            Axis = "Faixa de salários";
        }
        //gera o grafico
        JFreeChart chart = ChartFactory.createBarChart(Title, Axis, Axis2, ds, PlotOrientation.HORIZONTAL, true, true, false);

        CategoryPlot plot = chart.getCategoryPlot();
        BarRenderer renderer = (BarRenderer) plot.getRenderer();
        LegendTitle legend = chart.getLegend();
        CategoryAxis domainAxis = plot.getDomainAxis();
        //Defini propriedades do Gráfico
        domainAxis.setCategoryLabelPositions(CategoryLabelPositions.UP_45);
        renderer.setItemLabelAnchorOffset(10);
        prop.BarLegend(legend);
        prop.InvertedBarRenderer(renderer, ds);
        prop.BarPlot(plot);
        TextTitle title = new TextTitle(txttitle, new Font("Code Bold", Font.PLAIN, 24), new Color(0x555555), RectangleEdge.TOP, HorizontalAlignment.CENTER, VerticalAlignment.CENTER, RectangleInsets.ZERO_INSETS);
        chart.setTitle(title);
        if (grafico.equals("salario")) {
            legend.setPosition(RectangleEdge.RIGHT);//muda a posição da legenda se for o grafico de salarios
        }
        //salva o grafico em um documento
        gerarImg(txttitle + ".jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarArea(ResultSet rs, int width, int height) throws SQLException {
        //converte rs para ds 
        DefaultCategoryDataset ds = new DefaultCategoryDataset();
        while (rs.next()) {
            String salario = rs.getString("salario");
            String nome = rs.getString("nome");
            int money = val.salarioInt(salario);
            System.out.println(nome);
            nome = val.apelido(nome);
            ds.addValue(money, "1", nome);
        }
        //consntroi o grafico
        JFreeChart chart = ChartFactory.createAreaChart("Salário dos funcionários", "Salário", "Quantidade de pessoas", ds, org.jfree.chart.plot.PlotOrientation.VERTICAL, false, false, false);
        CategoryPlot plot = chart.getCategoryPlot();
        prop.Areaplot(plot);
        //salva o grafico em um documento 
        gerarImg("Salário.jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarAreaTest(String[][] dados, String txttitle, int width, int height) throws SQLException {
        //converter rs para ds
        DefaultCategoryDataset ds = new DefaultCategoryDataset();
        for (int i = 0; i < dados[0].length - 1; i++) {
            System.out.println(dados[1][i]);
            String[] spliter = dados[1][i].split("/");
            String[] spliter2 = spliter[2].split("");
            ds.addValue(Double.parseDouble(dados[0][i]), "graf", val.NumMeses(spliter[1]) + spliter2[2] + spliter2[3]);
//            ds.addValue(Double.parseDouble(dados[0][i]) - 7, "shadow", val.NumMeses(spliter[1]) + spliter2[2] + spliter2[3]);
        }

        //
        //fazer e inserir dados no chart
        //
        JFreeChart chart = null;
        switch (txttitle) {//muda os titulos e legendas de acordo com o grafico
            case "Quantidade de Chamados por tempo":
                chart = ChartFactory.createAreaChart("", "Tempo", "Quantidade de Chamados", ds, org.jfree.chart.plot.PlotOrientation.VERTICAL, false, false, false);
                break;
            case "Gasto da gasolina por tempo":
                chart = ChartFactory.createAreaChart("", "Tempo", "Gastos da Gasolina", ds, org.jfree.chart.plot.PlotOrientation.VERTICAL, false, false, false);
                break;
            case "Total de despesas por tempo":
                chart = ChartFactory.createAreaChart("", "Tempo", "Total de Despesas", ds, org.jfree.chart.plot.PlotOrientation.VERTICAL, false, false, false);
        }
        //define as caracteristicas dos graficos
        CategoryPlot plot = chart.getCategoryPlot();
        prop.Areaplot(plot);
        plot.getRenderer().setSeriesPaint(1, new Color(0x9ae3dd));
        plot.getRenderer().setSeriesPaint(0, new Color(0x4bcdc3));
        TextTitle title = new TextTitle(txttitle, new Font("Code Bold", Font.PLAIN, 24), new Color(0x555555), RectangleEdge.TOP, HorizontalAlignment.CENTER, VerticalAlignment.CENTER, RectangleInsets.ZERO_INSETS);
        chart.setTitle(title);
        //salva o grafico em um documento 
        gerarImg(txttitle + ".jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarPiechart(ResultSet rs, String txttitle, int width, int height) {
        //converter rs para ds
        DefaultPieDataset ds = new DefaultPieDataset();
        JFreeChart chart = null;
        try {
            while (rs.next()) {
                String salario = rs.getString("qtde");
                String nome = rs.getString("nome");
                int money = val.salarioInt(salario);
                ds.setValue(nome, money);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        switch (txttitle) {//muda as legendas e titulos de acordo com os gráficos
            case "Porcentagem de cada dispesa":
                chart = ChartFactory.createPieChart("Porcentagem de cada dispesa", ds, true, true, false);
                break;
            case "Eficiência de cada Atendente":
                chart = ChartFactory.createPieChart("Produtividade de cada Atendente", ds, true, true, false);
                break;
            case "Eficiência de cada Motorista":
                chart = ChartFactory.createPieChart("Eficiência de cada Motorista", ds, true, true, false);
                break;
        }
        //Caracteristicas do Gráfico
        PiePlot plot = (PiePlot) chart.getPlot();
        LegendTitle legend = chart.getLegend();
        prop.PieLegend(legend);
        prop.PiePlot(plot);
        TextTitle title = new TextTitle(txttitle, new Font("Code Bold", Font.PLAIN, 24), new Color(0x555555), RectangleEdge.TOP, HorizontalAlignment.CENTER, VerticalAlignment.CENTER, RectangleInsets.ZERO_INSETS);
        chart.setTitle(title);
        //salva o grafico em um arquivo
        gerarImg(txttitle+".jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarPiechartTeste(String[][] dados, int width, int height) {
        //converte rs para ds
        DefaultPieDataset ds = new DefaultPieDataset();
        for (int i = 0; i < dados.length; i++) {
            ds.setValue(dados[0][i], Double.parseDouble(dados[1][i]));
        }
        JFreeChart chart = ChartFactory.createPieChart("Porcentagem de cada dispesa", ds, true, true, false);
        PiePlot plot = (PiePlot) chart.getPlot();
        LegendTitle legend = chart.getLegend();
        prop.PieLegend(legend);
        prop.PiePlot(plot);
        //salva o grafico em um arquivo
        gerarImg("Porcentagem de Dispesas.jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarLine(ResultSet rs, int width, int height) {
        DefaultCategoryDataset ds = new DefaultCategoryDataset();
        //converte rs para ds
        try {
            while (rs.next()) {//
                String salario = rs.getString("salario");
                String nome = rs.getString("nome");
                int money = val.salarioInt(salario);
                nome = val.apelido(nome);
                ds.addValue(money, "1", nome);
                ds.addValue(money + 5000, "2", nome);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        JFreeChart chart = ChartFactory.createLineChart("Linecharts medias e medianas", "Years", "Number of Schools", ds, PlotOrientation.VERTICAL, true, true, false);
        CategoryPlot plot = chart.getCategoryPlot();
        LegendTitle legend = chart.getLegend();
        NumberAxis rangeAxis = (NumberAxis) plot.getRangeAxis();

        rangeAxis.setRange(6000, 20000);
        plot.setBackgroundPaint(Color.white);
        plot.setOutlinePaint(Color.white);
        LineAndShapeRenderer renderer = new LineAndShapeRenderer();
        renderer.setBaseStroke(new BasicStroke(3.0f));
        renderer.setAutoPopulateSeriesStroke(false);
        plot.setRenderer(renderer);
        gerarImg("Médias.jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarLineTest(String[][] dados, int width, int height) {
        DefaultCategoryDataset ds = new DefaultCategoryDataset();
        //converte rs para ds
        for (int i = 0; i < dados[0].length - 2; i++) {
            System.out.println(dados[0][i] + dados[2][i]);
            String[] spliter = dados[1][i].split("/");
            String[] spliter2 = spliter[2].split("");
            ds.addValue(Double.parseDouble(dados[0][i]), "Vendas", val.NumMeses(spliter[1]) + spliter2[2] + spliter2[3]);
            ds.addValue(Double.parseDouble(dados[2][i]), "Despesas", val.NumMeses(spliter[1]) + spliter2[2] + spliter2[3]);
        }
        //Cria e define as caracteristicas do Gráfico
        JFreeChart chart = ChartFactory.createLineChart("", "Datas", "Reais", ds, PlotOrientation.VERTICAL, true, true, false);
        CategoryPlot plot = chart.getCategoryPlot();
        plot.setBackgroundPaint(Color.white);//necessário
        plot.setRangeGridlinePaint(Color.BLACK);
        plot.setRangeGridlinesVisible(true);
//          plot.setOutlinePaint(Color.white);
        TextTitle title = new TextTitle("Vendas e despesas", new Font("Code Bold", Font.PLAIN, 24), new Color(0x555555), RectangleEdge.TOP, HorizontalAlignment.CENTER, VerticalAlignment.CENTER, RectangleInsets.ZERO_INSETS);
        chart.setTitle(title);
        LineAndShapeRenderer renderer = new LineAndShapeRenderer();
        renderer.setBaseStroke(new BasicStroke(2.0f));
        renderer.setAutoPopulateSeriesStroke(false);
        renderer.setSeriesPaint(1, new Color(0xed462f));
        renderer.setSeriesPaint(0, new Color(0x54ae0a));
        plot.setRenderer(renderer);
        //salva o gráfico em um arquivo
        gerarImg("Vendas e Despesas.jpg", chart, width, height);
        return icon;
    }

    public ImageIcon gerarImg(String nome, JFreeChart chart, int width, int height) {//gera o arquivo imagem para o gráfico
        try {
            System.out.println("gerar img");
            ChartUtilities.saveChartAsJPEG(new java.io.File(System.getProperty("user.dir") + nome), chart, width, height);
            BufferedImage img = ImageIO.read(new File(System.getProperty("user.dir") + nome));
            icon = new ImageIcon(img);
        } catch (IOException ex) {
            System.out.println(ex);
        }
        return icon;
    }
}
