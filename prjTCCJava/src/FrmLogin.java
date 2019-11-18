
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class FrmLogin extends javax.swing.JFrame {

    public FrmLogin() {
        initComponents();

    }
    ClasseConexao clas = new ClasseConexao();
    private boolean autenticar;

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jToggleButton1 = new javax.swing.JToggleButton();
        pnTela = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        btnSair = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        btnEntrar = new javax.swing.JButton();
        txt2 = new javax.swing.JPasswordField();
        txt1 = new javax.swing.JTextField();

        jToggleButton1.setText("jToggleButton1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setAutoRequestFocus(false);
        setBackground(new java.awt.Color(255, 255, 255));
        setMaximumSize(new java.awt.Dimension(250, 300));
        setMinimumSize(new java.awt.Dimension(250, 300));
        setUndecorated(true);
        setResizable(false);
        setSize(new java.awt.Dimension(250, 300));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        pnTela.setBackground(new java.awt.Color(255, 255, 255));
        pnTela.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        pnTela.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setText("Login");
        pnTela.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 90, -1, 20));

        btnSair.setBackground(new java.awt.Color(255, 102, 102));
        btnSair.setForeground(new java.awt.Color(255, 255, 255));
        btnSair.setText("Sair");
        btnSair.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSairActionPerformed(evt);
            }
        });
        pnTela.add(btnSair, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 250, 150, -1));

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/LogoMenor ainda_2.png"))); // NOI18N
        jLabel2.setToolTipText("");
        jLabel2.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        jLabel2.setIconTextGap(0);
        jLabel2.setName(""); // NOI18N
        jLabel2.setOpaque(true);
        pnTela.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 10, -1, -1));

        jLabel3.setText("Senha");
        pnTela.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 150, -1, -1));

        btnEntrar.setBackground(new java.awt.Color(2, 119, 189));
        btnEntrar.setForeground(new java.awt.Color(255, 255, 255));
        btnEntrar.setText("Entrar");
        btnEntrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEntrarActionPerformed(evt);
            }
        });
        pnTela.add(btnEntrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 210, 150, -1));
        pnTela.add(txt2, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 110, 150, -1));

        txt1.setOpaque(false);
        pnTela.add(txt1, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 170, 150, -1));

        getContentPane().add(pnTela, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 250, 300));

        setSize(new java.awt.Dimension(250, 300));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents
    FrmGráficoVendas gf = new FrmGráficoVendas();
    private void btnSairActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSairActionPerformed
        System.exit(0);
    }//GEN-LAST:event_btnSairActionPerformed

    private void btnEntrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEntrarActionPerformed
        try {
            //login basico
            String sen = txt1.getText();
            String usu = txt2.getText();
            clas.getConexao();
            autenticar = clas.Logar(usu, sen);
            if (autenticar) {
                gf.setVisible(true);
                this.setVisible(false);
            } else {
                JOptionPane.showMessageDialog(null, "Senha ou Usuário invalidos");
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

    }//GEN-LAST:event_btnEntrarActionPerformed

    public static void main(String args[]) throws SQLException {

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
            java.util.logging.Logger.getLogger(FrmLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmLogin().setVisible(true);
            }
        });

    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnEntrar;
    private javax.swing.JButton btnSair;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JToggleButton jToggleButton1;
    private javax.swing.JPanel pnTela;
    private javax.swing.JTextField txt1;
    private javax.swing.JPasswordField txt2;
    // End of variables declaration//GEN-END:variables
}
