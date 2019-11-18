package Classes;


import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.ImageIcon;

public class FrmGráficoDespesas extends javax.swing.JFrame {

    public FrmGráficoDespesas() {
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
    boolean go = true;
    String Inicio;
    String Fim;
    String sql;
    ImageIcon icon;
    ResultSet rs;
    //Textos para as ComboBox
    String[] Gasolina = {"Gráficos", "Gasolina por Tempo"};
    String[] Salario = {"Gráficos", "Quantidade por faixa", "Salário de cada funcionário"};
    String[] TotalDespesas = {"Gráficos", "Porcentagem", "Despesas Totais"};

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        lblLogo = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        btnSair = new javax.swing.JLabel();
        btnCaminhão = new javax.swing.JLabel();
        btnGhost = new javax.swing.JLabel();
        btnLogoff = new javax.swing.JLabel();
        btnResultVendas = new javax.swing.JLabel();
        btnResultDespesas = new javax.swing.JLabel();
        btnFuncionários = new javax.swing.JLabel();
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

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocation(new java.awt.Point(0, 0));
        setMinimumSize(new java.awt.Dimension(1200, 600));
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

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, 90));

        jLabel8.setFont(new java.awt.Font("Century Gothic", 0, 32)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("AutoSocorro");
        jPanel1.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(610, 30, -1, -1));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1200, 90));

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
        jPanel3.add(btnSair, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 450, 210, 60));

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

        btnGhost.setBackground(new java.awt.Color(2, 136, 209));
        btnGhost.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnGhost.setForeground(new java.awt.Color(255, 255, 255));
        btnGhost.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnGhost.setMaximumSize(new java.awt.Dimension(213, 48));
        btnGhost.setMinimumSize(new java.awt.Dimension(213, 48));
        btnGhost.setOpaque(true);
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
        jPanel3.add(btnLogoff, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 390, 210, 60));

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

        btnResultDespesas.setBackground(new java.awt.Color(1, 87, 155));
        btnResultDespesas.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnResultDespesas.setForeground(new java.awt.Color(255, 255, 255));
        btnResultDespesas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnResultDespesas.setText("Resultado das Despesas");
        btnResultDespesas.setMaximumSize(new java.awt.Dimension(213, 48));
        btnResultDespesas.setMinimumSize(new java.awt.Dimension(213, 48));
        btnResultDespesas.setOpaque(true);
        jPanel3.add(btnResultDespesas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 120, 210, 60));

        btnFuncionários.setBackground(new java.awt.Color(2, 136, 209));
        btnFuncionários.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnFuncionários.setForeground(new java.awt.Color(255, 255, 255));
        btnFuncionários.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnFuncionários.setText("Desempenho dos Funcionários");
        btnFuncionários.setMaximumSize(new java.awt.Dimension(213, 48));
        btnFuncionários.setMinimumSize(new java.awt.Dimension(213, 48));
        btnFuncionários.setOpaque(true);
        btnFuncionários.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnFuncionáriosMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnFuncionáriosMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnFuncionáriosMouseExited(evt);
            }
        });
        jPanel3.add(btnFuncionários, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 180, 210, 60));

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 90, 210, 510));

        jLabel9.setBackground(new java.awt.Color(255, 255, 255));
        jLabel9.setFont(new java.awt.Font("Century Gothic", 0, 28)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Resultado das Despesas");
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

        cbFatores.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Fatores", "Gasolina", "Salário", "Total das Despesas" }));
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
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 68, Short.MAX_VALUE)
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

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cbTempoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbTempoItemStateChanged
        vtime = cbTempo.getSelectedIndex(); //caso o cbTempo seja intervalo de tempo
        txtInicio.setEnabled(vtime == 2);
        txtFim.setEnabled(vtime == 2);
    }//GEN-LAST:event_cbTempoItemStateChanged

    private void cbFatoresItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbFatoresItemStateChanged
        vfator = cbFatores.getSelectedIndex(); //apresenta os possiveis gráficos de cada fator a ser analisados em uma combox
        checkfator();
    }//GEN-LAST:event_cbFatoresItemStateChanged

    private void btnGraficoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnGraficoMouseClicked
        //certifica-se de que nenhum dos campos está vazio ou não preenchido antes de iniciar a geração do gráfico
        if (vfator == 0 ? false : vgrafic == 0 ? false : vtime == 0 ? false : vtime == 3 ? Fim.equals("") ? false : !Inicio.equals("") : true) {
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

    private void btnCaminhãoMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCaminhãoMouseEntered
        btnCaminhão.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnCaminhãoMouseEntered

    private void btnCaminhãoMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCaminhãoMouseExited
        btnCaminhão.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnCaminhãoMouseExited

    private void btnResultVendasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultVendasMouseClicked
        this.hide();
        vend = new FrmGráficoVendas();
        vend.show();
    }//GEN-LAST:event_btnResultVendasMouseClicked

    private void btnResultVendasMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultVendasMouseEntered
        btnResultVendas.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnResultVendasMouseEntered

    private void btnResultVendasMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultVendasMouseExited
        btnResultVendas.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnResultVendasMouseExited

    private void btnFuncionáriosMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFuncionáriosMouseExited
        btnFuncionários.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnFuncionáriosMouseExited

    private void btnFuncionáriosMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFuncionáriosMouseEntered
        btnFuncionários.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnFuncionáriosMouseEntered

    private void btnFuncionáriosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFuncionáriosMouseClicked
        this.hide();
        func = new FrmDesempenhoFuncionários();
        func.show();
    }//GEN-LAST:event_btnFuncionáriosMouseClicked

    private void btnGhostMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnGhostMouseClicked
        cbTempo.setSelectedIndex(2);//Botão para inserir os dados na apresentação 
        txtInicio.setValue("01/12/2015");
        txtFim.setValue("01/12/2016");
    }//GEN-LAST:event_btnGhostMouseClicked

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

    private void btnLogoffMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogoffMouseExited
        btnLogoff.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnLogoffMouseExited

    private void btnSairMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseEntered
        btnSair.setBackground(new java.awt.Color(1, 87, 155));
    }//GEN-LAST:event_btnSairMouseEntered

    private void btnSairMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSairMouseExited
        btnSair.setBackground(new java.awt.Color(2, 136, 209));
    }//GEN-LAST:event_btnSairMouseExited

    private void btnArquivoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnArquivoMouseClicked
        CreatePdf c = new CreatePdf();
        Inicio = txtInicio.getText();
        Fim = txtFim.getText();
        c.creat(Inicio,Fim);
    }//GEN-LAST:event_btnArquivoMouseClicked

    public void checkfator() {//coloca os possiveis gráficos no combobox
        switch (vfator) {
            case 0:
                cbGraficos.removeAllItems();
                break;
            case 1:
                cbGraficos.removeAllItems();
                for (int i = 0; i <= Gasolina.length - 1; i++) {
                    cbGraficos.addItem(Gasolina[i]);
                }
                break;
            case 2:
                cbGraficos.removeAllItems();
                for (int i = 0; i <= Salario.length - 1; i++) {
                    cbGraficos.addItem(Salario[i]);
                }
                break;
            case 3:
                cbGraficos.removeAllItems();
                for (int i = 0; i <= TotalDespesas.length - 1; i++) {
                    cbGraficos.addItem(TotalDespesas[i]);
                }
                break;
        }
    }

    public void gerarGrafico() throws SQLException {
        System.out.println("Iniciar Geração de Gráficos");
        int tempo = vtime;
        int fator = vfator;
        int grafico = vgrafic;
        System.out.println(clas.getConexao() != null ? "Conexão estabelecida" : "Conexão não estabelecida");//conexão com o banco
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
                    case 1:
                        //Gasolina por tempo Feito 
                        String[] datas = val.Meses(Inicio, Fim);//pega as datas entre o intervalo de tempo
                        String[][] dados = new String[2][datas.length - 1];
                        //busca o gasto da gasolina durante o periodo
                        for (int i = 0; i < dados[0].length - 1; i++) {//coloca os dados banco em uma matriz
                            sql = "exec usp_GasolinaPeriodo '" + datas[i] + "','" + datas[i + 1] + "'";
                            clas.rs = clas.smt.executeQuery(sql);
                            dados[1][i] = datas[i];
                            clas.rs.next();
                            dados[0][i] = clas.rs.getString("qtde");
                        }
                        for (int i = 0; i < dados[0].length; i++) {//certifica-se de que nada tem o valor null
                            if (dados[0][i] == null) {
                                dados[0][i] = "0";
                            }
                        }
                        icon = ger.gerarAreaTest(dados, "Gasto da gasolina por tempo", lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                }
                break;
            case 2:
                switch (grafico) {
                    case 1:
                        //Quantidades de Salarios em Faixas de preço Feito
                        //busca a quantidade de pessoas em cada faixa salarial
                        icon = ger.gerarInvertedBartest(val.faixaSalario(), "Quantidade de Salários por Faixa de preço", lblGrafic.getWidth(), lblGrafic.getHeight(), "salario");
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                    case 2:
                        //salario de cada funcionário Feito
                        sql = "exec usp_SalarioFuncionarios";
                        //Busca o salario de cada funcionario no banco
                        clas.rs = clas.smt.executeQuery(sql);
                        icon = ger.gerarBar(clas.rs, "salario de cada funcionário", lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                }
                break;
            case 3:
                switch (grafico) {
                    case 1:
                        //Porcentagem de cada dispesa feito
                        String[][] dados = new String[2][2];
                        //busca as despesas de gasolina no banco
                        sql = "exec usp_GasolinaPeriodo'" + Inicio + "','" + Fim + "'";
                        clas.rs = clas.smt.executeQuery(sql);
                        System.out.println(sql);
                        clas.rs.next();
                        dados[0][0] = "Gastos da Gasolina";
                        dados[1][0] = clas.rs.getString("qtde");
                        int meses = val.Meses(Inicio, Fim).length - 2;
                        //busca as despesas de salario no banco
                        clas.rs = clas.smt.executeQuery("exec usp_GastoSalario '" + meses + "'");
                        clas.rs.next();
                        dados[0][1] = "Gastos com Funcionários";
                        dados[1][1] = clas.rs.getString("qtde");
                        icon = ger.gerarPiechartTeste(dados, lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                    case 2:
                        //Despesas Totais feito 
                        //Aumentar o numero de chamadas e diminuir o salario dos funcionarios
                        String[] datas = val.Meses(Inicio, Fim);
                        String[][] dados2 = new String[2][datas.length - 1];
                        for (int i = 0; i < dados2[0].length; i++) {
                            //busca ad despesas da gasolina
                            clas.rs = clas.smt.executeQuery("exec usp_GasolinaPeriodo'" + datas[i] + "','" + datas[i + 1] + "'");
                            clas.rs.next();
                            dados2[1][i] = datas[i];
                            if (clas.rs.getString("qtde") == null) {
                                dados2[0][i] = "0";
                            } else {
                                dados2[0][i] = clas.rs.getString("qtde");
                            }
                            //busca as despesas do salario
                            clas.rs = clas.smt.executeQuery("exec usp_GastoSalario '1'");
                            clas.rs.next();
                            String var = clas.rs.getString("qtde");
                            dados2[0][i] = Double.parseDouble(dados2[0][i]) + Double.parseDouble(var) + "";
                            System.out.println("gastos totais :" + dados2[0][i] + "    do dia:" + dados2[1][i]);
                        }
                        icon = ger.gerarAreaTest(dados2, "Total de despesas por tempo", lblGrafic.getWidth(), lblGrafic.getHeight());
                        lblGrafic.setSize(680, 380);
                        lblGrafic.setIcon(icon);
                        break;
                }
                break;
        }
    }
    public static void main(String args[]) {

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

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmGráficoDespesas().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnArquivo;
    private javax.swing.JLabel btnCaminhão;
    private javax.swing.JLabel btnFuncionários;
    private javax.swing.JLabel btnGhost;
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
