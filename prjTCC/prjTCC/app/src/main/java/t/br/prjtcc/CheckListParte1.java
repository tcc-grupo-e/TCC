package t.br.prjtcc;


import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Build;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

public class CheckListParte1 extends AppCompatActivity
{
    String id_Caminhao;
    List<String> mDados;
EditText txtPlacaCaminhao,txtKmS,txtObs;
ClasseCompartilha cp = new ClasseCompartilha();

    @Override
    protected void onCreate(Bundle savedInstanceState)     {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_list_parte1);
        txtPlacaCaminhao = findViewById(R.id.txtPlacaCaminhao);

        txtKmS = findViewById(R.id.txtKmS);
        txtObs = findViewById(R.id.txtObeservacao);

    }

    public void botao(View v) {
ClasseCompartilha cp = new ClasseCompartilha();
        switch (v.getId()) {
            case R.id.btnAvancar:


                new SincronismoHTTPConsulta().execute();

                cp.setKmSaida(txtKmS.getText().toString());
                cp.setObservacao(txtObs.getText().toString());
                startActivity(new Intent(this,ChecklistParte2.class));
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
            ConexaoHTTP.conectarHttp("http://"+cp.ipRede+"/default_consulta.aspx?identificador=1&dominio=" +placa);
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
