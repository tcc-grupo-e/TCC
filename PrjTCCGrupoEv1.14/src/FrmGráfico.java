import javax.swing.JFrame;
import org.jfree.chart.*;
import org.jfree.data.*;
import org.jfree.data.xy.*;

import java.awt.FlowLayout;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import org.jfree.data.general.DefaultPieDataset;




public class FrmGráfico extends javax.swing.JFrame {

    public FrmGráfico() {
        initComponents();
        grafic1();
        grafic2();
        
    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txt = new javax.swing.JLabel();
        lbl = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txt.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        txt.setOpaque(true);
        getContentPane().add(txt, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 220, 490, 290));

        lbl.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        lbl.setOpaque(true);
        getContentPane().add(lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 390, 190));

        pack();
    }// </editor-fold>//GEN-END:initComponents
    public void grafic1 ()
    {
    XYSeries series = new XYSeries("Linux Users");
	series.add(1995, 0.5);
	series.add(2000, 3.0);
	series.add(2010, 20.0);
	series.add(2020, 50.0);
	XYDataset dataset = new XYSeriesCollection(series);

	JFreeChart chart = ChartFactory.createXYAreaChart(
	     "Linux Users",
	     "Year",
	     "Millions",
	     dataset,
             org.jfree.chart.plot.PlotOrientation.VERTICAL,
	     true,
	     false,
             false);

	try {
	  ChartUtilities.saveChartAsJPEG(
          new java.io.File("TheFuture.jpg"), chart, 500, 300);
          
            BufferedImage img=ImageIO.read(new File("TheFuture.jpg"));
            ImageIcon icon=new ImageIcon(img);
            txt.setSize( 500, 300);
            txt.setIcon(icon);
            
            } catch (java.io.IOException exc) {
	    System.err.println("Error writing image to file");
	}
    }
     public void grafic2 ()
    {
        DefaultPieDataset pieDataset = new DefaultPieDataset();
       pieDataset.setValue("Red Hat", new Integer(33));
       pieDataset.setValue("Debian", new Integer(33));
       pieDataset.setValue("Suse", new Integer(33));

       JFreeChart chart = ChartFactory.createPieChart
                     ("Linux Market Share - Room for everyone!",
                      pieDataset,
                      true,
		      true,
		      true);
	try {
	  ChartUtilities.saveChartAsPNG(
          new java.io.File("Distros.png"), chart, 500, 300);
          BufferedImage img=ImageIO.read(new File("Distros.png"));
            ImageIcon icon=new ImageIcon(img);
            lbl.setSize( 500, 300);
            lbl.setIcon(icon);
	} catch (java.io.IOException exc) {
	    System.err.println("Error writing image to file");

	}
    }

   
    public static void main(String args[]) {
        
 
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmGráfico().setVisible(true);
            }
        });
       
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel lbl;
    private javax.swing.JLabel txt;
    // End of variables declaration//GEN-END:variables
}
