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
import android.graphics.drawable.DrawableContainer;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Base64;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.PasswordAuthentication;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.UUID;

public class AssinaturaMotorista extends AppCompatActivity {
    TextView txtmoto;
    ImageView imgMotorista;
    Button btnSalvar, btnContinuar, btnLimpar;
    float dX, dY, oldX, oldY, nX, nY, dw, dh;
    private Paint paint;
    private Path path;
    Canvas canvas;
    Bitmap bitmap;
    Bitmap bitmap2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_assinatura_motorista);
        path = new Path();
        paint = new Paint();
        paint = new Paint(0);
        paint.setColor(Color.BLUE);
        paint.setStrokeWidth(4);

        txtmoto = findViewById(R.id.textViewMotorista);
        imgMotorista = this.findViewById(R.id.imgDesenhaMotorista);
        imgMotorista.setDrawingCacheEnabled(true);
        btnSalvar = findViewById(R.id.btnSalvar);
        btnContinuar = findViewById(R.id.btnContinuar);
        btnLimpar = findViewById(R.id.btnLimpar);


        Display dp = getWindowManager().getDefaultDisplay();
        dw = dp.getWidth();
        dh = dp.getHeight();

        bitmap = Bitmap.createBitmap((int) dw, (int) dh, Bitmap.Config.ARGB_8888);

        canvas = new Canvas(bitmap);


        imgMotorista.setImageBitmap(bitmap);
        imgMotorista.setOnTouchListener(new View.OnTouchListener() {
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
                        imgMotorista.invalidate();
                        oldY = nY;
                        oldX = nX;


                }
                return true;
            }
        });

    }

    ClasseCompartilha cp = new ClasseCompartilha();

    public void botaoAssinaMotorista(View v) {
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
                        if (ContextCompat.checkSelfPermission(AssinaturaMotorista.this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                            ActivityCompat.requestPermissions(AssinaturaMotorista.this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 0);
                        } else {
                            File folder = new File(Environment.getExternalStorageDirectory().toString());
                            boolean success = false;
                            if (!folder.exists())
                            {
                                success = folder.mkdirs();
                            }

                            System.out.println(success+"folder");

                            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString() + "/AssinaturaM.png");

                            if ( !file.exists() )
                            {
                                try {
                                    success = file.createNewFile();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }

                            System.out.println(success+"file");



                            FileOutputStream ostream = null;
                            try
                            {
                                ostream = new FileOutputStream(file);

                                System.out.println(ostream);
                                View targetView = imgMotorista;

                                BitmapDrawable wel = (BitmapDrawable) (imgMotorista.getDrawable());
                                Bitmap well = wel.getBitmap();
                                Bitmap save = Bitmap.createBitmap(320, 480, Bitmap.Config.ARGB_8888);
                                Paint paint = new Paint();
                                paint.setColor(Color.WHITE);
                                Canvas now = new Canvas(save);
                                now.drawRect(new Rect(0,0,320,480), paint);
                                now.drawBitmap(well, new Rect(0,0,well.getWidth(),well.getHeight()), new Rect(0,0,320,480), null);
                                if(save == null) {
                                    System.out.println("NULL bitmap save\n");
                                }
                                save.compress(Bitmap.CompressFormat.PNG, 100, ostream);
                                startActivity(new Intent(AssinaturaMotorista.this,AssinaturaCliente.class));
                            }catch (NullPointerException e)
                            {
                                e.printStackTrace();
                                Toast.makeText(getApplicationContext(), "Null error", Toast.LENGTH_SHORT).show();
                            }

                            catch (FileNotFoundException e)
                            {
                                e.printStackTrace();
                                Toast.makeText(getApplicationContext(), "File error", Toast.LENGTH_SHORT).show();
                            }

                            catch (IOException e)
                            {
                                e.printStackTrace();
                                Toast.makeText(getApplicationContext(), "IO error", Toast.LENGTH_SHORT).show();
                            }
                        }}
                });
                a.show();
                break;
            case R.id.btnLimpar:

                startActivity(new Intent(getApplicationContext(), AssinaturaMotorista.class));
                finish();
                break;
            case R.id.btnContinuar:
                imgMotorista.setImageResource(0);
                startActivity(new Intent(getApplicationContext(), AssinaturaCliente.class));
                finish();
                break;


        }

    }

}
