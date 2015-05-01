<%-- 
    Document   : login
    Created on : 23/04/2015, 18:59:47
    Author     : fernando.tsuda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>Draftstore</title>
    </head>
    <body>
        <h1>Efetue seu login</h1>
        <div>
            <form action="Login" method="post" accept-charset="UTF-8" enctype="application/x-www-form-urlencoded">
                <p><label>Nome de usuário:</label><input type="text" name="nome" /></p>
                <p><label>Senha:</label><input type="password" name="senha" /></p>
                <p><input type="submit" value="Entrar" /></p>
            </form>
        </div>
    </body>
</html>
