import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;

public class FrmGráficoVendas extends javax.swing.JFrame {

    public FrmGráficoVendas() {
        initComponents();
    }
    GerarGraficos ger = new GerarGraficos();
    ClasseConexao clas = new ClasseConexao();
    Valida val = new Valida();
    FrmGráficoVendas vend; 
    FrmDesempenhoFuncionários func; 
    FrmGráficoDespesas desp;

    int vfator = 1 ;
    int vgrafic = 3;
    int vtime = 1;    
    
    String Inicio;
    String Fim;
    String[] Serviços = {"Gráficos","Horas por Serviço","Quantidade por Tempo"};
    String[] SubServiços = {"Gráficos","Porcentagem","Ranking","Tipo de Subserviços por tempo"};
    String[] TotalVendas = {"Gráficos","Vendas e Despesas","Lucro por Tempo","Lucro por Subserviço"};
    ImageIcon icon;
    String sql;
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        btnMinimizar = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        btnFechar = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        lblLogo = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        btnSair = new javax.swing.JLabel();
        btnCaminhão = new javax.swing.JLabel();
        btnDesempenho = new javax.swing.JLabel();
        btnLogoff = new javax.swing.JLabel();
        btnResultVendas = new javax.swing.JLabel();
        btnResultDespesas = new javax.swing.JLabel();
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
        jLabel9 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));
        setLocation(new java.awt.Point(0, 0));
        setMinimumSize(new java.awt.Dimension(1200, 600));
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(2, 136, 209));
        jPanel1.setMaximumSize(new java.awt.Dimension(995, 92));
        jPanel1.setMinimumSize(new java.awt.Dimension(995, 92));
        jPanel1.setPreferredSize(new java.awt.Dimension(995, 92));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnMinimizar.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 12)); // NOI18N
        btnMinimizar.setForeground(new java.awt.Color(255, 255, 255));
        btnMinimizar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnMinimizar.setText("_");
        btnMinimizar.setToolTipText("");
        btnMinimizar.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(255, 255, 255)));
        btnMinimizar.setMaximumSize(new java.awt.Dimension(40, 30));
        btnMinimizar.setMinimumSize(new java.awt.Dimension(40, 30));
        btnMinimizar.setPreferredSize(new java.awt.Dimension(40, 30));
        jPanel1.add(btnMinimizar, new org.netbeans.lib.awtextra.AbsoluteConstraints(1046, 27, -1, -1));

        jLabel2.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setToolTipText("");
        jLabel2.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(255, 255, 255)));
        jLabel2.setMaximumSize(new java.awt.Dimension(40, 30));
        jLabel2.setMinimumSize(new java.awt.Dimension(40, 30));
        jLabel2.setPreferredSize(new java.awt.Dimension(40, 30));
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(1096, 27, -1, -1));

        btnFechar.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 12)); // NOI18N
        btnFechar.setForeground(new java.awt.Color(255, 255, 255));
        btnFechar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnFechar.setText("X");
        btnFechar.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(255, 255, 255)));
        btnFechar.setMaximumSize(new java.awt.Dimension(40, 30));
        btnFechar.setMinimumSize(new java.awt.Dimension(40, 30));
        btnFechar.setPreferredSize(new java.awt.Dimension(40, 30));
        btnFechar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnFecharMouseClicked(evt);
            }
        });
        jPanel1.add(btnFechar, new org.netbeans.lib.awtextra.AbsoluteConstraints(1142, 27, -1, -1));

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setMaximumSize(new java.awt.Dimension(213, 92));
        jPanel2.setMinimumSize(new java.awt.Dimension(213, 92));
        jPanel2.setPreferredSize(new java.awt.Dimension(213, 92));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblLogo.setBackground(new java.awt.Color(204, 204, 255));
        lblLogo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/LogoMenor ainda_2.png"))); // NOI18N
        lblLogo.setOpaque(true);
        jPanel2.add(lblLogo, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, -1, -1));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, -1));

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

        btnSair.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnSair.setForeground(new java.awt.Color(255, 255, 255));
        btnSair.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnSair.setText("Sair");
        btnSair.setMaximumSize(new java.awt.Dimension(213, 48));
        btnSair.setMinimumSize(new java.awt.Dimension(213, 48));
        jPanel3.add(btnSair, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 450, 213, 56));

        btnCaminhão.setBackground(new java.awt.Color(255, 255, 255));
        btnCaminhão.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnCaminhão.setForeground(new java.awt.Color(255, 255, 255));
        btnCaminhão.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnCaminhão.setText("Caminhão");
        btnCaminhão.setMaximumSize(new java.awt.Dimension(213, 48));
        btnCaminhão.setMinimumSize(new java.awt.Dimension(213, 48));
        jPanel3.add(btnCaminhão, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, 60));

        btnDesempenho.setBackground(new java.awt.Color(255, 255, 255));
        btnDesempenho.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnDesempenho.setForeground(new java.awt.Color(255, 255, 255));
        btnDesempenho.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnDesempenho.setText("Desempenho dos Funcionários");
        btnDesempenho.setMaximumSize(new java.awt.Dimension(213, 48));
        btnDesempenho.setMinimumSize(new java.awt.Dimension(213, 48));
        btnDesempenho.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnDesempenhoMouseClicked(evt);
            }
        });
        jPanel3.add(btnDesempenho, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 180, 210, 60));

        btnLogoff.setBackground(new java.awt.Color(255, 255, 255));
        btnLogoff.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnLogoff.setForeground(new java.awt.Color(255, 255, 255));
        btnLogoff.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnLogoff.setText("Logoff");
        btnLogoff.setMaximumSize(new java.awt.Dimension(213, 48));
        btnLogoff.setMinimumSize(new java.awt.Dimension(213, 48));
        jPanel3.add(btnLogoff, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 390, 213, 56));

        btnResultVendas.setBackground(new java.awt.Color(1, 87, 155));
        btnResultVendas.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnResultVendas.setForeground(new java.awt.Color(255, 255, 255));
        btnResultVendas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnResultVendas.setText("Resultado das Vendas");
        btnResultVendas.setMaximumSize(new java.awt.Dimension(213, 48));
        btnResultVendas.setMinimumSize(new java.awt.Dimension(213, 48));
        btnResultVendas.setOpaque(true);
        jPanel3.add(btnResultVendas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 60, 210, 60));

        btnResultDespesas.setBackground(new java.awt.Color(255, 255, 255));
        btnResultDespesas.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 13)); // NOI18N
        btnResultDespesas.setForeground(new java.awt.Color(255, 255, 255));
        btnResultDespesas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnResultDespesas.setText("Resultado das Despesas");
        btnResultDespesas.setMaximumSize(new java.awt.Dimension(213, 48));
        btnResultDespesas.setMinimumSize(new java.awt.Dimension(213, 48));
        btnResultDespesas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnResultDespesasMouseClicked(evt);
            }
        });
        jPanel3.add(btnResultDespesas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 120, 210, 60));

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 90, 210, 510));

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblGrafic.setBackground(new java.awt.Color(255, 255, 255));
        lblGrafic.setOpaque(true);
        jPanel4.add(lblGrafic, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 20, 680, 380));

        jPanel5.setBackground(new java.awt.Color(255, 255, 255));

        jLabel13.setFont(new java.awt.Font("Century Gothic", 0, 24)); // NOI18N
        jLabel13.setText("Detalhes do Gráfico ");

        cbTempo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Tempo", "Ano", "Mês", "Ano Específico" }));
        cbTempo.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbTempoItemStateChanged(evt);
            }
        });

        cbFatores.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Fatores", "Serviço", "SubServiço", "Total de Vendas" }));
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

        try {
            txtInicio.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("##/##/####")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        txtInicio.setEnabled(false);

        try {
            txtFim.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("##/##/####")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        txtFim.setEnabled(false);

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

        jLabel9.setBackground(new java.awt.Color(255, 255, 255));
        jLabel9.setFont(new java.awt.Font("Century Gothic", 0, 28)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Resultado das Vendas");
        jLabel9.setOpaque(true);
        getContentPane().add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 90, 1000, 90));

        setSize(new java.awt.Dimension(1201, 601));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnFecharMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFecharMouseClicked
        System.exit(0);
    }//GEN-LAST:event_btnFecharMouseClicked

    private void cbFatoresItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbFatoresItemStateChanged
        vfator = cbFatores.getSelectedIndex();
        checkfator();
    }//GEN-LAST:event_cbFatoresItemStateChanged

    private void cbTempoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbTempoItemStateChanged
         vtime = cbTempo.getSelectedIndex();
         txtInicio.setEnabled(vtime != 0);
         txtFim.setEnabled(vtime != 0);
    }//GEN-LAST:event_cbTempoItemStateChanged

    private void btnGraficoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnGraficoMouseClicked
            if(vfator==0?false:vgrafic==0?false:vtime==0?false:vtime==3?Fim.equals("")?false:!Inicio.equals(""):true)
            gerarGrafico();
    }//GEN-LAST:event_btnGraficoMouseClicked

    private void cbGraficosItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbGraficosItemStateChanged
        vgrafic = cbGraficos.getSelectedIndex();
    }//GEN-LAST:event_cbGraficosItemStateChanged

    private void btnResultDespesasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnResultDespesasMouseClicked
        this.hide();
        desp = new FrmGráficoDespesas();
        desp.show();
    }//GEN-LAST:event_btnResultDespesasMouseClicked

    private void btnDesempenhoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnDesempenhoMouseClicked
        this.hide();
        func = new FrmDesempenhoFuncionários();
        func.show();
    }//GEN-LAST:event_btnDesempenhoMouseClicked
    public void checkfator()
    {
        switch (vfator)                
        {
            case 0:
                    cbGraficos.removeAllItems();
                    break;
            case 1:
                    cbGraficos.removeAllItems();
                for(int i=0; i<=Serviços.length -1; i ++)
                {
                    cbGraficos.addItem(Serviços[i]);
                }
                break;
            case 2:
                    cbGraficos.removeAllItems();
                for(int i=0; i<=SubServiços.length -1 ; i ++)
                {
                    cbGraficos.addItem(SubServiços[i]);
                }
                break;
            case 3:
                cbGraficos.removeAllItems();
                for(int i=0; i<=TotalVendas.length-1; i ++)
                {
                    cbGraficos.addItem(TotalVendas[i]);
                }   
                break;
        }
    }
    public void gerarGrafico() 
    {
        try{
        System.out.println("Iniciar Geração de Gráficos");
    int tempo = vtime;
    int fator = vfator;
    int grafico = vgrafic;
    if(tempo==1){
    Inicio= "";
    Fim= "";
    }
        System.out.println("");
        System.out.println(clas.getConexao()!= null?"Conexão estabelecida":"Conexão não estabelecida");
        Inicio = txtInicio.getText();
        Fim = txtFim.getText();
    //Gráficos
    switch(fator)
        {
        case 1 :
            switch(grafico){
                case 1:      
                
                sql = "select * from funcionario";
                clas.rs = clas.smt.executeQuery(sql);
                icon =  ger.gerarArea(clas.rs, lblGrafic.getWidth(), lblGrafic.getHeight());
                lblGrafic.setSize( 680, 380);
                lblGrafic.setIcon(icon);
                break;
                case 2:
                icon =  ger.gerarInvertedBartest(dadosFaixa(), lblGrafic.getWidth(), lblGrafic.getHeight());
                lblGrafic.setSize( 680, 380);
                lblGrafic.setIcon(icon);
                break;
                }
            break;
        case 2:
            switch(grafico){
                    case 1:
                sql = "select * from funcionario";
                clas.rs = clas.smt.executeQuery(sql);        
                icon =  ger.gerarPiechart(clas.rs, lblGrafic.getWidth(), lblGrafic.getHeight());
                lblGrafic.setSize( 680, 380);
                lblGrafic.setIcon(icon);
                break;
                    case 2:
                sql = "select * from funcionario";
                clas.rs = clas.smt.executeQuery(sql);        
                icon =  ger.gerarLine(clas.rs, lblGrafic.getWidth(), lblGrafic.getHeight());
                lblGrafic.setSize( 680, 380);
                lblGrafic.setIcon(icon);
                break;
                }
            break;
        case 3:
            switch(grafico){
                    case 1:
                dadosFaixa();        
                sql = "usp_PedidoEntre10he12h";
                clas.rs = clas.smt.executeQuery(sql);        
                icon =  ger.gerarInvertedBar(clas.rs, lblGrafic.getWidth(), lblGrafic.getHeight());
                lblGrafic.setSize( 680, 380);
                lblGrafic.setIcon(icon);
                break;
                    case 2:
                sql = "select * from funcionario";
                clas.rs = clas.smt.executeQuery(sql);        
                icon =  ger.gerarBar(clas.rs, lblGrafic.getWidth(), lblGrafic.getHeight());
                lblGrafic.setSize( 680, 380);
                lblGrafic.setIcon(icon);
                break;
                    case 3:
                        System.out.println(Inicio+Fim);
                sql = "exec usp_QtdeDeServicosPorDeterminadoPeriodo '"+Inicio+"','"+Fim+"'";
                clas.rs = clas.smt.executeQuery(sql);
                System.out.println(clas.rs.getString("qtde"));
                icon =  ger.gerarInvertedBar(clas.rs, lblGrafic.getWidth(), lblGrafic.getHeight());
                        break;
                        
            }
                break;
            }
        }catch(SQLException ex)
        {
            System.out.println(ex);
        }
    }
    public String[] dadosFaixa() throws SQLException
    {
        String[] data = new String[6];
        String[] hora = new String[]{"10he12h","12he14h","14he16h","16he18h","18he20h","20he22h"};
        for(int i=0;i<6;i++){
        clas.rs = clas.smt.executeQuery("exec usp_PedidoEntre"+hora[i]);
        if(!clas.rs.next())
        data[i]="0";
        else
        data[i]=clas.rs.getString("qtde");
        }
        return data;
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
                new FrmGráficoVendas().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnArquivo;
    private javax.swing.JLabel btnCaminhão;
    private javax.swing.JLabel btnDesempenho;
    private javax.swing.JLabel btnFechar;
    private javax.swing.JButton btnGrafico;
    private javax.swing.JLabel btnLogoff;
    private javax.swing.JLabel btnMinimizar;
    private javax.swing.JLabel btnResultDespesas;
    private javax.swing.JLabel btnResultVendas;
    private javax.swing.JLabel btnSair;
    private javax.swing.JComboBox<String> cbFatores;
    private javax.swing.JComboBox<String> cbGraficos;
    private javax.swing.JComboBox<String> cbTempo;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel2;
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
