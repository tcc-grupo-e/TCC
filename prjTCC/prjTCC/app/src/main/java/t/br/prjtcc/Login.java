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
import android.util.Base64;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.util.List;

public class Login extends AppCompatActivity {
    Button btnLogin;
    EditText txtLogin, txtSenha;
    private String senha, login;
    List<String> mDados;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        if(Build.VERSION.SDK_INT>=Build.VERSION_CODES.LOLLIPOP){
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
            getWindow().setStatusBarColor(Color.TRANSPARENT);
        }
        btnLogin = findViewById(R.id.btnLogin);
        txtLogin = findViewById(R.id.txtLogin);
        txtSenha = findViewById(R.id.txtSenha);
        btnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
          //      startActivity(new Intent(getApplicationContext(),MapsActivity.class));
                new SincronismoConsultaHTTP().execute();
            }
        });
    }

    private class SincronismoConsultaHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
        }

ClasseCompartilha cp = new ClasseCompartilha();
        @Override
        protected Void doInBackground(Void... params) {

            try {
                login = txtLogin.getText().toString();
                senha = txtSenha.getText().toString();

                ConexaoHTTP.conectarHttp("http://"+cp.ipRede+"/default_consulta.aspx?identificador=3&dominio=" + login + "&dominio2=" + senha);


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
                if (dados[0].equals("[F]")) {
                    Toast.makeText(getApplicationContext(),"Login errado",Toast.LENGTH_LONG).show();
                } else {
                    startActivity(new Intent(getApplicationContext(), MainActivity.class));

                }

            } else {
                Toast.makeText(getBaseContext(), "Registro(s) não localizado", Toast.LENGTH_LONG).show();
            }
        }
    }
}
