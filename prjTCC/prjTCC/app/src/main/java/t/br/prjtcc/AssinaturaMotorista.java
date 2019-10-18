package t.br.prjtcc;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
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
import java.nio.ByteBuffer;

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
        paint.setColor(Color.BLACK);
        paint.setStrokeWidth(4);

        txtmoto = findViewById(R.id.textViewMotorista);
        imgMotorista = this.findViewById(R.id.imgDesenhaMotorista);
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
                bitmap2 = ((BitmapDrawable) imgMotorista.getDrawable()).getBitmap();

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
                        imgMotorista.setDrawingCacheEnabled(true);
                        Bitmap bitmapObtained = bitmap;
                        ByteArrayOutputStream stream = new ByteArrayOutputStream();
                        bitmapObtained.compress(Bitmap.CompressFormat.PNG, 1, stream);


                        String assinaturaM = new String(stream.toByteArray());

                        if (assinaturaM != null) {
                            Toast.makeText(getApplicationContext(), "Dados Salvos!", Toast.LENGTH_LONG).show();
                            imgMotorista.setImageResource(0);
                            btnContinuar.setVisibility(View.VISIBLE);
                            btnSalvar.setVisibility(View.INVISIBLE);
                            btnLimpar.setVisibility(View.INVISIBLE);
                            ClasseCompartilha cp = new ClasseCompartilha();


                            cp.setAssinaturaM(assinaturaM);

                        } else
                            Toast.makeText(getApplicationContext(), "Não foram salvos", Toast.LENGTH_LONG).show();
                    }
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
