
import java.awt.Color;
import java.awt.Font;
import java.text.DecimalFormat;
import org.jfree.chart.block.BlockBorder;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.PieSectionLabelGenerator;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PieLabelLinkStyle;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.StandardBarPainter;
import org.jfree.chart.title.LegendTitle;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.ui.RectangleEdge;
import org.jfree.ui.TextAnchor;

public class PropGraficos {

    public Color[] cor = {//cores aleatórias para gráficos
        new Color(0xE5F9E0),
        new Color(0xA3F7B5),
        new Color(0x40C9A2),
        new Color(0x01295F),
        new Color(0x437F97),
        new Color(0x0d61b5),
        new Color(0xFFB30F),
        new Color(0xFD151B),
        new Color(0xBB0A21),
        new Color(0x6EEB83),
        new Color(0xFF5714),
        new Color(0xCBBAED)
    };
    public Color[] cor2 = {//Cores para piecharts
        new Color(0x8ec3a7),
        new Color(0xab91c5),
        new Color(0x5fb7e5),
        new Color(0xf0cb69),
        new Color(0xdc5356),
        new Color(0x833d4d),
        new Color(0xa0a1a0)
    };

    public void BarLegend(LegendTitle legend) {//gera a legenda do gráfico
        legend.setPosition(RectangleEdge.BOTTOM);//deixa no canto de baixo da tela
        legend.setItemFont(new Font("Microsoft Sans Serif", Font.CENTER_BASELINE, 15));//altera a fonte 
        legend.setBorder(BlockBorder.NONE);//tira a borda da legenda
    }

    public void BarRenderer(BarRenderer renderer, DefaultCategoryDataset ds) {
        for (int i = 0; i < cor.length; i++) {//coloca as cores nas barras
            renderer.setSeriesPaint(i, cor[i]);
        }
        //coloca o valor na ponta das barras
        renderer.setBaseItemLabelsVisible(true);
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
        //
        //label com valores
        //
        for (int x = 0; x < ds.getRowCount(); x++) {
            renderer.setSeriesItemLabelFont(x, new Font("Microsoft Sans Serif", Font.PLAIN, 12));
            renderer.setSeriesPositiveItemLabelPosition(x, new ItemLabelPosition(ItemLabelAnchor.OUTSIDE12, TextAnchor.BASELINE_CENTER, TextAnchor.BASELINE_CENTER, 0));
        }
    }

    public void BarPlot(CategoryPlot plot) {
        plot.setBackgroundPaint(new Color(0xFFFFFF));//altera o fundo do Gráfico
        plot.setDomainGridlinesVisible(false);//deixa as linhas de referencia visiveis
        plot.setOutlinePaint(new Color(0x555555));//pinta a borda de outra cor 
        plot.setRangeGridlinePaint(Color.black);//pinta as linhas de referencia de outra cor
        ((BarRenderer) plot.getRenderer()).setBarPainter(new StandardBarPainter());//muda a aparencia das barras IMPORTANTE
    }

    public void InvertedBarRenderer(BarRenderer renderer, DefaultCategoryDataset ds) {
        for (int i = 0; i < cor.length; i++) {
            renderer.setSeriesPaint(i, cor[i]);
        }
        renderer.setBaseItemLabelsVisible(true);
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
        //
        //label com valores
        //
        for (int x = 0; x < ds.getRowCount(); x++) {
            renderer.setSeriesItemLabelFont(x, new Font("Microsoft Sans Serif", Font.PLAIN, 12));
            renderer.setSeriesPositiveItemLabelPosition(x, new ItemLabelPosition(ItemLabelAnchor.OUTSIDE3, TextAnchor.BASELINE_CENTER, TextAnchor.BASELINE_CENTER, 0));
        }
    }

    public void Areaplot(CategoryPlot plot) {

        plot.setBackgroundPaint(new Color(0xFFFFFF));
        plot.setDomainGridlinePaint(Color.black);
        plot.setRangeGridlinePaint(Color.black);
        plot.setDomainGridlinesVisible(true);
        plot.setOutlinePaint(new Color(0x555555));
    }

    public void PieLegend(LegendTitle legend) {
        legend.setPosition(RectangleEdge.RIGHT);
        legend.setItemFont(new Font("Microsoft Sans Serif", Font.CENTER_BASELINE, 15));
        legend.setBorder(BlockBorder.NONE);
    }

    public void PiePlot(PiePlot plot) {
        plot.setBackgroundPaint(Color.white);
        plot.setShadowPaint(Color.white);//tira a sombra da pizza
        plot.setOutlineVisible(false);
        plot.setLabelLinksVisible(true);//deixa visivel os links entre as labels e as porcentagens
        plot.setLabelLinkStyle(PieLabelLinkStyle.QUAD_CURVE);//deixa os links quadriculares
        plot.setLabelBackgroundPaint(Color.white);
        plot.setLabelOutlinePaint(Color.WHITE);
        for (int i = 0; i < cor2.length; i++) {
            plot.setSectionPaint(i, cor2[i]);
            plot.setLabelLinkPaint(cor2[i]);
        }
        plot.setLabelShadowPaint(Color.white);
        PieSectionLabelGenerator labelGenerator = new StandardPieSectionLabelGenerator("{2}", new DecimalFormat("0"), new DecimalFormat("0%"));//exibe o valor da porcentagem que cada fatia 
        plot.setLabelGenerator(labelGenerator);

    }
}
