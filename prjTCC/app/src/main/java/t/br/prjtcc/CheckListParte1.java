package t.br.prjtcc;


import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;

public class CheckListParte1 extends AppCompatActivity
{
EditText txtCPF,txtSegurador,txtSeguradora,txtApolice,txtData,txtHora,txtMarca,txtTipo,txtModelo,txtPlaca,txtCor,txtAutorizacao,txtContato,txtTelefone,txtLocalizacao,txtDestino1,txtDestino2,txtDestinoFinal;
ClasseCompartilha cp = new ClasseCompartilha();
String tipo;
RadioButton radioColisao,radioIncendio,radioLocalizacao,radioDAF,radioRPT,radioSocorro;
    @Override
    protected void onCreate(Bundle savedInstanceState)     {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_list_parte1);
        txtCPF = findViewById(R.id.txtCPF);
        txtSegurador = findViewById(R.id.txtSegurador);
        txtSeguradora = findViewById(R.id.txtSeguradora);
        txtApolice = findViewById(R.id.txtApolice);
        txtData = findViewById(R.id.txtData);
        txtHora = findViewById(R.id.txtHora);
        txtMarca = findViewById(R.id.txtMarca);
        txtTipo = findViewById(R.id.txtTipo);
        txtModelo = findViewById(R.id.txtModelo);
        txtPlaca = findViewById(R.id.txtPlaca);
        txtCor = findViewById(R.id.txtCor);
        txtAutorizacao = findViewById(R.id.txtAutorizacao);
        txtContato= findViewById(R.id.txtContato);
        txtTelefone = findViewById(R.id.txtTelefone);
        txtDestino1 = findViewById(R.id.txtDestino1);
        txtDestino2= findViewById(R.id.txtDestino2);
        txtDestinoFinal = findViewById(R.id.txtDestinoFinal);
        radioColisao = findViewById(R.id.radioColisao);
        radioIncendio = findViewById(R.id.radioIncendio);
        radioLocalizacao = findViewById(R.id.radioLocalizacao);
        radioDAF = findViewById(R.id.radioDAF);
        radioRPT = findViewById(R.id.radioRPT);
        radioSocorro= findViewById(R.id.radioSocorro);

    }

    public void botao(View v) {

        switch (v.getId()) {
            case R.id.btnAvancar:

                cp.setTxtCPF(txtCPF.getText().toString());
                cp.setTxtSegurador(txtSegurador.getText().toString());
                cp.setTxtSeguradora(txtSeguradora.getText().toString());
                cp.setTxtApolice(txtApolice.getText().toString());
                cp.setTxtData(txtData.getText().toString());
                cp.setTxtHora(txtHora.getText().toString());
                cp.setTxtMarca(txtMarca.getText().toString());
                cp.setTxtTipo(txtTipo.getText().toString());
                cp.setTxtModelo(txtModelo.getText().toString());
                cp.setTxtPlaca(txtPlaca.getText().toString());
                cp.setTxtCor(txtCor.getText().toString());
                cp.setTxtAutorizacao(txtAutorizacao.getText().toString());
                cp.setTxtContato(txtContato.getText().toString());
                cp.setTxtTelefone(txtTelefone.getText().toString());
                cp.setTxtDestino1(txtDestino1.getText().toString());
                cp.setTxtDestino2(txtDestino2.getText().toString());
                cp.setTxtDestinoFinal(txtDestinoFinal.getText().toString());
                cp.setTxtTipo(tipo);


                startActivity(new Intent(this,ChecklistParte2.class));
                break;
            case R.id.radioColisao:

                tipo = "Colisao";
                break;
                case R.id.radioIncendio:

                tipo = "Incendio";
                break;case R.id.radioLocalizacao:

                tipo = "Localizacao";
                break; case R.id.radioDAF:

                tipo = "DAF";
                break;
            case R.id.radioRPT:

                tipo = "RPT";
                break;
                case R.id.radioSocorro:

                tipo = "Socorro";
                break;


        }

    }


}
