package t.br.prjtcc;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Base64;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.List;
import java.util.function.BinaryOperator;

public class AssinaturaCliente extends AppCompatActivity {
    TextView txtmoto;
    ImageView imgCliente;
    Button btnSalvar, btnConfirmar, btnLimpar;
    float dX, dY, oldX, oldY, nX, nY, dw, dh;
    private Paint paint;
    private Path path;
    Canvas canvas;
    Bitmap bitmap;
    String id_Chamado = "";
    ClasseCompartilha cp = new ClasseCompartilha();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_assinatura_cliente);
        path = new Path();
        paint = new Paint();
        paint = new Paint(0);
        paint.setColor(Color.BLACK);
        paint.setStrokeWidth(4);

        txtmoto = findViewById(R.id.textViewMotorista);
        imgCliente = this.findViewById(R.id.imgDesenhaCliente);
        btnLimpar = this.findViewById(R.id.btnLimpar);
        btnSalvar = findViewById(R.id.btnSalvar);
        btnConfirmar = findViewById(R.id.btnConfirmar);


        Display dp = getWindowManager().getDefaultDisplay();
        dw = dp.getWidth();
        dh = dp.getHeight();

        bitmap = Bitmap.createBitmap((int) dw, (int) dh, Bitmap.Config.ARGB_8888);

        canvas = new Canvas(bitmap);


        imgCliente.setImageBitmap(bitmap);
        imgCliente.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                int action = event.getAction();

                switch (action) {
                    case MotionEvent.ACTION_DOWN:
                        dX = event.getX();
                        dY = event.getY();
                        oldX = dX;
                        oldY = dY;

                    case MotionEvent.ACTION_MOVE:
                        nY = event.getY();
                        nX = event.getX();
                        canvas.drawLine(oldX, oldY, nX, nY, paint);
                        imgCliente.invalidate();
                        oldY = nY;
                        oldX = nX;


                }
                return true;
            }
        });


    }


    public void botaoAssinaCliente(View v) {
        switch (v.getId()) {
            case R.id.btnSalvar:
                AlertDialog.Builder a = new AlertDialog.Builder(v.getContext());
                a.setTitle("Tem certeza?");
                a.setMessage("Tem certeza que quer salvar essa assinatura?");
                a.setCancelable(false);
                a.setNegativeButton("Não", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        startActivity(new Intent(getApplicationContext(), AssinaturaMotorista.class));
                    }
                });
                a.setPositiveButton("Sim", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        imgCliente.setDrawingCacheEnabled(true);

                        ByteArrayOutputStream stream = new ByteArrayOutputStream();
                        bitmap.compress(Bitmap.CompressFormat.PNG, 10, stream);
                        String assinaturaC = new String(stream.toByteArray());

                        if (assinaturaC != null) {
                            Toast.makeText(getApplicationContext(), "Dados Salvos!", Toast.LENGTH_LONG).show();
                            imgCliente.setImageResource(0);
                            btnConfirmar.setVisibility(View.VISIBLE);
                            btnSalvar.setVisibility(View.INVISIBLE);
                            btnLimpar.setVisibility(View.INVISIBLE);
                            ClasseCompartilha cp = new ClasseCompartilha();


                            cp.setAssinaturaC(assinaturaC);
                                                   } else
                            Toast.makeText(getApplicationContext(), "Usado foram salvos", Toast.LENGTH_LONG).show();
                    }
                });
                a.show();
                break;
            case R.id.btnLimpar:
                startActivity(new Intent(getApplicationContext(), AssinaturaCliente.class));
                finish();

                break;
            case R.id.btnConfirmar:

                new SincronismoInsertDeclaracaoMotoristaHTTP().execute();
                new SincronismoInsertDeclaracaoClienteHTTP().execute();

                startActivity(new Intent(getApplicationContext(), ChecklistParte2.class));
                finish();

                break;


        }

    }
    private class SincronismoUpdateHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params) {


            try {

                ConexaoHTTP.conectarHttp("http://10.0.2.2/default_update.aspx?hora=" + cp.getHora() + "&kms=" + cp.getKmSaida() + "&id_Caminhao=" + cp.getId_caminhao() + "&obs=" + cp.getObservacao() + "&chamado=" + id_Chamado);
            } catch (Exception e) {
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);
            Toast.makeText(getBaseContext(), "Alterado!", Toast.LENGTH_LONG).show();
            finish();
            startActivity(new Intent(getApplicationContext(), MainActivity.class));
        }
    }


    private class SincronismoInsertAcessoriosHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params) {
            try {
                ConexaoHTTP.conectarHttp("http://10.0.2.2/default_inserirAcessorio.aspx?id=" + id_Chamado + "&bancoD=" + cp.getBancoDianteiro() +
                        "&bancoT=" + cp.getBancoTraseiro() + "&chave=" + cp.getChave() + "&extintor=" + cp.getExtintor() + "&console=" + cp.getConsole() +
                        "&tapete=" + cp.getTapete() + "&rodaE=" + cp.getRodaespecial() + "&objPl=" + cp.getObjetosPortaLuva() + "&farolM=" + cp.getFarolMilha() + "&farol=" +
                        cp.getFarol() + "&lanterna=" + cp.getLanterna() + "&radioDVD=" + cp.getRadioDVD() + "&objPm=" + cp.getObjetosPortaMala() + "&estepe=" + cp.getEstepe() +
                        "&macaco=" + cp.getMacaco() + "&triangulo=" + cp.getTriangulo() + "&chaveR=" + cp.getFerramentasCH() + "&bagageiro=" + cp.getBagageiro());
            } catch (Exception e) {
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);

            Toast.makeText(getBaseContext(), "Foi", Toast.LENGTH_LONG).show();

        }
    }

    private class SincronismoInsertDeclaracaoMotoristaHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params) {
            try {


                ConexaoHTTP.conectarHttp("http://10.0.2.2/default_inserirDeclaracao.aspx?id=" + id_Chamado + "&hora=" + cp.getHora() + "&assinatura=" +cp.getAssinaturaM());

            } catch (Exception e) {


            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);

            Toast.makeText(getBaseContext(), "Foi", Toast.LENGTH_LONG).show();

        }
    }

    private class SincronismoInsertDeclaracaoClienteHTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

        }

        @Override
        protected Void doInBackground(Void... params) {
            try {


                ConexaoHTTP.conectarHttp("http://10.0.2.2/default_inserirDeclaracao.aspx?id=" + id_Chamado + "&assinatura=" + cp.getAssinaturaC() + "&hora=" + cp.getHora());

            } catch (Exception e) {
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);

            Toast.makeText(getBaseContext(), "Foi", Toast.LENGTH_LONG).show();

        }
    }

}
