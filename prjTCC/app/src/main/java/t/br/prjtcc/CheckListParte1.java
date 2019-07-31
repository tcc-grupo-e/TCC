package t.br.prjtcc;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageButton;
import android.widget.Toast;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CheckListParte1 extends AppCompatActivity {
    final int CAPTURE_IMAGE_REQUEST = 1;
    public ImageButton btnTirafoto;
    File photoFile = null;
    private String mCurrentPhotoPath = "";
    Uri photoURI;

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
