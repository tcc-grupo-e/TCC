package t.br.prjtcc;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.util.List;

public class Adicionais extends AppCompatActivity {
    List<String> mDados;
    ListView listAdicionais;
    String id;
    int posicao;

    ClasseCompartilha cp = new ClasseCompartilha();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adicionais);
        listAdicionais = findViewById(R.id.listAdicionais);
        new  SincronismoConsulta2HTTP().execute();
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
                            Toast.makeText(getBaseContext(), "Desculpe, não deu certo", Toast.LENGTH_LONG).show();
                        }

                    }
                });
                a.show();



            }


        });
    }



    private class SincronismoConsulta2HTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
        }

        @Override
        protected Void doInBackground(Void... params) {

            try {

                ConexaoHTTP.conectarHttp("http://10.0.2.2/default_consulta.aspx?identificador=2&dominio=" + cp.getCPF());
                mDados = ConexaoHTTP.getDados();


                cp.setChamado( mDados.get(0));
            } catch (Exception e) {
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);
            mDados = ConexaoHTTP.getDados();
            if (mDados.size() > 0) {
                String[] dados = mDados.toString().split(",");


            } else {
                Toast.makeText(getBaseContext(), "Registro(s) não localizado", Toast.LENGTH_LONG).show();
            }
        }
    }
    private class SincronismoConsultaHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute(){
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params){
            try{
                ConexaoHTTP.conectarHttp("http://10.0.2.2/default_consulta.aspx?identificador=4&dominio=0" );
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

//                ArrayAdapter<String> adpL = new ArrayAdapter<String>(getBaseContext(),R.layout.listview,dados);
                ArrayAdapter<String> adpL = new ArrayAdapter<String>(getBaseContext(),android.R.layout.simple_list_item_1,dados);
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

                ConexaoHTTP.conectarHttp("http://10.0.2.2/default_inserirAdicional.aspx?nome="+ id.substring(1,id.length())+"&id="+cp.getChamado()+"");
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
