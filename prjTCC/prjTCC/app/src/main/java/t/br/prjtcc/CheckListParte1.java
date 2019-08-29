package t.br.prjtcc;


import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

public class CheckListParte1 extends AppCompatActivity
{
    String id_Caminhao;
    List<String> mDados;
EditText txtPlacaCaminhao,txtHora,txtKmS,txtObs;
ClasseCompartilha cp = new ClasseCompartilha();

    @Override
    protected void onCreate(Bundle savedInstanceState)     {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_list_parte1);
        txtPlacaCaminhao = findViewById(R.id.txtPlacaCaminhao);
        txtHora = findViewById(R.id.txtHora);
        txtKmS = findViewById(R.id.txtKmS);
        txtObs = findViewById(R.id.txtObeservacao);


    }

    public void botao(View v) {
ClasseCompartilha cp = new ClasseCompartilha();
        switch (v.getId()) {
            case R.id.btnAvancar:


                new SincronismoHTTPConsulta().execute();
                cp.setHora(txtHora.getText().toString());
                cp.setKmSaida(txtKmS.getText().toString());
                cp.setObservacao(txtObs.getText().toString());
                startActivity(new Intent(this,AssinaturaMotorista.class));
                break;


    }



} private class SincronismoHTTPConsulta extends AsyncTask<Void, Void, Void> {
    @Override
    protected void onPreExecute(){
        super.onPreExecute();

    }

    @Override
    protected Void doInBackground(Void... params){
        try{
         String placa = txtPlacaCaminhao.getText().toString();
            ConexaoHTTP.conectarHttp("http://10.0.2.2/default_consulta.aspx?identificador=1&dominio=" +placa);
            mDados = ConexaoHTTP.getDados();
             id_Caminhao = mDados.get(0);
            cp.setId_caminhao(id_Caminhao);

        }
        catch (Exception e){
        }

        return null;
    }

    @Override
    protected void onPostExecute(Void vd){
        super.onPostExecute(vd);

    }
}
}
