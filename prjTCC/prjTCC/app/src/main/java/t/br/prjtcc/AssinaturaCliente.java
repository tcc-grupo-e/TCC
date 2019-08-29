package t.br.prjtcc;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;

public class AssinaturaCliente extends AppCompatActivity {
    TextView txtmoto;
    ImageView imgCliente;
    Button btnSalvar, btnConfirmar, btnLimpar;
    float dX, dY, oldX, oldY, nX, nY, dw, dh;
    private Paint paint;
    private Path path;
    Canvas canvas;
    Bitmap bitmap;
    byte[] byteCliente;

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

    ClasseCompartilha cp = new ClasseCompartilha();

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
                        Bitmap bitmaps = imgCliente.getDrawingCache();
                        ByteArrayOutputStream baos = new ByteArrayOutputStream();
                        bitmaps.compress(Bitmap.CompressFormat.PNG, 100, baos);
                        byteCliente = baos.toByteArray();


                        if (byteCliente != null) {
                            Toast.makeText(getApplicationContext(), "Dados Salvos!", Toast.LENGTH_LONG).show();
                            imgCliente.setImageResource(0);
                            btnSalvar.setVisibility(View.INVISIBLE);
                            btnLimpar.setVisibility(View.INVISIBLE);
                            btnConfirmar.setVisibility(View.VISIBLE);
                            ClasseCompartilha cp = new ClasseCompartilha();
                          String assinaturaCli = new String(byteCliente);
                            cp.setAssinaturaC(assinaturaCli);

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

                startActivity(new Intent(getApplicationContext(), ChecklistParte2.class));
                finish();
                break;


        }

    }
}
