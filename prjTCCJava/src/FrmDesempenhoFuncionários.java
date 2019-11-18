
import java.sql.SQLException;
import javax.swing.ImageIcon;

public class FrmDesempenhoFuncionários extends javax.swing.JFrame {

    public FrmDesempenhoFuncionários() {
        initComponents();
        //centraliza o frame na tela do pc
        setLocationRelativeTo(null);
    }
    //Declarando Objetos de outros forms
    GerarGraficos ger = new GerarGraficos();
    ClasseConexao clas = new ClasseConexao();
    FrmGráficoVendas vend;
    FrmDesempenhoFuncionários func;
    FrmGráficoDespesas desp;
    FrmCaminhão cam;
    Valida val = new Valida();
    //Variaveis Usadas
    int vfator;
    int vgrafic;
    int vtime;
    String Inicio;
    String Fim;
    ImageIcon icon;
    String sql;
    //Textos para as ComboBox
    String[] Funcionario = {"Gráficos", "Porcentagem", "Ranking"};

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        lblLogo = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        lblGrafic = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        jLabel13 = new javax.swing.JLabel();
        cbTempo = new javax.swing.JComboBox<>();
        cbFatores = new javax.swing.JComboBox<>();
        cbGraficos = new javax.swing.JComboBox<>();
        btnGrafico = new javax.swing.JButton();
        btnArquivo = new javax.swing.JButton();
        txtInicio = new javax.swing.JFormattedTextField();
        txtFim = new javax.swing.JFormattedTextField();
        jPanel3 = new javax.swing.JPanel();
        btnSair = new javax.swing.JLabel();
        btnCaminhão = new javax.swing.JLabel();
        btnDesempenho = new javax.swing.JLabel();
        btnLogoff = new javax.swing.JLabel();
        btnResultVendas = new javax.swing.JLabel();
        btnResultDespesas = new javax.swing.JLabel();
        btnDesempenho1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocation(new java.awt.Point(50, 0));
        setUndecorated(true);
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

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1200, 90));

        jLabel9.setBackground(new java.awt.Color(255, 255, 255));
        jLabel9.setFont(new java.awt.Font("Century Gothic", 0, 28)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Desempenho dos Funcionários");
        jLabel9.setOpaque(true);
        getContentPane().add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 90, 990, 90));

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblGrafic.setBackground(new java.awt.Color(255, 255, 255));
        lblGrafic.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(221, 221, 221)));
        lblGrafic.setOpaque(true);
        jPanel4.add(lblGrafic, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 20, 680, 380));

        jPanel5.setBackground(new java.awt.Color(255, 255, 255));

        jLabel13.setFont(new java.awt.Font("Century Gothic", 0, 24)); // NOI18N
        jLabel13.setText("Detalhes do Gráfico ");

        cbTempo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Tempo", "Todos os dados", "Período Específico" }));
        cbTempo.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbTempoItemStateChanged(evt);
            }
        });

        cbFatores.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Fatores", "Motorista", "Atendente" }));
        cbFatores.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbFatoresItemStateChanged(evt);
            }
        });

        cbGraficos.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Gráficos" }));
        cbGraficos.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbGraficosItemStateChanged(evt);
            }
        });

        btnGrafico.setBackground(new java.awt.Color(1, 87, 155));
        btnGrafico.setForeground(new java.awt.Color(255, 255, 255));
        btnGrafico.setText("Gerar Gráfico");
        btnGrafico.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnGraficoMouseClicked(evt);
            }
        });

        btnArquivo.setBackground(new java.awt.Color(1, 87, 155));
        btnArquivo.setForeground(new java.awt.Color(255, 255, 255));
        btnArquivo.setText("Gerar Arquivo");
        btnArquivo.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnArquivoMouseClicked(evt);
            }
        });

        try {
            txtInicio.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("##/##/####")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        txtInicio.setEnabled(false);
        txtInicio.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtInicioKeyPressed(evt);
            }
        });

        try {
            txtFim.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("##/##/####")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        txtFim.setEnabled(false);
        txtFim.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtFimKeyPressed(evt);
            }
        });

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel13))
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(txtInicio)
                                .addComponent(btnArquivo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(btnGrafico, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(txtFim, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(cbTempo, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(cbFatores, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(cbGraficos, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(12, Short.MAX_VALUE))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addComponent(jLabel13)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 65, Short.MAX_VALUE)
                .addComponent(cbTempo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(cbFatores, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(cbGraficos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtInicio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtFim, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(17, 17, 17)
                .addComponent(btnGrafico)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnArquivo))
        );

        jPanel4.add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 30, 270, 350));

        getContentPane().add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 180, 990, 420));

        jPanel3.setBackground(new java.awt.Color(2, 136, 209));
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

        btnCaminhão.setBackground(new java.awt.Color(2, 136, 209));
        btnCaminhão.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnCaminhão.setForeground(new java.awt.Color(255, 255, 255));
        btnCaminhão.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnCaminhão.setText("Caminhão");
        btnCaminhão.setMaximumSize(new java.awt.Dimension(213, 48));
        btnCaminhão.setMinimumSize(new java.awt.Dimension(213, 48));
        btnCaminhão.setOpaque(true);
        btnCaminhão.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnCaminhãoMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnCaminhãoMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnCaminhãoMouseExited(evt);
            }
        });
        jPanel3.add(btnCaminhão, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, 60));

        btnDesempenho.setBackground(new java.awt.Color(1, 87, 155));
        btnDesempenho.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnDesempenho.setForeground(new java.awt.Color(255, 255, 255));
        btnDesempenho.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnDesempenho.setText("Desempenho dos Funcionários");
        btnDesempenho.setMaximumSize(new java.awt.Dimension(213, 48));
        btnDesempenho.setMinimumSize(new java.awt.Dimension(213, 48));
        btnDesempenho.setOpaque(true);
        jPanel3.add(btnDesempenho, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 180, 210, 60));

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
        jPanel3.add(btnLogoff, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 390, 213, 60));

        btnResultVendas.setBackground(new java.awt.Color(2, 136, 209));
        btnResultVendas.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnResultVendas.setForeground(new java.awt.Color(255, 255, 255));
        btnResultVendas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnResultVendas.setText("Resultado das Vendas");
        btnResultVendas.setMaximumSize(new java.awt.Dimension(213, 48));
        btnResultVendas.setMinimumSize(new java.awt.Dimension(213, 48));
        btnResultVendas.setOpaque(true);
        btnResultVendas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnResultVendasMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnResultVendasMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnResultVendasMouseExited(evt);
            }
        });
        jPanel3.add(btnResultVendas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 60, 210, 60));

        btnResultDespesas.setBackground(new java.awt.Color(2, 136, 209));
        btnResultDespesas.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnResultDespesas.setForeground(new java.awt.Color(255, 255, 255));
        btnResultDespesas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnResultDespesas.setText("Resultado das Despesas");
        btnResultDespesas.setMaximumSize(new java.awt.Dimension(213, 48));
        btnResultDespesas.setMinimumSize(new java.awt.Dimension(213, 48));
        btnResultDespesas.setOpaque(true);
        btnResultDespesas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnResultDespesasMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnResultDespesasMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnResultDespesasMouseExited(evt);
            }
        });
        jPanel3.add(btnResultDespesas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 120, 210, 60));

        btnDesempenho1.setBackground(new java.awt.Color(2, 136, 209));
        btnDesempenho1.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnDesempenho1.setForeground(new java.awt.Color(255, 255, 255));
        btnDesempenho1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnDesempenho1.setMaximumSize(new java.awt.Dimension(213, 48));
        btnDesempenho1.setMinimumSize(new java.awt.Dimension(213, 48));
        btnDesempenho1.setOpaque(true);
        btnDesempenho1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnDesempenho1MouseClicked(evt);
            }
        });
        jPanel3.add(btnDesempenho1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 240, 210, 60));

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 90, 210, 510));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cbTempoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbTempoItemStateChanged
        vtime = cbTempo.getSelectedIndex();//caso o cbTempo seja intervalo de tempo
        txtInicio.setEnabled(vtime == 2);
        txtFim.setEnabled(vtime == 2);
    }//GEN-LAST:event_cbTempoItemStateChanged

    private void cbFatoresItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbFatoresItemStateChanged
        vfator = cbFatores.getSelectedIndex();//apresenta os possiveis gráficos de cada fator a ser analisados em uma combox
        checkfator();
    }//GEN-LAST:event_cbFatoresItemStateChanged

    private void btnGraficoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnGraficoMouseClicked
        if (vfator == 0 ? false : vgrafic == 0 ? false : vtime == 0 ? false : vtime == 3 ? Fim.equals("") ? false : !Inicio.equals("") : true) {//certifica-se de que nenhum dos campos está vazio ou não preenchido antes de iniciar a geração do gráfico
            try {
                gerarGrafico();
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
    }//GEN-LAST:event_btnGraficoMouseClicked

    private void txtInicioKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtInicioKeyPressed
        Inicio = txtInicio.toString();
    }//GEN-LAST:event_txtInicioKeyPressed

    private void txtFimKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtFimKeyPressed
        Fim = txtFim.toString();
    }//GEN-LAST:event_txtFimKeyPressed

    private void cbGraficosItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbGraficosItemStateChanged
        vgrafic = cbGraficos.getSelectedIndex();
    }//GEN-LAST:event_cbGraficosItemStateChanged

    private void btnResultVendasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultVendasMouseClicked
        this.hide();
        vend = new FrmGráficoVendas();
        vend.show();
    }//GEN-LAST:event_btnResultVendasMouseClicked

    private void btnResultDespesasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultDespesasMouseClicked
        this.hide();
        desp = new FrmGráficoDespesas();
        desp.show();
    }//GEN-LAST:event_btnResultDespesasMouseClicked

    private void btnCaminhãoMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCaminhãoMouseEntered
        btnCaminhão.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnCaminhãoMouseEntered

    private void btnCaminhãoMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCaminhãoMouseExited
        btnCaminhão.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnCaminhãoMouseExited

    private void btnResultVendasMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultVendasMouseExited

        btnResultVendas.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnResultVendasMouseExited

    private void btnResultVendasMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultVendasMouseEntered
        btnResultVendas.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnResultVendasMouseEntered

    private void btnResultDespesasMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultDespesasMouseExited
        btnResultDespesas.setBackground(new java.awt.Color(2, 136, 209));

    }//GEN-LAST:event_btnResultDespesasMouseExited

    private void btnResultDespesasMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultDespesasMouseEntered
        btnResultDespesas.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnResultDespesasMouseEntered

    private void btnDesempenho1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnDesempenho1MouseClicked
        cbTempo.setSelectedIndex(2);//Botão para inserir os dados na apresentação 
        txtInicio.setValue("01/12/2015");
        txtFim.setValue("01/02/2016");
    }//GEN-LAST:event_btnDesempenho1MouseClicked

    private void btnCaminhãoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCaminhãoMouseClicked
        cam = new FrmCaminhão();
        cam.show();
        this.hide();
    }//GEN-LAST:event_btnCaminhãoMouseClicked

    private void btnLogoffMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogoffMouseClicked
        this.hide();
        FrmLogin log = new FrmLogin();
        log.show();
    }//GEN-LAST:event_btnLogoffMouseClicked

    private void btnSairMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseClicked
        System.exit(0);
    }//GEN-LAST:event_btnSairMouseClicked

    private void btnLogoffMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogoffMouseEntered
        btnLogoff.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnLogoffMouseEntered

    private void btnSairMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseEntered
        btnSair.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnSairMouseEntered

    private void btnLogoffMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogoffMouseExited
        btnLogoff.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnLogoffMouseExited

    private void btnSairMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseExited
        btnSair.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnSairMouseExited

    private void btnArquivoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnArquivoMouseClicked
        CreatePdf c = new CreatePdf();
        Inicio = txtInicio.getText();
        Fim = txtFim.getText();
        c.creat(Inicio, Fim);
    }//GEN-LAST:event_btnArquivoMouseClicked

    public void checkfator() {//coloca os possiveis gráficos no combobox
        if (vfator == 1 || vfator == 2) {
            cbGraficos.removeAllItems();
            for (int i = 0; i <= Funcionario.length - 1; i++) {
                cbGraficos.addItem(Funcionario[i]);
            }
        } else {
            cbGraficos.removeAllItems();
        }
    }

    public void gerarGrafico() throws SQLException {
        System.out.println("Iniciar Geração de Gráficos");
        System.out.println("atendente");
        int tempo = vtime;
        int fator = vfator;
        int grafico = vgrafic;
        System.out.println(clas.getConexao() != null ? "Conexão estabelecida" : "Conexão não estabelecida"); //conexão com o banco
        Inicio = txtInicio.getText();
        Fim = txtFim.getText();
        if (tempo == 1) {
            sql = "exec usp_PrimeiroFechamentoData ";
            clas.rs = clas.smt.executeQuery(sql);
            clas.rs.next();
            Inicio = clas.rs.getString("Data_Servico");
            Fim = val.dateTime();
        }
        //
        //Gráficos
        //
        switch (fator) {
            case 1:
                switch (grafico) {

                    //Motorista
                    case 1:
                        //Porcentagem Motorista Feito
                        sql = "exec usp_QtdeAberturasMotoristas '" + Inicio + "','" + Fim + "'";
                        clas.rs = clas.smt.executeQuery(sql);
                        icon = ger.gerarPiechart(clas.rs, "Eficiência de cada Motorista", lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                    case 2:
                        //Ranking Motorista Feito
                        sql = "exec usp_QtdeAberturasMotoristas '" + Inicio + "','" + Fim + "'";
                        clas.rs = clas.smt.executeQuery(sql);
                        icon = ger.gerarBar(clas.rs, "Ranking dos Motoristas", lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                }
                break;
            case 2:
                switch (grafico) {
                    //Atendente
                    case 1:
                        
                        //Porcentagem Atendente Feito
                        
                        sql = "exec usp_AtendimentosAtendente '" + Inicio + "','" + Fim + "'";
                        clas.rs = clas.smt.executeQuery(sql);
                        icon = ger.gerarPiechart(clas.rs, "Eficiência de cada Atendente", lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                    case 2:
                        //Ranking Atendente Feito
                        sql = "exec usp_AtendimentosAtendente '" + Inicio + "','" + Fim + "'";
                        clas.rs = clas.smt.executeQuery(sql);
                        icon = ger.gerarBar(clas.rs, "Ranking dos Atendentes", lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                }
                break;
        }
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
            java.util.logging.Logger.getLogger(FrmDesempenhoFuncionários.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmDesempenhoFuncionários.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmDesempenhoFuncionários.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmDesempenhoFuncionários.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmDesempenhoFuncionários().setVisible(true);
            }
        });
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnArquivo;
    private javax.swing.JLabel btnCaminhão;
    private javax.swing.JLabel btnDesempenho;
    private javax.swing.JLabel btnDesempenho1;
    private javax.swing.JButton btnGrafico;
    private javax.swing.JLabel btnLogoff;
    private javax.swing.JLabel btnResultDespesas;
    private javax.swing.JLabel btnResultVendas;
    private javax.swing.JLabel btnSair;
    private javax.swing.JComboBox<String> cbFatores;
    private javax.swing.JComboBox<String> cbGraficos;
    private javax.swing.JComboBox<String> cbTempo;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JLabel lblGrafic;
    private javax.swing.JLabel lblLogo;
    private javax.swing.JFormattedTextField txtFim;
    private javax.swing.JFormattedTextField txtInicio;
    // End of variables declaration//GEN-END:variables
}
