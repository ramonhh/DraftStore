/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wrm.draftstore.classes;

/**
 *
 * @author ramonhonorio
 */
public class Usuario {
    private String login;
    private String senha;
    private String nomeDoFuncionario;
    private String papel;
    
    public Usuario(String login, String senha, String nomeDoFuncionario, String papel) {
        this.login = login;
        this.senha = senha;
        this.nomeDoFuncionario = nomeDoFuncionario;
        this.papel = papel;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNomeDoFuncionario() {
        return nomeDoFuncionario;
    }

    public void setNomeDoFuncionario(String nomeDoFuncionario) {
        this.nomeDoFuncionario = nomeDoFuncionario;
    }

    public String getPapel() {
        return papel;
    }

    public void setPapel(String papel) {
        this.papel = papel;
    }
    
    
}
