package t.br.prjtcc;

import android.content.DialogInterface;
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
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.util.List;

public class MainActivity extends AppCompatActivity {
    List<String> mDados;
    String[] lisID;
    ListView listCli;
    int posicao;
    ClasseCompartilha cp = new ClasseCompartilha();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);
        if(Build.VERSION.SDK_INT>=Build.VERSION_CODES.LOLLIPOP){
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
            getWindow().setStatusBarColor(Color.TRANSPARENT);
        }
        listCli = findViewById(R.id.listCli);

        listCli.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                posicao = i;
                new SincronismoConsulta2HTTP().execute();
            }


        });
        new SincronismoConsultaHTTP().execute();
    }

    private class SincronismoConsultaHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
        }

        @Override
        protected Void doInBackground(Void... params) {

            try {

                ConexaoHTTP.conectarHttp("http://"+cp.ipRede+"/default_consulta.aspx?identificador=5");
                mDados = ConexaoHTTP.getDados();



            } catch (Exception e) {
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);
            mDados = ConexaoHTTP.getDados();
            if (mDados.size() > 0) {
                String[] dados = mDados.toArray(new String[mDados.size()]);
                lisID = new String[dados.length];
                dados[0]= dados[0].replace("[","");
                dados[dados.length - 1] =  dados[dados.length - 1].replace("]","");
                for(int a = 0;a<dados.length;a++){
                    lisID[a] = dados[a].substring(0,dados[a].indexOf(","));
                    dados[a] = dados[a].replace(","," - ");

                    ArrayAdapter<String> adpL = new ArrayAdapter<String>(getBaseContext(),R.layout.listview,dados);
                    listCli.setAdapter(adpL);
                }

            } else {
                Toast.makeText(getBaseContext(), "Registro(s) não localizado", Toast.LENGTH_LONG).show();
            }
        }
    }
    private class SincronismoConsulta2HTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
        }

        @Override
        protected Void doInBackground(Void... params) {

            try {

                ConexaoHTTP.conectarHttp("http://"+cp.ipRede+"/default_consulta.aspx?identificador=6&dominio="+lisID[posicao]);


                mDados = ConexaoHTTP.getDados();




            } catch (Exception e) {
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);
            mDados = ConexaoHTTP.getDados();
            if (mDados.size() > 0) {
                cp.setChamado(lisID[posicao]);
                cp.setEderecos(mDados.toArray(new String[mDados.size()]));
                new SincronismoInsertMotoristaHTTP().execute();
                startActivity(new Intent(getApplicationContext(),MapsActivity.class));
            } else {
                Toast.makeText(getBaseContext(), "Registro(s) não localizado", Toast.LENGTH_LONG).show();
            }
        }
    }

    private class SincronismoInsertMotoristaHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params) {
            try {
                ConexaoHTTP.conectarHttp("http://"+cp.ipRede+"/default_inserirMotCha.aspx?id=" +cp.getId_Motorista()+"&idCh="+ cp.getChamado() );
            } catch (Exception e) {

            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);

            Toast.makeText(getBaseContext(), "Inserido", Toast.LENGTH_LONG).show();

        }
    }
}
