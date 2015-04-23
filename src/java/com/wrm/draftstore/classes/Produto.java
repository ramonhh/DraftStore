/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wrm.draftstore.classes;

/**
 *
 * @author ramon.ahonorio
 */
public class Produto {
    
    private String marca;
    
    private String modelo;
    
    private String tipoProduto;
    
    private float custo;
    
    private float porcentagemLucro;

    public float getPorcentagemLucro() {
        return porcentagemLucro;
    }
    public void setPorcentagemLucro(float porcentagemLucro) {
        this.porcentagemLucro = porcentagemLucro;
    }
    public float getCusto() {
        return custo;
    }
    public void setCusto(float custo) {
        this.custo = custo;
    }
    public String getTipoProduto() {
        return tipoProduto;
    }
    public void setTipoProduto(String tipoProduto) {
        this.tipoProduto = tipoProduto;
    }
    public String getModelo() {
        return modelo;
    }
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    public String getMarca() {
        return marca;
    }
    public void setMarca(String marca) {
        this.marca = marca;
    }

}
