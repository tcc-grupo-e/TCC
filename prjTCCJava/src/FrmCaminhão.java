
import java.awt.Color;
import java.awt.Component;
import java.awt.Font;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;

public class FrmCaminhão extends javax.swing.JFrame {

    public FrmCaminhão() {
        initComponents();
        setImages(20);
        tabela();
        //logo
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jFrame1 = new javax.swing.JFrame();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        lblLogo = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        btnSair = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        btnGhost = new javax.swing.JLabel();
        btnLogoff = new javax.swing.JLabel();
        btnVendas = new javax.swing.JLabel();
        btnDespesas = new javax.swing.JLabel();
        btnFuncionario = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        txtModelo = new javax.swing.JTextField();
        txtMarca = new javax.swing.JTextField();
        txtCor = new javax.swing.JTextField();
        txtPlaca = new javax.swing.JFormattedTextField();
        txtAno = new javax.swing.JTextField();
        txtKm = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabela = new javax.swing.JTable();
        cont1 = new javax.swing.JPanel();
        lbl1 = new javax.swing.JLabel();
        icon1 = new javax.swing.JLabel();
        cont2 = new javax.swing.JPanel();
        lbl2 = new javax.swing.JLabel();
        icon2 = new javax.swing.JLabel();
        cont4 = new javax.swing.JPanel();
        lbl4 = new javax.swing.JLabel();
        icon4 = new javax.swing.JLabel();
        cont3 = new javax.swing.JPanel();
        lbl3 = new javax.swing.JLabel();
        icon3 = new javax.swing.JLabel();
        btnAutoComplite = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();

        javax.swing.GroupLayout jFrame1Layout = new javax.swing.GroupLayout(jFrame1.getContentPane());
        jFrame1.getContentPane().setLayout(jFrame1Layout);
        jFrame1Layout.setHorizontalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jFrame1Layout.setVerticalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setIconImages(null);
        setMaximumSize(new java.awt.Dimension(1198, 597));
        setMinimumSize(new java.awt.Dimension(1198, 597));
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(1198, 597));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(2, 136, 209));
        jPanel1.setMaximumSize(new java.awt.Dimension(995, 92));
        jPanel1.setMinimumSize(new java.awt.Dimension(995, 92));
        jPanel1.setPreferredSize(new java.awt.Dimension(995, 92));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setMaximumSize(new java.awt.Dimension(213, 92));
        jPanel2.setMinimumSize(new java.awt.Dimension(213, 92));
        jPanel2.setPreferredSize(new java.awt.Dimension(213, 92));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblLogo.setBackground(new java.awt.Color(204, 204, 255));
        lblLogo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/LogoMenor.png"))); // NOI18N
        lblLogo.setOpaque(true);
        jPanel2.add(lblLogo, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, -1, -1));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, -1));

        jLabel8.setFont(new java.awt.Font("Century Gothic", 0, 32)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("AutoSocorro");
        jPanel1.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(610, 30, -1, -1));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1200, -1));

        jPanel3.setBackground(new java.awt.Color(2, 136, 209));
        jPanel3.setAlignmentX(0.0F);
        jPanel3.setAlignmentY(0.0F);
        jPanel3.setMaximumSize(new java.awt.Dimension(213, 505));
        jPanel3.setMinimumSize(new java.awt.Dimension(213, 505));
        jPanel3.setPreferredSize(new java.awt.Dimension(213, 505));
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnSair.setBackground(new java.awt.Color(2, 136, 209));
        btnSair.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnSair.setForeground(new java.awt.Color(255, 255, 255));
        btnSair.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnSair.setText("Sair");
        btnSair.setMaximumSize(new java.awt.Dimension(213, 48));
        btnSair.setMinimumSize(new java.awt.Dimension(213, 48));
        btnSair.setOpaque(true);
        btnSair.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnSairMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnSairMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnSairMouseExited(evt);
            }
        });
        jPanel3.add(btnSair, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 450, 213, 56));

        jLabel5.setBackground(new java.awt.Color(1, 87, 155));
        jLabel5.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("Caminhão");
        jLabel5.setMaximumSize(new java.awt.Dimension(213, 48));
        jLabel5.setMinimumSize(new java.awt.Dimension(213, 48));
        jLabel5.setOpaque(true);
        jLabel5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel5MouseClicked(evt);
            }
        });
        jPanel3.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, 60));

        btnGhost.setBackground(new java.awt.Color(255, 255, 255));
        btnGhost.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnGhost.setForeground(new java.awt.Color(255, 255, 255));
        btnGhost.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnGhost.setMaximumSize(new java.awt.Dimension(213, 48));
        btnGhost.setMinimumSize(new java.awt.Dimension(213, 48));
        btnGhost.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnGhostMouseClicked(evt);
            }
        });
        jPanel3.add(btnGhost, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 240, 210, 60));

        btnLogoff.setBackground(new java.awt.Color(2, 136, 209));
        btnLogoff.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnLogoff.setForeground(new java.awt.Color(255, 255, 255));
        btnLogoff.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnLogoff.setText("Logoff");
        btnLogoff.setMaximumSize(new java.awt.Dimension(213, 48));
        btnLogoff.setMinimumSize(new java.awt.Dimension(213, 48));
        btnLogoff.setOpaque(true);
        btnLogoff.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnLogoffMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnLogoffMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnLogoffMouseExited(evt);
            }
        });
        jPanel3.add(btnLogoff, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 390, 213, 56));

        btnVendas.setBackground(new java.awt.Color(2, 136, 209));
        btnVendas.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnVendas.setForeground(new java.awt.Color(255, 255, 255));
        btnVendas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnVendas.setText("Resultado das Vendas");
        btnVendas.setMaximumSize(new java.awt.Dimension(213, 48));
        btnVendas.setMinimumSize(new java.awt.Dimension(213, 48));
        btnVendas.setOpaque(true);
        btnVendas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnVendasMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnVendasMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnVendasMouseExited(evt);
            }
        });
        jPanel3.add(btnVendas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 60, 210, 60));

        btnDespesas.setBackground(new java.awt.Color(2, 136, 209));
        btnDespesas.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnDespesas.setForeground(new java.awt.Color(255, 255, 255));
        btnDespesas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnDespesas.setText("Resultado das Despesas");
        btnDespesas.setMaximumSize(new java.awt.Dimension(213, 48));
        btnDespesas.setMinimumSize(new java.awt.Dimension(213, 48));
        btnDespesas.setOpaque(true);
        btnDespesas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnDespesasMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnDespesasMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnDespesasMouseExited(evt);
            }
        });
        jPanel3.add(btnDespesas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 120, 210, 60));

        btnFuncionario.setBackground(new java.awt.Color(2, 136, 209));
        btnFuncionario.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnFuncionario.setForeground(new java.awt.Color(255, 255, 255));
        btnFuncionario.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnFuncionario.setText("Desempenho dos Funcionários");
        btnFuncionario.setMaximumSize(new java.awt.Dimension(213, 48));
        btnFuncionario.setMinimumSize(new java.awt.Dimension(213, 48));
        btnFuncionario.setOpaque(true);
        btnFuncionario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnFuncionarioMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnFuncionarioMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnFuncionarioMouseExited(evt);
            }
        });
        jPanel3.add(btnFuncionario, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 180, 210, 60));

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 90, 210, 510));

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txtModelo.setText("Modelo");
        jPanel4.add(txtModelo, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 80, 170, 30));

        txtMarca.setText("Marca");
        jPanel4.add(txtMarca, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 20, 170, 30));

        txtCor.setText("Cor");
        jPanel4.add(txtCor, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 160, 170, 30));

        try {
            txtPlaca.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("???-####")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        jPanel4.add(txtPlaca, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 220, 170, 30));

        txtAno.setText("ano");
        jPanel4.add(txtAno, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 290, 170, 30));

        txtKm.setText("Kilometros Rodados");
        jPanel4.add(txtKm, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 350, 170, 30));

        tabela.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {}
            },
            new String [] {

            }
        ));
        tabela.setDragEnabled(true);
        tabela.setOpaque(false);
        jScrollPane1.setViewportView(tabela);

        jPanel4.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 30, 660, 280));

        cont1.setBackground(new java.awt.Color(2, 136, 209));
        cont1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbl1.setBackground(new java.awt.Color(2, 136, 209));
        lbl1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lbl1.setForeground(java.awt.Color.white);
        lbl1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl1.setText("Consultar");
        lbl1.setOpaque(true);
        lbl1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl1MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lbl1MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lbl1MouseExited(evt);
            }
        });
        cont1.add(lbl1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 10, 70, 20));

        icon1.setBackground(new java.awt.Color(0, 0, 0));
        icon1.setText("   ");
        cont1.add(icon1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 13, 20, 20));

        jPanel4.add(cont1, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 330, 150, 48));

        cont2.setBackground(new java.awt.Color(2, 136, 209));
        cont2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbl2.setBackground(new java.awt.Color(2, 136, 209));
        lbl2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lbl2.setForeground(java.awt.Color.white);
        lbl2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl2.setText("Inserir");
        lbl2.setOpaque(true);
        lbl2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl2MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lbl2MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lbl2MouseExited(evt);
            }
        });
        cont2.add(lbl2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 10, 70, 20));

        icon2.setBackground(new java.awt.Color(0, 0, 0));
        icon2.setText("   ");
        cont2.add(icon2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 20, 20));

        jPanel4.add(cont2, new org.netbeans.lib.awtextra.AbsoluteConstraints(460, 330, 150, 48));

        cont4.setBackground(new java.awt.Color(2, 136, 209));
        cont4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbl4.setBackground(new java.awt.Color(2, 136, 209));
        lbl4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lbl4.setForeground(java.awt.Color.white);
        lbl4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl4.setText("Excluir");
        lbl4.setOpaque(true);
        lbl4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl4MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lbl4MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lbl4MouseExited(evt);
            }
        });
        cont4.add(lbl4, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 10, 70, 20));

        icon4.setBackground(new java.awt.Color(0, 0, 0));
        icon4.setText("   ");
        cont4.add(icon4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 20, 20));

        jPanel4.add(cont4, new org.netbeans.lib.awtextra.AbsoluteConstraints(800, 330, 150, 48));

        cont3.setBackground(new java.awt.Color(2, 136, 209));
        cont3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbl3.setBackground(new java.awt.Color(2, 136, 209));
        lbl3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lbl3.setForeground(java.awt.Color.white);
        lbl3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl3.setText("Alterar");
        lbl3.setOpaque(true);
        lbl3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl3MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lbl3MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lbl3MouseExited(evt);
            }
        });
        cont3.add(lbl3, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 10, 70, 20));

        icon3.setBackground(new java.awt.Color(0, 0, 0));
        icon3.setText("   ");
        cont3.add(icon3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 20, 20));

        jPanel4.add(cont3, new org.netbeans.lib.awtextra.AbsoluteConstraints(630, 330, 150, 48));

        getContentPane().add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 180, 990, 420));

        btnAutoComplite.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnAutoCompliteMouseClicked(evt);
            }
        });
        getContentPane().add(btnAutoComplite, new org.netbeans.lib.awtextra.AbsoluteConstraints(540, 90, 300, 90));

        jLabel9.setBackground(new java.awt.Color(255, 255, 255));
        jLabel9.setFont(new java.awt.Font("Century Gothic", 0, 28)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Caminhão");
        jLabel9.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(204, 204, 204)));
        jLabel9.setOpaque(true);
        getContentPane().add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 90, 1000, 90));

        setSize(new java.awt.Dimension(1198, 597));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents
    //Declarando Objetos de outros forms
    ClasseConexao clas = new ClasseConexao();
    FrmDesempenhoFuncionários func;
    FrmGráficoDespesas desp;
    FrmGráficoVendas vend;
    Valida val = new Valida();
    //Variaveis Usadas
    public String sql;
    public ResultSet rs;
    public DefaultTableModel modTabela;
    private void btnAutoCompliteMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnAutoCompliteMouseClicked
        txtPlaca.setText("FDS5904");//Botão para inserir os dados na apresentação 
        txtModelo.setText("Fusca");
        txtCor.setText("Azul");
        txtKm.setText("000.0");
        txtAno.setText("1900");
        txtMarca.setText("Volkswagen");
    }//GEN-LAST:event_btnAutoCompliteMouseClicked

    private void jLabel5MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel5MouseClicked
        FrmGráficoVendas frm = new FrmGráficoVendas();
        frm.show();
        this.hide();
    }//GEN-LAST:event_jLabel5MouseClicked

    private void btnVendasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnVendasMouseClicked
        vend = new FrmGráficoVendas();
        vend.show();
        this.hide();
    }//GEN-LAST:event_btnVendasMouseClicked

    private void btnDespesasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnDespesasMouseClicked
        desp = new FrmGráficoDespesas();
        desp.show();
        this.hide();
    }//GEN-LAST:event_btnDespesasMouseClicked

    private void btnFuncionarioMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFuncionarioMouseClicked
        func = new FrmDesempenhoFuncionários();
        func.show();
        this.hide();
    }//GEN-LAST:event_btnFuncionarioMouseClicked

    private void btnVendasMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnVendasMouseEntered
        btnVendas.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnVendasMouseEntered

    private void btnVendasMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnVendasMouseExited
        btnVendas.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnVendasMouseExited

    private void btnDespesasMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnDespesasMouseEntered
        btnDespesas.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnDespesasMouseEntered

    private void btnDespesasMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnDespesasMouseExited
        btnDespesas.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnDespesasMouseExited

    private void btnFuncionarioMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFuncionarioMouseEntered
        btnFuncionario.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnFuncionarioMouseEntered

    private void btnFuncionarioMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFuncionarioMouseExited
        btnFuncionario.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnFuncionarioMouseExited

    private void btnLogoffMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogoffMouseClicked
        this.hide();
        FrmLogin log = new FrmLogin();
        log.show();
    }//GEN-LAST:event_btnLogoffMouseClicked

    private void btnLogoffMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogoffMouseEntered
        btnLogoff.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnLogoffMouseEntered

    private void btnLogoffMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogoffMouseExited
        btnLogoff.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnLogoffMouseExited

    private void btnSairMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseClicked
        System.exit(0);
    }//GEN-LAST:event_btnSairMouseClicked

    private void btnSairMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseEntered
        btnSair.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnSairMouseEntered

    private void btnSairMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseExited
        btnSair.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnSairMouseExited

    private void btnGhostMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnGhostMouseClicked
        txtMarca.setText("Honda");//Botão para inserir os dados na apresentação 
        txtModelo.setText("9090");
        txtCor.setText("prata");
        txtPlaca.setText("AAA-1234");
        txtAno.setText("2000");
        txtKm.setText("120000");
    }//GEN-LAST:event_btnGhostMouseClicked

    private void lbl1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl1MouseClicked
        Consulta();
    }//GEN-LAST:event_lbl1MouseClicked

    private void lbl1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl1MouseEntered
        cont1.setBackground(new Color(2, 119, 189));
        lbl1.setBackground(new Color(2, 119, 189));

    }//GEN-LAST:event_lbl1MouseEntered

    private void lbl1MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl1MouseExited
        cont1.setBackground(new Color(2, 136, 209));
        lbl1.setBackground(new Color(2, 136, 209));
    }//GEN-LAST:event_lbl1MouseExited

    private void lbl2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl2MouseClicked
        Inserir();
    }//GEN-LAST:event_lbl2MouseClicked

    private void lbl2MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl2MouseEntered
        cont2.setBackground(new Color(2, 119, 189));
        lbl2.setBackground(new Color(2, 119, 189));
    }//GEN-LAST:event_lbl2MouseEntered

    private void lbl2MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl2MouseExited
        cont2.setBackground(new Color(2, 136, 209));
        lbl2.setBackground(new Color(2, 136, 209));
    }//GEN-LAST:event_lbl2MouseExited

    private void lbl3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl3MouseClicked
        Alterar();
    }//GEN-LAST:event_lbl3MouseClicked

    private void lbl3MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl3MouseEntered
        cont3.setBackground(new Color(2, 119, 189));
        lbl3.setBackground(new Color(2, 119, 189));
    }//GEN-LAST:event_lbl3MouseEntered

    private void lbl3MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl3MouseExited
        cont3.setBackground(new Color(2, 136, 209));
        lbl3.setBackground(new Color(2, 136, 209));
    }//GEN-LAST:event_lbl3MouseExited

    private void lbl4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl4MouseClicked
        Excluir();
    }//GEN-LAST:event_lbl4MouseClicked

    private void lbl4MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl4MouseEntered
        cont4.setBackground(new Color(2, 119, 189));
        lbl4.setBackground(new Color(2, 119, 189));
    }//GEN-LAST:event_lbl4MouseEntered

    private void lbl4MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl4MouseExited
        cont4.setBackground(new Color(2, 136, 209));
        lbl4.setBackground(new Color(2, 136, 209));
    }//GEN-LAST:event_lbl4MouseExited

    public void tabela() {//estabelece os valores das colunas da tabela
        String[] colunasTabela = new String[]{"ID_Caminhao", "Marca", "Modelo", "Cor", "Placa", "Ano", "KM_Rodados"};
        modTabela = new DefaultTableModel(null, colunasTabela);
        tabela.getTableHeader().setReorderingAllowed(false);
        tabela.setModel(modTabela);
        tabela.setFont(new Font("Tahoma", Font.PLAIN, 12));
        JTableHeader header = tabela.getTableHeader();
        header.setBackground(Color.pink);//continuar
        header.setForeground(Color.black);
        tabela.setDefaultRenderer(Object.class, new DefaultTableCellRenderer() {
            @Override
            public Component getTableCellRendererComponent(JTable tabela, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
                final Component c = super.getTableCellRendererComponent(tabela, value, isSelected, hasFocus, row, column);
                c.setBackground(row % 2 == 0 ? new java.awt.Color(241,241,241) : new java.awt.Color(255,255,255) );
                return c;
            }
        });
    }

    public void Consulta() {
        //consulta
        modTabela.setRowCount(0);
        sql = "select * from Caminhao";
        try {//
            clas.getConexao();
            rs = clas.smt.executeQuery(sql);
            if (rs != null) {
                while (rs.next()) {
                    modTabela.addRow(new String[]{
                        rs.getString("ID_Caminhao"),
                        rs.getString("Marca"),
                        rs.getString("Modelo"),
                        rs.getString("Cor"),
                        rs.getString("Placa"),
                        rs.getString("Ano"),
                        rs.getString("KM_Rodados")});
                }
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void Inserir() {
        //inserção
        sql = "exec usp_InserirCaminhao  '" + txtMarca.getText() + "' , '" + txtModelo.getText() + "', '" + txtCor.getText() + "', '" + txtPlaca.getText() + "','" + txtAno.getText() + "','" + txtKm.getText() + "'";
        try {
            System.out.println(sql);
            clas.getConexao();
            clas.smt.executeUpdate(sql);
            JOptionPane.showMessageDialog(null, "Dados cadastrados no banco com sucesso !");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        Consulta();
    }

    public void Excluir() {
        //Excluir
        int row = tabela.getSelectedRow();
        String id = modTabela.getValueAt(row, 0).toString();
        sql = "exec usp_DeleteCaminhao '" + id + "'";
        try {
            System.out.println(sql);
            clas.getConexao();
            clas.smt.executeUpdate(sql);
            JOptionPane.showMessageDialog(null, "Dados excluidos do banco com sucesso !");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        Consulta();
    }

    public void Alterar() {
        //Alterar
        int row = tabela.getSelectedRow();
        String id = modTabela.getValueAt(row, 0).toString();
        sql = "exec usp_AlterarCaminhao '" + id + "' ,'" + txtMarca.getText() + "' , '" + txtModelo.getText() + "', '" + txtCor.getText() + "', '" + txtPlaca.getText() + "','" + txtAno.getText() + "','" + txtKm.getText() + "'";
        try {
            System.out.println(sql);
            clas.getConexao();
            clas.smt.executeUpdate(sql);
            JOptionPane.showMessageDialog(null, "Dados do banco Atualizados com sucesso !");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        Consulta();
    }

    public void setImages(int iconsize) {
        icon1.setIcon(val.resize(System.getProperty("user.dir") + "\\src\\img\\Lupa.png", iconsize, iconsize));
        icon2.setIcon(val.resize(System.getProperty("user.dir") + "\\src\\img\\Escrever.png", iconsize, iconsize));
        icon3.setIcon(val.resize(System.getProperty("user.dir") + "\\src\\img\\Pedido.png", iconsize, iconsize));
        icon4.setIcon(val.resize(System.getProperty("user.dir") + "\\src\\img\\Borracha.png", iconsize, iconsize));
    }

    /**
     * @param args the command line arguments
     */
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
            java.util.logging.Logger.getLogger(FrmCaminhão.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmCaminhão.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmCaminhão.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmCaminhão.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmCaminhão().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btnAutoComplite;
    private javax.swing.JLabel btnDespesas;
    private javax.swing.JLabel btnFuncionario;
    private javax.swing.JLabel btnGhost;
    private javax.swing.JLabel btnLogoff;
    private javax.swing.JLabel btnSair;
    private javax.swing.JLabel btnVendas;
    private javax.swing.JPanel cont1;
    private javax.swing.JPanel cont2;
    private javax.swing.JPanel cont3;
    private javax.swing.JPanel cont4;
    private javax.swing.JLabel icon1;
    private javax.swing.JLabel icon2;
    private javax.swing.JLabel icon3;
    private javax.swing.JLabel icon4;
    private javax.swing.JFrame jFrame1;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbl1;
    private javax.swing.JLabel lbl2;
    private javax.swing.JLabel lbl3;
    private javax.swing.JLabel lbl4;
    private javax.swing.JLabel lblLogo;
    private javax.swing.JTable tabela;
    private javax.swing.JTextField txtAno;
    private javax.swing.JTextField txtCor;
    private javax.swing.JTextField txtKm;
    private javax.swing.JTextField txtMarca;
    private javax.swing.JTextField txtModelo;
    private javax.swing.JFormattedTextField txtPlaca;
    // End of variables declaration//GEN-END:variables
}
