package t.br.prjtcc;


import com.google.maps.model.LatLng;

import java.util.ArrayList;
import java.util.List;

public class ClasseCompartilha {
    static String bancoTraseiro;
    static String bancoDianteiro;
    static String bagageiro;
    static String chave;
    static String extintor;
    static String console;
    static String tapete;
    static String objetosPortaLuva;
    static String rodaespecial;
    static String farol;
    static String farolMilha;
    static String lanterna;
    static String radioDVD;
    static String objetosPortaMala;
    static String estepe;
    static String triangulo;
    static String macaco;
    static String ferramentasCH;
    static String assinaturaM;
    static String assinaturaC;
    static String ipRede = "10.0.2.2";
    public static String[] getEderecos() {
        return ederecos;
    }

    public static void setEderecos(String[] ederecos) {
        ClasseCompartilha.ederecos= new String[ederecos.length];
        ClasseCompartilha.ederecos = ederecos;
    }

    static String[] ederecos;

    public static List<LatLng> getEnderecos() {

        return enderecos;
    }

    public static void setEnderecos(List<LatLng> enderecos) {
        ClasseCompartilha.enderecos = new ArrayList<>(enderecos.size());
        ClasseCompartilha.enderecos = enderecos;
    }

    static List<LatLng> enderecos;



    public static String getChamado() {
        return chamado;
    }

    public static void setChamado(String chamado) {
        ClasseCompartilha.chamado = chamado;
    }

    static String chamado;

    public static String getCPF() {
        return CPF;
    }

    public static void setCPF(String CPF) {
        ClasseCompartilha.CPF = CPF;
    }

    static String CPF;

    public static ArrayList getFotos() {
        return foto;
    }

    public static void setFotos(byte[] fotos) {
        foto.add(fotos);
    }

    static byte[] fotos;
    static String id_caminhao;
    static ArrayList foto = new ArrayList();

    public static String getObservacao() {
        return observacao;
    }

    public static void setObservacao(String observacao) {
        ClasseCompartilha.observacao = observacao;
    }

    public static String getKmSaida() {
        return kmSaida;
    }

    public static void setKmSaida(String kmSaida) {
        ClasseCompartilha.kmSaida = kmSaida;
    }

    public static String getHora() {
        return hora;
    }

    public static void setHora(String hora) {
        ClasseCompartilha.hora = hora;
    }

    static String observacao;
    static String kmSaida;
    static String hora;


    public static String getAssinaturaM() {
        return assinaturaM;
    }

    public static void setAssinaturaM(String assinaturaM) {
        ClasseCompartilha.assinaturaM = assinaturaM;
    }


    public static String getId_caminhao() {
        return id_caminhao;
    }

    public static void setId_caminhao(String id_caminhao) {
        ClasseCompartilha.id_caminhao = id_caminhao;
    }

    public static String getAssinaturaC() {
        return assinaturaC;
    }

    public static void setAssinaturaC(String assinaturaC) {
        ClasseCompartilha.assinaturaC = assinaturaC;
    }


    public static String getBancoTraseiro() {
        return bancoTraseiro;
    }

    public static void setBancoTraseiro(String bancoTraseiro) {
        ClasseCompartilha.bancoTraseiro = bancoTraseiro;
    }

    public static String getBancoDianteiro() {
        return bancoDianteiro;
    }

    public static void setBancoDianteiro(String bancoDianteiro) {
        ClasseCompartilha.bancoDianteiro = bancoDianteiro;
    }

    public static String getBagageiro() {
        return bagageiro;
    }

    public static void setBagageiro(String bagageiro) {
        ClasseCompartilha.bagageiro = bagageiro;
    }

    public static String getChave() {
        return chave;
    }

    public static void setChave(String chave) {
        ClasseCompartilha.chave = chave;
    }

    public static String getExtintor() {
        return extintor;
    }

    public static void setExtintor(String extintor) {
        ClasseCompartilha.extintor = extintor;
    }

    public static String getConsole() {
        return console;
    }

    public static void setConsole(String console) {
        ClasseCompartilha.console = console;
    }

    public static String getTapete() {
        return tapete;
    }

    public static void setTapete(String tapete) {
        ClasseCompartilha.tapete = tapete;
    }

    public static String getObjetosPortaLuva() {
        return objetosPortaLuva;
    }

    public static void setObjetosPortaLuva(String objetosPortaLuva) {
        ClasseCompartilha.objetosPortaLuva = objetosPortaLuva;
    }

    public static String getRodaespecial() {
        return rodaespecial;
    }

    public static void setRodaespecial(String rodaespecial) {
        ClasseCompartilha.rodaespecial = rodaespecial;
    }

    public static String getFarol() {
        return farol;
    }

    public static void setFarol(String farol) {
        ClasseCompartilha.farol = farol;
    }

    public static String getFarolMilha() {
        return farolMilha;
    }

    public static void setFarolMilha(String farolMilha) {
        ClasseCompartilha.farolMilha = farolMilha;
    }

    public static String getLanterna() {
        return lanterna;
    }

    public static void setLanterna(String lanterna) {
        ClasseCompartilha.lanterna = lanterna;
    }

    public static String getRadioDVD() {
        return radioDVD;
    }

    public static void setRadioDVD(String radioDVD) {
        ClasseCompartilha.radioDVD = radioDVD;
    }

    public static String getObjetosPortaMala() {
        return objetosPortaMala;
    }

    public static void setObjetosPortaMala(String objetosPortaMala) {
        ClasseCompartilha.objetosPortaMala = objetosPortaMala;
    }

    public static String getEstepe() {
        return estepe;
    }

    public static void setEstepe(String estepe) {
        ClasseCompartilha.estepe = estepe;
    }

    public static String getTriangulo() {
        return triangulo;
    }

    public static void setTriangulo(String triangulo) {
        ClasseCompartilha.triangulo = triangulo;
    }

    public static String getMacaco() {
        return macaco;
    }

    public static void setMacaco(String macaco) {
        ClasseCompartilha.macaco = macaco;
    }

    public static String getFerramentasCH() {
        return ferramentasCH;
    }

    public static void setFerramentasCH(String ferramentasCH) {
        ClasseCompartilha.ferramentasCH = ferramentasCH;
    }


}

