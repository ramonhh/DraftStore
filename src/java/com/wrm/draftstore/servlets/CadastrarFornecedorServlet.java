/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wrm.draftstore.servlets;

import com.wrm.draftstore.classes.Fornecedor;
import com.wrm.draftstore.database.ConexaoBDJavaDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ramon.ahonorio
 */
@WebServlet(name = "CadastrarFornecedorServlet", urlPatterns = {"/CadastrarFornecedorServlet"})
public class CadastrarFornecedorServlet extends HttpServlet {

    public void cadastrarFornecedor(Fornecedor f){
        ConexaoBDJavaDB conexaoBD
            = new ConexaoBDJavaDB("draftstoredb");
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "INSERT INTO TB_FORNEC " // Notar que antes de fechar aspas tem espaço em branco!
                + "(RAZAO_SOCIAL, CNPJ, CEP, ENDERECO, BAIRRO, NUMERO, CIDADE, ESTADO, TELEFONE, EMAIL, SITE) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
        conn = conexaoBD.obterConexao();
        stmt = conn.prepareStatement(sql);
        
            System.out.println(f.getNumero());
        
        stmt.setString(1, f.getRazaoSocial());
        stmt.setInt(2, 231231);
        stmt.setInt(3, 3121231);
        stmt.setString(4, f.getEndereco());
        stmt.setString(5, f.getBairro());
        stmt.setInt(6, f.getNumero());
        stmt.setString(7, f.getCidade());
        stmt.setString(8, f.getEstado());
        stmt.setString(9, f.getTelefone());
        stmt.setString(10, f.getEmail());
        stmt.setString(11, f.getSite());
        
        stmt.executeUpdate();
        
        System.out.println("Registro incluido com sucesso.");

      } catch (SQLException | ClassNotFoundException ex) {
        Logger.getLogger(CadastrarFornecedorServlet.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("-> " + ex.getMessage());
      } finally {
        if (stmt != null) {
          try {
            stmt.close();
          } catch (SQLException ex) {
            Logger.getLogger(CadastrarFornecedorServlet.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
        if (conn != null) {
          try {
            conn.close();
          } catch (SQLException ex) {
            Logger.getLogger(CadastrarFornecedorServlet.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
      }
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
//        String nome = request.getParameter("nomeXpto");
//        String dtNascStr = request.getParameter("dtNascXpto");
//        String telefone = request.getParameter("telefoneXpto");
//        String email = request.getParameter("emailXpto");
//        Pessoa p = new Pessoa();
        
        String razaoSocial = request.getParameter("razaoSocial");
        String cnpj = request.getParameter("cnpj");
        String cep = request.getParameter("cep");
        String endereco = request.getParameter("endereco");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("uf");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");
        String site = request.getParameter("site");
        String numero = request.getParameter("numero");
        
        Fornecedor f = new Fornecedor(razaoSocial, cnpj, cep, endereco, bairro, 
                cidade, estado, telefone, email, site, Integer.parseInt(numero));
        
        cadastrarFornecedor(f);
        
        response.sendRedirect("resultado.jsp");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
