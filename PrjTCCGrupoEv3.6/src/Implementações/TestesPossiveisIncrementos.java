/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Implementações;

import javax.swing.JOptionPane;

/**
 *
 * @author MSI Gamer
 */
public class TestesPossiveisIncrementos extends javax.swing.JFrame {

    /**
     * Creates new form Testes
     */
    public TestesPossiveisIncrementos() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txt1 = new javax.swing.JTextField();
        txt2 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        txt1.setText("01/12/2015");

        txt2.setText("01/12/2016");

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
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txt2, javax.swing.GroupLayout.DEFAULT_SIZE, 124, Short.MAX_VALUE)
                    .addComponent(txt1))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGap(83, 83, 83)
                .addComponent(jButton1)
                .addContainerGap(647, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(72, 72, 72)
                .addComponent(txt1, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(txt2, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 292, Short.MAX_VALUE)
                .addComponent(jButton1)
                .addGap(42, 42, 42))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        Meses(txt1.getText(), txt2.getText());
    }//GEN-LAST:event_jButton1ActionPerformed

    public String[] Meses(String In, String Fim) {//divide os meses do periodo escolhido
        System.out.println(In + Fim);
        String[] datas;
        String[] In1 = In.split("/");
        String[] Fim1 = Fim.split("/");
        if (Integer.parseInt(In1[1]) > 12 || Integer.parseInt(Fim1[1]) > 12) {
            JOptionPane.showMessageDialog(null,"Digite os meses entre 1 até 12");
            return null;
        }
        if (Integer.parseInt(In1[2]) < 1946 || Integer.parseInt(Fim1[2]) > 3000) {
            JOptionPane.showMessageDialog(null,"A internet foi criada em 1946 e esta aplicação não vai ultrapassar o ano 3000");
            return null;
        }
        if (In1 == Fim1) {
            JOptionPane.showMessageDialog(null,"Digite datas Diferentes");
            return null;
        }
        int anos;
        int meses;
        if ((Integer.parseInt(Fim1[2]) != Integer.parseInt(In1[2]))) {
            anos = Integer.parseInt(Fim1[2]) - Integer.parseInt(In1[2]);
            meses = 12 + Integer.parseInt(Fim1[1]) - Integer.parseInt(In1[1]);
            meses = anos * 12 + meses - 12;
        } else {
            meses = Integer.parseInt(Fim1[1]) + 12 - Integer.parseInt(In1[1]);
            anos = meses / 12;
            System.out.println("ababa");
        }
        System.out.println("Count de Meses :" + meses + "Count de anos  :" + anos);
        if (meses < 15) {
            datas = new String[meses + 2];
            datas[0] = In;
            int count;
            for (int i = 0; i < meses; i++) {
                count = Integer.parseInt(In1[1]) + i;
                int m = count % 12;
                int n = count / 12;
                if (m + 1 < 10) {
                    datas[i + 1] = "01/0" + (m + 1) + "/" + (n + Integer.parseInt(In1[2]));
                } else {
                    datas[i + 1] = "01/" + (m + 1) + "/" + (n + Integer.parseInt(In1[2]));
                }
            }
            datas[meses + 1] = Fim;
            for (int i = 0; i < meses + 2; i++) {
                System.out.println(datas[i]);
            }
        }
        else
        {
           datas = new String[anos + 2];
            datas[0] = In;
            int count;
            for (int i = 0; i < anos; i++) {
                count = Integer.parseInt(In1[1]) + i;
                datas[i + 1] = "01/01/" + ( Integer.parseInt(In1[2])+i+1)  ;
            }
            datas[anos + 1] = Fim;
            for (int i = 0; i < anos + 2; i++) {
                System.out.println(datas[i]);
            }
        }
        return Integer.parseInt(Fim1[2]) >= Integer.parseInt(In1[2]) ? datas : Integer.parseInt(Fim1[1]) >= Integer.parseInt(In1[1]) ? datas : Integer.parseInt(Fim1[0]) > Integer.parseInt(In1[0]) ? datas : null;
    }
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
            java.util.logging.Logger.getLogger(TestesPossiveisIncrementos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(TestesPossiveisIncrementos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(TestesPossiveisIncrementos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(TestesPossiveisIncrementos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new TestesPossiveisIncrementos().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JTextField txt1;
    private javax.swing.JTextField txt2;
    // End of variables declaration//GEN-END:variables
}
