package t.br.prjtcc;

import android.Manifest;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

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

        id_Chamado = cp.getChamado();
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

    private File createImageFile() throws IOException {


        String imageFileName = "aaaaaaaaaaaaaaaaaa";
        File storageDir = getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        File image = File.createTempFile(
                imageFileName,
                ".jpg",
                storageDir
        );


        String mCurrentPhotoPath = image.getAbsolutePath();
        return image;
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
                        if (ContextCompat.checkSelfPermission(AssinaturaCliente.this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                            ActivityCompat.requestPermissions(AssinaturaCliente.this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 0);
                        } else {
                            File folder = new File(Environment.getExternalStorageDirectory().toString());
                            boolean success = false;
                            if (!folder.exists()) {
                                success = folder.mkdirs();
                            }

                            System.out.println(success + "folder");

                            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString() + "/AssinaturaC.png");

                            if (!file.exists()) {
                                try {
                                    success = file.createNewFile();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }

                            System.out.println(success + "file");


                            FileOutputStream ostream = null;
                            try {
                                ostream = new FileOutputStream(file);

                                System.out.println(ostream);
                                View targetView = imgCliente;

                                BitmapDrawable wel = (BitmapDrawable) (imgCliente.getDrawable());
                                Bitmap well = wel.getBitmap();
                                Bitmap save = Bitmap.createBitmap(320, 480, Bitmap.Config.ARGB_8888);
                                Paint paint = new Paint();
                                paint.setColor(Color.WHITE);
                                Canvas now = new Canvas(save);
                                now.drawRect(new Rect(0, 0, 320, 480), paint);
                                now.drawBitmap(well, new Rect(0, 0, well.getWidth(), well.getHeight()), new Rect(0, 0, 320, 480), null);
                                if (save == null) {
                                    System.out.println("NULL bitmap save\n");
                                }
                                save.compress(Bitmap.CompressFormat.PNG, 100, ostream);
                                //bitmap.compress(Bitmap.CompressFormat.PNG, 100, ostream);
                                //ostream.flush();
                                //ostream.close();
                            } catch (NullPointerException e) {
                                e.printStackTrace();
                                Toast.makeText(getApplicationContext(), "Null error", Toast.LENGTH_SHORT).show();
                            } catch (FileNotFoundException e) {
                                e.printStackTrace();
                                Toast.makeText(getApplicationContext(), "File error", Toast.LENGTH_SHORT).show();
                            } catch (IOException e) {
                                e.printStackTrace();
                                Toast.makeText(getApplicationContext(), "IO error", Toast.LENGTH_SHORT).show();
                            }
                        }
                        btnConfirmar.setVisibility(View.VISIBLE);
                        btnSalvar.setVisibility(View.INVISIBLE);
                        btnLimpar.setVisibility(View.INVISIBLE);
                        imgCliente.invalidate();
                    }
                });
                a.show();
                break;
            case R.id.btnLimpar:
                startActivity(new Intent(getApplicationContext(), AssinaturaCliente.class));
                finish();

                break;
            case R.id.btnConfirmar:

                new SincronismoInsertAcessoriosHTTP().execute();
                new SincronismoUpdateHTTP().execute();
                Intent intent = new Intent(AssinaturaCliente.this, MandaAssinatura.class);
                intent.putExtra("M/C","AssinaturaM.png");
                startActivity(intent);
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

                ConexaoHTTP.conectarHttp("http://" + cp.ipRede + "/default_update.aspx?hora=" + cp.getHora() + "&kms=" + cp.getKmSaida() + "&id_Caminhao=" + cp.getId_caminhao() + "&obs=" + cp.getObservacao() + "&chamado=" + id_Chamado);
            } catch (Exception e) {

            }
            return null;
        }

        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);
            Toast.makeText(getBaseContext(), "Alterado!", Toast.LENGTH_LONG).show();

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
                ConexaoHTTP.conectarHttp("http://" + cp.ipRede + "/default_inserirAcessorio.aspx?id=" + id_Chamado + "&bancoD=" + cp.getBancoDianteiro() +
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

            Toast.makeText(getBaseContext(), "Inserido Com Sucesso", Toast.LENGTH_LONG).show();

        }
    }


}
