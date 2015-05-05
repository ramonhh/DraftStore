/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wrm.draftstore.servlets.autenticacao;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.wrm.draftstore.classes.*;

/**
 *
 * @author fernando.tsuda
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {

  // OBS: Usuarios mantidos em um mapa somente como exemplo.
  // A validação deve ser feita com os dados armazenados no BD.
  private static final Map<String, Usuario> USUARIOS_CADASTRADOS;

  static {
    USUARIOS_CADASTRADOS = new HashMap<String, Usuario>();
    USUARIOS_CADASTRADOS.put("fulano", new Usuario("fulano", "abcd1234", new String[]{"ADMIN", "BASICO"}));
    USUARIOS_CADASTRADOS.put("ciclano", new Usuario("ciclano", "abcd1234", new String[]{"BASICO"}));
    USUARIOS_CADASTRADOS.put("ramonh", new Usuario("ramonh", "senac15", new String[]{"ADMIN"}));
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
    String nome = request.getParameter("nome");
    String senha = request.getParameter("senha");

    // Validar nome de usuário e senha.
    Usuario usuario = validar(nome, senha);
    if (usuario != null) {
      HttpSession sessao = request.getSession(false);
      if (sessao != null) {
        // Força invalidação da sessão anterior.
        sessao.invalidate();
      }
      sessao = request.getSession(true);
      sessao.setAttribute("usuario", usuario);
      response.sendRedirect("Servlet/BuscarFornecedor");
      return;
      // FIM CASO SUCESSO
    }
    response.sendRedirect("erroLogin.jsp");

  }

  // Implementar aqui a validação do usuário com os dados
  // armazenados no banco de dados.
  private Usuario validar(String nome, String senha) {
    Usuario usuario = USUARIOS_CADASTRADOS.get(nome);
    if (usuario != null && usuario.autenticar(nome, senha)) {
      return usuario;
    }
    return null;
  }

}
