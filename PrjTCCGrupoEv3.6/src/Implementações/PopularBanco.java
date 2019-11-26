/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Implementações;

/**
 *
 * @author MSI Gamer
 */
public class PopularBanco extends javax.swing.JFrame {

    /**
     * Creates new form PopularBanco
     */
    public PopularBanco() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        txt1 = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButton1.setText("jButton1");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(45, 45, 45)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(txt1))
                .addContainerGap(282, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(66, 66, 66)
                .addComponent(txt1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 127, Short.MAX_VALUE)
                .addComponent(jButton1)
                .addGap(64, 64, 64))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        popularAbertura(Integer.parseInt(txt1.getText()));
    }//GEN-LAST:event_jButton1ActionPerformed

    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(PopularBanco.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(PopularBanco.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(PopularBanco.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(PopularBanco.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new PopularBanco().setVisible(true);
            }
        });
    }
    String[] d1 = {"Ederson Gonzaga", "Gabriel Gameiro", "Gustavo Honda", "Jean-Luc Bonnet", "Leonardo Teixeira", "Nicolas Castro", "Rafael Hadzic"};
    String[] d2 = {"Mercedes", "Chevrolet", "Honda", "Volkswagen", "Ford", "Audi", "Citroen"};
    String[] d3 = {"Onix", "HB20", "Ka", "Prisma", "Kwid", "Gol", "Argo"};
    String[] d4 = {"Azul", "Cinza", "Branco", "Preto", "Prata", "Vermelho", "Vinho"};
    String[] d5 = {"Placa esta à cair", "Sem um parafuso direita atraz", "Tudo certo", "Retrovisor quebrado", "Vidro trincado", "Escapamento com defeito", "rádio imbutido"};
    String[] d6 = {"Son Goku", "Robson Santos Onix", "Maria Lúcia Mustang", "Nair e Analu Pizzaria Ltda", "Elisa e Rita Entregas Expressas ME", "Allana Bruna Santos", "Felipe e Martin Marketing Ltda"};
    String[] d7 = {"Peça parcialmente danificada", "Peças totalmente danificada", "Não danificado", " Não avaliado", "Multiplas peças danificadas parcialmente", "Multiplas peças danificadas totalmente", "Não autorizado"};

    public void popularFechamento(int qtde) {
        String padron = "(var1, var2, var3, 'var4', 'var5', 'var6', 'var7', 'var8', 'var9', 'var01', 'var02', 'PIE-var03',var04, 'var05', 'var06', var07 ,'var08', 'var09', 'var001', 'var002', 'var003', 'var004'),";

        for (int i = 0; i < qtde; i++) {
            int m = (int) (Math.random() * 11) + 1;
            int d = (int) (Math.random() * 27) + 1;
            int km = (int) (Math.random() * 100) * 1000;
            System.out.println(padron
                    .replace("var1", (i + 1) + "")
                    .replace("var2", i % 7 + 1 + "")
                    .replace("var3", i % 7 + 1 + "")
                    .replace("var4", "Rua" + i % 7 + 1)
                    .replace("var5", d1[(int) (Math.random() * 7)])
                    .replace("var6", (int) (Math.random() * 10000) + "")
                    .replace("var7", (d < 10 ? "0" + d : d) + "/" + (m < 10 ? "0" + m : m) + "/201" + (int) (Math.random() * 5 + 4))
                    .replace("var8", d2[(int) (Math.random() * 7)])
                    .replace("var9", d3[(int) (Math.random() * 7)])
                    .replace("var01", d4[(int) (Math.random() * 7)])
                    .replace("var02", "200" + (int) (Math.random() * 5))
                    .replace("var03", "" + (int) (Math.random() * 1000))
                    .replace("var04", km + "")
                    .replace("var05", (int) (Math.random() * 23 + 1) + ":" + (int) (Math.random() * 59 + 1))
                    .replace("var06", d5[(int) (Math.random() * 7)])
                    .replace("var07", (km + (int) (Math.random() * 9 + 1) * 10) + "")
                    .replace("var08", (int) (Math.random() * 23 + 1) + ":" + (int) (Math.random() * 59 + 1))
                    .replace("var09", (int) (Math.random() * 23 + 1) + ":" + (int) (Math.random() * 59 + 1))
                    .replace("var001", (int) (Math.random() * 23 + 1) + ":" + (int) (Math.random() * 59 + 1))
                    .replace("var002", d6[(int) (Math.random() * 7)])
                    .replace("var003", d7[(int) (Math.random() * 7)])
                    .replace("var004", ((int) (Math.random() * 2)) == 1 ? "sim" : "não")
            );
        }
    }

    public void popularAbertura(int qtde) {
        String padron = "(var1, var2, var3, 'var4', 'var5', 'var6', 'var7', 'var8', 'var9', 'var01', 'var02', 'PIE-var03',var04, 'var05', 'var06'),";

        for (int i = 0; i < qtde; i++) {
            int m = (int) (Math.random() * 11) + 1;
            int d = (int) (Math.random() * 27) + 1;
            int km = (int) (Math.random() * 100) * 1000;
            int h  = (int) (Math.random() * 23 + 1);
            int min = (int) (Math.random() * 59 + 1);
            System.out.println(padron
                    .replace("var1", (i + 1) + "")
                    .replace("var2", i % 7 + 1 + "")
                    .replace("var3", i % 7 + 1 + "")
                    .replace("var4", "Rua" + i % 7 + 1)
                    .replace("var5", d1[(int) (Math.random() * 7)])
                    .replace("var6", (int) (Math.random() * 10000) + "")
                    .replace("var7", (d < 10 ? "0" + d : d) + "/" + (m < 10 ? "0" + m : m) + "/201" + (int) (Math.random() * 5 + 4))
                    .replace("var8", d2[(int) (Math.random() * 7)])
                    .replace("var9", d3[(int) (Math.random() * 7)])
                    .replace("var01", d4[(int) (Math.random() * 7)])
                    .replace("var02", "200" + (int) (Math.random() * 5))
                    .replace("var03", "" + (int) (Math.random() * 1000))
                    .replace("var04", km + "")
                    .replace("var05", ( h < 10 ? "0" + h : h) + ":" + ( min < 10 ? "0" + min : min))
                    .replace("var06", d5[(int) (Math.random() * 7)])
            );
        }

    }

    public void popularFuncAb(int qtde) {
        String padron = "(var1, var2, var3),";

        for (int i = 0; i < qtde; i++) {
            int m = (int) (Math.random() * 11) + 1;
            int d = (int) (Math.random() * 27) + 1;
            int km = (int) (Math.random() * 100) * 1000;
            System.out.println(padron
                    .replace("var1", (i + 1) + "")
                    .replace("var2", i % 31 + 1 + "")
                    .replace("var3", i % 7 + 1 + "")
            );

        }
    }
    public void popularAdicAbert(int qtde) {
        String padron = "(var1, var2, var3),";

        for (int i = 0; i < qtde; i++) {
            int m = (int) (Math.random() * 11) + 1;
            int d = (int) (Math.random() * 27) + 1;
            int km = (int) (Math.random() * 100) * 1000;
            System.out.println(padron
                    .replace("var1", (i + 1) + "")
                    .replace("var2", i % 3 + 1 + "")
                    .replace("var3", i % 31 + 1 + "")
            );

        }
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JTextField txt1;
    // End of variables declaration//GEN-END:variables
}
