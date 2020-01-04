package t.br.prjtcc;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;

public class ChecklistParte2 extends AppCompatActivity {

    final int CAPTURE_IMAGE_REQUEST = 1;

    public ImageButton btnTirafoto;
    Button btnContratoFeito,btnFantasma;
    EditText objetosPortaLuva, objetosPortaMala, txtCPF;

    String bancoTraseiro = "", bancoDianteiro="", bagageiro="", chave="", extintor="", console="", tapete="",
            rodaespecial="", farol="", farolMilha="", lanterna="", radioDVD="", estepe="", triangulo="", macaco="", ferramentasCH="";
    File photoFile = null;
    Uri photoURI;
    ClasseCompartilha cp = new ClasseCompartilha();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_checklist_parte2);
        btnTirafoto = findViewById(R.id.btnTiraFot);
        btnContratoFeito = findViewById(R.id.btnContrato);
        btnFantasma = findViewById(R.id.btnFantasma);
        cp = new ClasseCompartilha();
        objetosPortaMala = findViewById(R.id.txtPortaMala);
        objetosPortaLuva = findViewById(R.id.txtPortaLuva);
        txtCPF = findViewById(R.id.txtCPFF);
        //@TODO Botão fantasma
btnFantasma.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {


    }
});
        ((TextView) findViewById(R.id.textView2)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtCPF.setText("114.858.794-17");
                objetosPortaLuva.setText("Luva");
                objetosPortaMala.setText("Mala");
                bancoTraseiro = "A";
                bancoDianteiro="U";
                bagageiro="T";
                chave="O";
                extintor="C";
                console="O";
                tapete="M";
                rodaespecial="P";
                farol="L";
                farolMilha="E";
                lanterna="T";
                radioDVD="E";
                estepe="0";
                triangulo="0";
                macaco="0";
                ferramentasCH="0";
            }
        });
        txtCPF.addTextChangedListener(Mask.insert(Mask.MaskType.CPF,  txtCPF));
    }


    public void botaoRadio(View v) {
        switch (v.getId()) {
            case R.id.btnTiraFot:

                cp.setCPF(txtCPF.getText().toString());
                capturaImage();
                break;
            case R.id.btnContrato:

                cp.setBancoDianteiro(bancoDianteiro);
                cp.setBancoTraseiro(bancoTraseiro);
                cp.setChave(chave);
                cp.setExtintor(extintor);
                cp.setConsole(console);
                cp.setTapete(tapete);
                cp.setRodaespecial(rodaespecial);
                cp.setObjetosPortaLuva(objetosPortaLuva.getText().toString());
                cp.setFarolMilha(farolMilha);
                cp.setFarol(farol);
                cp.setLanterna(lanterna);
                cp.setRadioDVD(radioDVD);
                cp.setObjetosPortaMala(objetosPortaMala.getText().toString());
                cp.setEstepe(estepe);
                cp.setMacaco(macaco);
                cp.setTriangulo(triangulo);
                cp.setFerramentasCH(ferramentasCH);
                cp.setBagageiro(bagageiro);

                Calendar c = Calendar.getInstance();
        int hour = c.get(Calendar.HOUR_OF_DAY);
        hour = hour - 3;
        int min = c.get(Calendar.MINUTE);
                String m = min+"";
        if(min<10){
                m = "0" + min;
            }
                cp.setHora(hour + ":" + m);
                Intent intent = new Intent(this, Adicionais.class);
                startActivity(intent);


                break;
            case R.id.radioBagageiroUsado:

                bagageiro = "Usado";
                break;
            case R.id.radioBagageiroSim:

                bagageiro = "Sim";
                break;
            case R.id.radioBagageiroNao:

                bagageiro = "Não";
                break;
            case R.id.radioBancoDianteiroUsado:

                bancoDianteiro = "Usado";
                break;
            case R.id.radioBancoDianteiroNovo:

                bancoDianteiro = "Novo";
                break;
            case R.id.radioBancoDianteiroVelho:

                bancoDianteiro = "Velho";
                break;
            case R.id.radioBancoTraseiroUsado:

                bancoTraseiro = "Usado";
                break;
            case R.id.radioBancoTraseiroNovo:

                bancoTraseiro = "Novo";
                break;
            case R.id.radioBancoTraseiroVelho:

                bancoTraseiro = "Velho";
                break;
            case R.id.radioChaveNao:

                chave = "Não";
                break;
            case R.id.radioChaveSim:

                chave = "Sim";
                break;
            case R.id.radioExtintorUsado:

                chave = "Usado";
                break;
            case R.id.radioExtintorNovo:

                chave = "Novo";
                break;
            case R.id.radioExtintorNao:

                chave = "Não";
                break;

            case R.id.radioConsoleNovo:

                console = "Novo";
                break;
            case R.id.radioConsoleUsado:

                console = "Usado";
                break;

            case R.id.radioTapeteNao:

                tapete = "Não";
                break;
            case R.id.radioTapeteNovo:

                tapete = "Sim";
                break;
            case R.id.radioTapeteUsado:

                tapete = "Usado";
                break;


            case R.id.radioRodasEspeciaisNao:

                rodaespecial = "Não";
                break;
            case R.id.radioRodasEspeciaisSim:

                rodaespecial = "Sim";
                break;
            case R.id.radioRodasEspeciaisUsadas:

                rodaespecial = "Usadas";
                break;

            case R.id.radioFarolNao:

                farol = "Quebrado";
                break;
            case R.id.radioFarolSim:

                farol = "Funcionando";
                break;

            case R.id.radioFarolMilhaNovo:

                farolMilha = "Funcionando";
                break;
            case R.id.radioFarolMilhaNao:

                farolMilha = "Quebrados";
                break;

            case R.id.radioRadioNao:

                radioDVD = "Não";
                break;
            case R.id.radioRadioSim:

                radioDVD = "Sim";
                break;

            case R.id.radioLanternaUsada:
                lanterna = "Usada";
                break;
            case R.id.radioLanternaNovo:
                lanterna = "Nova";
                break;

            case R.id.radioLanternaNao:
                lanterna = "Quebrada";
                break;
            case R.id.radioEstepeNao:

                estepe = "Não";
                break;
            case R.id.radioEstepeSim:

                estepe = "Estepe";
                break;

            case R.id.radioMacacoNao:

                macaco = "";
                break;
            case R.id.radioMacacoSim:

                macaco = "Sim";
                break;

            case R.id.radioTrianguloNao:

                triangulo = "Não";
                break;
            case R.id.radioTrianguloSim:

                triangulo = "Sim";
                break;
            case R.id.radioFerramentaNao:

                ferramentasCH = "Não";
                break;

            case R.id.radioFerramentaSim:

                ferramentasCH = "Sim";
                break;
        }
    }

    private File createImageFile() throws IOException {
   

        String imageFileName = "Carro_do_" + cp.getCPF()+"_Chamada_" + cp.getChamado();
        File storageDir = getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        File image = File.createTempFile(
                imageFileName,
                ".jpg",        
                storageDir      
        );


        return image;
    }

    private void capturaImage() {

        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.CAMERA, Manifest.permission.WRITE_EXTERNAL_STORAGE}, 0);
        } else {

            Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
            if (takePictureIntent.resolveActivity(getPackageManager()) != null) {

                try {

                    photoFile = createImageFile();
                    displayMessage(getBaseContext(), photoFile.getAbsolutePath());
                    Log.i("aa", photoFile.getAbsolutePath());

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
            Bitmap myBitmap = BitmapFactory.decodeFile(photoFile.getAbsolutePath());


            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            myBitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);
            byte[] imageBytes = baos.toByteArray();

            cp.setFotos(imageBytes);

        } else {
            displayMessage(getBaseContext(), "Request cancelled or something went wrong.");
        }
    }

}
