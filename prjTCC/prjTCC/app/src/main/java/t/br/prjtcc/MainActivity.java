package t.br.prjtcc;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void botoes(View v){
        switch (v.getId()){
            case R.id.btnChecklist:

            startActivity(new Intent(this, CheckListParte1.class));

            break;



        }


    }
}
