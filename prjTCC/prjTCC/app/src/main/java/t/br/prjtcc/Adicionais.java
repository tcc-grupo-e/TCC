package t.br.prjtcc;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
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
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.util.List;

public class Adicionais extends AppCompatActivity {
    List<String> mDados;
    ListView listAdicionais;
    String id;
    int posicao;
    Button btnavancar;

    ClasseCompartilha cp = new ClasseCompartilha();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adicionais);
        listAdicionais = findViewById(R.id.listAdicionais);
        btnavancar = findViewById(R.id.btnAvancar);

        btnavancar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(),AssinaturaMotorista.class));
            }
        });
        new SincronismoConsultaHTTP().execute();

        listAdicionais.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                AlertDialog.Builder a = new AlertDialog.Builder(view.getContext());
                a.setTitle("Tem certeza?");
                a.setMessage("Você utilizou esse adicional");
                a.setCancelable(false);
                a.setNegativeButton("Não", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                    }
                });
                id= (String)(listAdicionais.getItemAtPosition(i));
                posicao = i;
                a.setPositiveButton("Sim", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        try{
                            new SincronismoHTTPInsert().execute();

                        }catch (Exception e){
                            Toast.makeText(getBaseContext(), "Desculpe, não foi possivel adicionar adicional, tente denovo mais tarde", Toast.LENGTH_LONG).show();
                        }

                    }
                });
                a.show();



            }


        });
    }




    private class SincronismoConsultaHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute(){
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params){
            try{
                ConexaoHTTP.conectarHttp("http://"+cp.ipRede+"/default_consulta.aspx?identificador=4&dominio=0" );
            }
            catch (Exception e){}
            return null;
        }

        @Override
        protected void onPostExecute(Void vd){
            super.onPostExecute(vd);
                mDados = ConexaoHTTP.getDados();
            if(mDados.size() > 0){
                String []dados = mDados.toString().split(",");
               dados[0]= dados[0].replace("[","");

                dados[dados.length - 1] =  dados[dados.length - 1].replace("]","");

                ArrayAdapter<String> adpL = new ArrayAdapter<String>(getBaseContext(),R.layout.listview,dados);
                listAdicionais.setAdapter(adpL);
            }else {
                Toast.makeText(getBaseContext(), "Registro(s) não localizado", Toast.LENGTH_LONG).show();
            }

        }
    }
    private class SincronismoHTTPInsert extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute(){
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params){
            try{

                ConexaoHTTP.conectarHttp("http://"+cp.ipRede+"/default_inserirAdicional.aspx?nome="+ id.substring(1,id.length())+"&id="+cp.getChamado()+"");
            }
            catch (Exception e){}
            return null;
        }

        @Override
        protected void onPostExecute(Void vd){
            super.onPostExecute(vd);

            Toast.makeText(getBaseContext(), "Registro registrado com registração garantida no seu novo registro", Toast.LENGTH_LONG).show();

        }
    }
}
