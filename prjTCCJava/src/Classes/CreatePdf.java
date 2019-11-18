package Classes;


import java.io.FileOutputStream;
import java.util.Date;
import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Section;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.sql.SQLException;

public class CreatePdf {

    Valida val = new Valida();
    ClasseConexao clas = new ClasseConexao();
    //https://www.vogella.com/tutorials/JavaPDF/article.html
    private static String FILE = System.getProperty("user.dir") + "\\Relatório.pdf";
    private String In, Fi;
    private String[][] dados1,dados2;
    private static Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
    private static Font redFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.RED);
    private static Font subFont = new Font(Font.FontFamily.TIMES_ROMAN, 16, Font.BOLD);
    private static Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);

    public void creat(String Inicio, String Fim) {
        try {
            System.out.println(Inicio + Fim);
            In = Inicio;
            Fi = Fim;
            System.out.println(System.getProperty("user.dir"));
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(FILE));
            document.open();
            addMetaData(document);
            addContent(document);
            document.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    // iText allows to add metadata to the PDF which can be viewed in your Adobe
    // Reader
    // under File -> Properties
    private void addMetaData(Document document) {
        document.addTitle("Relatório AutoSocorro");
        document.addSubject("Using iText");
        document.addKeywords("Java, Caminhão");
        document.addAuthor("AutoSocorro");
        document.addCreator("AutoSocorro");
    }

    private  void addContent(Document document)
            throws DocumentException, BadElementException, IOException {
        String filename = System.getProperty("user.dir")+"/src/img/LogoMenor.png";
        Image image = Image.getInstance(filename);
        document.add(image);

        Paragraph par = new Paragraph();
        addEmptyLine(par, 1);
        par.add(new Paragraph("Relatório", catFont));
        addEmptyLine(par, 1);
        par.add(new Paragraph("Report generated by: AutoSocorro, " + new Date(), smallBold));
        addEmptyLine(par, 1);

        par.add(new Paragraph("Vendas,Despesas e Lucros ", subFont));
        addEmptyLine(par, 1);
        par.add(new Paragraph("Dados coletados entre as datas:"+In+" e "+Fi, redFont));
        addEmptyLine(par, 1);
        createTable(par);
        addEmptyLine(par, 1);
        par.add(new Paragraph("Este documento ainda não está legalizado oficialmente e não pode ser divulgado de qualquer forma.", redFont));
        document.add(par);
    }

    private void createTable(Paragraph par)
            throws BadElementException {
        PdfPTable table = new PdfPTable(5);
        //setar as colunas
        try {
            table.addCell(createcell("Inicio", 1));
            table.addCell(createcell("Fim", 1));
            table.addCell(createcell("Vendas", 1));
            table.addCell(createcell("Despesas", 1));
            table.addCell(createcell("Lucro", 1));
            dados1 = val.Lucro(In, Fi);
            dados2 = val.VendasDespesas(In, Fi);
            for (int i = 0; i <val.Lucro(In, Fi)[0].length-2; i++) {
                table.addCell(createcell(dados1[1][i], 2));
                table.addCell(createcell(dados1[1][i+1], 2));
                table.addCell(createcell(dados2[0][i], 2));
                table.addCell(createcell(dados2[2][i], 2));
                table.addCell(createcell(""+Float.parseFloat(dados1[0][i]), 2));
            }
//            table.addCell(createcell("10/10/2015", 2));
//            table.addCell(createcell("10/01/2016", 2));
//            table.addCell(createcell("1.2", 2));
//            table.addCell(createcell("2.1", 2));
//            table.addCell(createcell("2.2", 2));
            table.setWidthPercentage(100);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        par.add(table);
    }

    public PdfPCell createcell(String var, int type) {
        PdfPCell campos = new PdfPCell(new Phrase(var));

        if (type == 1) {
            campos.setBorderColor(BaseColor.GRAY);
            campos.setBorderWidthRight(0);
            campos.setBorderWidthLeft(0);
            campos.setBorderWidthTop(0);
            campos.setHorizontalAlignment(Element.ALIGN_LEFT);
        }
        if (type == 2) {
            campos.setBorderColor(BaseColor.GRAY);
            campos.setBorderWidthRight(0);
            campos.setBorderWidthLeft(0);
            campos.setBorderWidthTop(0);
            campos.setBorderWidthBottom(0);
            campos.setHorizontalAlignment(Element.ALIGN_LEFT);
        }

        return campos;
    }

    private static void createList(Section subCatPart) {
        List list = new List(true, false, 10);
        list.add(new ListItem("First point"));
        list.add(new ListItem("Second point"));
        list.add(new ListItem("Third point"));
        subCatPart.add(list);
    }

    private static void addEmptyLine(Paragraph paragraph, int number) {
        for (int i = 0; i < number; i++) {
            paragraph.add(new Paragraph(" "));
        }
    }
}
