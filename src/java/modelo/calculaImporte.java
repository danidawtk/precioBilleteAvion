/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Donus
 */
public class calculaImporte {
    private String FechaVuelo;
    private int cant;
    private double precio;
    private int mes;
    
    public calculaImporte(String FechaVuelo, int cant){
        this.FechaVuelo = FechaVuelo;
        this.cant = cant;
    }

    public String getFechaVuelo() {
        return FechaVuelo;
    }

    public int getCant() {
        return cant;
    }

    public int getMes() {
        return mes;
    }
    
    public Double CalculaImporte(){
        mes=Integer.parseInt(FechaVuelo.substring(5,7));
        if( mes >=5 & mes <=9){
            precio=150.0;
        } else{
            precio =90.0;
        }
        
        double precioSinIva=precio*cant;
        return precioSinIva*1.21;
    }
}
