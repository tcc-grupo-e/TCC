package t.br.prjtcc;

import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.TextView;

public class SplashScreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        if(Build.VERSION.SDK_INT>=Build.VERSION_CODES.LOLLIPOP){
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
            getWindow().setStatusBarColor(Color.TRANSPARENT);
        }
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);
        final TextView txtAuto= findViewById(R.id.txtAutoSocorro);


        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                txtAuto.setText("AutoSocorro");
            }
        },2000);

                new Handler().postDelayed(new Runnable() {
                    /*
                     * Exibindo splash com um timer.
                     */
                    @Override
                    public void run() {
                        // Esse método será executado sempre que o timer acabar
                        // E inicia a activity de login

                        Intent i = new Intent(getApplicationContext(), Login.class);
                        startActivity(i);


                        // Fecha esta activity
                        finish();
                    }
                }, 4000);

            }

        }

