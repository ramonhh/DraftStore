<%-- 
    Document   : agenda
    Created on : 09/04/2015, 20:45:25
    Author     : fernando.tsuda
--%>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"
           uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Agenda - PI3</title>
        <meta charset="UTF-8">
        <link href="estilos.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <h1>Agenda</h1>
        <table>
            <tr>
                <th>#</th>
                <th>ID</th>
                <th>Nome</th>
                <th>Data Nascimento</th>
                <th>Telefone</th>
                <th>E-mail</th>
            </tr>
            <c:forEach items="${lista}" var="pessoa" varStatus="stat">
            <tr>
                <td><c:out value="${stat.count}" /></td>
                <td><c:out value="${pessoa.id}" /></td>
                <td><c:out value="${pessoa.nome}" /></td>
                <td><fmt:formatDate 
                    value="${pessoa.dtNasc}" 
                    pattern="dd/MM/yyyy" /></td>
                <td><c:out value="${pessoa.telefone}" /></td>
                <td><c:out value="${pessoa.email}" /></td>
            </tr>
            </c:forEach>
        </table>
        <hr/>
        <form action="IncluirPessoaServlet" method="post" 
              accept-charset="UTF-8"
              enctype="application/x-www-form-urlencoded">
            <fieldset>
                <legend>Incluir Pessoa</legend>
                <p>
                    <label for="txtNome">Nome:</label>
                    <input type="text" id="txtNome" name="nomeXpto" />
                </p>
                <p><label for="txtDtNasc">Data de Nascimento:</label>
                    <input type="date" id="txtDtNasc" name="dtNascXpto" /></p>
                
                <p><label for="txtTelefone">Telefone:</label> <input type="text" id="txtTelefone" name="telefoneXpto" /> </p>
                <p><label for="txtEmail">E-mail:</label> <input type="text" id="txtEmail" name="emailXpto" /> </p>
                <p id="botao"><input type="submit" value="Salvar" /> </p>
            </fieldset>
        </form>

        <p><a href="Logout">Sair</a> (Logado como ${sessionScope.usuario.nome})</p>
    </body>

</html>
