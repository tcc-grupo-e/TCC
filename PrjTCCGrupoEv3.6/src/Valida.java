
import com.sun.javafx.binding.StringFormatter;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Valida {
    int salario;
    public int salarioInt(String salar)
    {
    salar = salar.replace(".","");
    salar = salar.replace("R$","");
    salario = Integer.parseInt(salar);
    return salario;
    }
    public String apelido(String nome)
    {
    String[] str = nome.split(" ");
    String[] str2 = str[1].split("");
    str2[0] = str[0]+" ."+str2[0];
    return str2[0];
    }
    
    public void AddFile(String texto) throws IOException
  {
      String Filename = "texto.txt";
      File  file  = new File(Filename);
      if(!file.exists()){
        file.createNewFile();
      }
        BufferedWriter bf;
        FileWriter wr = new FileWriter(file.getAbsoluteFile());
        bf = new BufferedWriter(wr);
        bf.write(texto);
        bf.close();
        System.out.println("Arquivo salvo");
  }
}
