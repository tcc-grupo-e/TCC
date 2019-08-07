package t.br.prjtcc;


import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.view.View;

public class CheckListParte1 extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_list_parte1);

    }

    public void botao(View v) {

        switch (v.getId()) {
            case R.id.btnAvancar:
                startActivity(new Intent(this,ChecklistParte2.class));
                break;
        }

    }



}
