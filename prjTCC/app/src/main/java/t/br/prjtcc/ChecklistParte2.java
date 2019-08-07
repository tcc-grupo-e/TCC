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
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ChecklistParte2 extends AppCompatActivity {
    final int CAPTURE_IMAGE_REQUEST = 1;
    public ImageButton btnTirafoto;
    Button btnAssinaMotorista;

    File photoFile = null;
    private String mCurrentPhotoPath = "";
    Uri photoURI;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_checklist_parte2);
        btnTirafoto = findViewById(R.id.btnTiraFot);
        btnAssinaMotorista = findViewById(R.id.btnAssinaMotorista);
    }

    public void botao(View v) {
        switch (v.getId()) {
            case R.id.btnTiraFot:
                capturaImage();
                break;
            case R.id.btnAssinaMotorista:
                Intent intent = new Intent(this, AssinaturaMotorista.class);

                startActivity(intent);
                break;
        }
    }

    private File createImageFile() throws IOException {
        // Create an image file name
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        String imageFileName = "aa" + timeStamp + "_";
        File storageDir = getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        File image = File.createTempFile(
                imageFileName,  /* prefix */
                ".jpg",         /* suffix */
                storageDir      /* directory */
        );

        // Save a file: path for use with ACTION_VIEW intents
        mCurrentPhotoPath = image.getAbsolutePath();
        return image;
    }

    private void capturaImage() {

        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.CAMERA, Manifest.permission.WRITE_EXTERNAL_STORAGE}, 0);
        } else {

            Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
            if (takePictureIntent.resolveActivity(getPackageManager()) != null) {
                // Create the File where the photo should go
                try {

                    photoFile = createImageFile();
                    displayMessage(getBaseContext(), photoFile.getAbsolutePath());
                    Log.i("Mayank", photoFile.getAbsolutePath());

                    // Continue only if the File was successfully created
                    if (photoFile != null) {
                        photoURI = FileProvider.getUriForFile(this,
                                "t.br.prjtcc.fileprovider",
                                photoFile);
                        takePictureIntent.putExtra(MediaStore.EXTRA_OUTPUT, photoURI);
                        startActivityForResult(takePictureIntent, CAPTURE_IMAGE_REQUEST);
                    }
                } catch (Exception ex) {
                    // Error occurred while creating the File
                    displayMessage(getBaseContext(), ex.getMessage().toString());
                }


            } else {
                displayMessage(getBaseContext(), "Nullll");
            }

        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {

            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED
                    && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                capturaImage();

            } else {
                Toast.makeText(getBaseContext(), "Deu ruim ai", Toast.LENGTH_LONG).show();

            }


    }

    private void displayMessage(Context context, String message) {
        Toast.makeText(context, message, Toast.LENGTH_LONG).show();
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {


        if (requestCode == CAPTURE_IMAGE_REQUEST && resultCode == RESULT_OK) {
            Bitmap myBitmap =   BitmapFactory.decodeFile(photoFile.getAbsolutePath());


            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            myBitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);
            byte[] imageBytes = baos.toByteArray();

        } else {
            displayMessage(getBaseContext(), "Request cancelled or something went wrong.");
        }
    }

}
