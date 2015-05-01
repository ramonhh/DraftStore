<%-- 
    Document   : cadastrarFornecedores
    Created on : 23/04/2015, 21:24:58
    Author     : ramon.ahonorio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

﻿<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>WRM - Sistema de Gerenciamento</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="resources/css/estilos.css" type="text/css" rel="stylesheet">
  </head>
  <body>
    <header>
      <img id="logo" src="resources/img/wrm-logoteste.png">
      <div class="texto" id="titulo"><h1>Cadastrar Fornecedores</h1></div>
    </header>
    <div class="row">
      <div class="col-sm-3">
        <div class="sidebar-nav">
          <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <span class="visible-xs navbar-brand">Menu</span>
            </div>
            <div class="navbar-collapse collapse sidebar-navbar-collapse">
              <ul class="nav navbar-nav">
                <li><a href="#">Registro de vendas</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Produtos <b class="caret"></b></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="buscarProduto.html">Buscar</a></li>
                    <li><a href="cadastrarProdutos.html">Cadastrar</a></li>
                    
                  </ul>
                </li>

                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Funcionários <b class="caret"></b></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="buscarFuncionario.html">Buscar</a></li>
                    <li><a href="cadastrarFuncionarios.html">Cadastrar</a></li>
                    
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Fornecedores <b class="caret"></b></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="buscarFornecedor.html">Buscar</a></li>
                    <li><a href="cadastrarFornecedores.html">Cadastrar</a></li>
                    
                  </ul>
                </li>
                <li><a href="#">Relatórios <span class="badge">4</span></a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </div>
      </div>
      <div class="col-sm-9">
        <!-- ********************** Inserir o conteudo aqui! ********************** -->

        <div class="form">
            <form action="CadastrarFornecedorServlet" method="POST" 
                    accept-charset="UTF-8"
                    enctype="application/x-www-form-urlencoded"
                    name="cadastrarProduto">
			<p>
				<label> Razão Social </label>
				<input type="text" class="inputRazao" name="razaoSocial">
			</p>
			<p class="comboBox">
				<label> CNPJ </label>
				<input type="text" class="inputsFornecedor" name="cnpj">
			</p>
			<p class="comboBox">
				<label class="labelFornecedor" name="fornecedor"> CEP </label>
				<input type="text" class="inputFornecedor">
			</p>
			<p>
				<label> Endereço </label>
				<input type="text" class="inputRazao" name="endereco">
			</p>
			<p class="comboBox">
				<label> Bairro </label>
				<input type="text" class="inputsFornecedor" name="bairro">
			</p>
			<p class="comboBox">
				<label class="labelFornecedor"> Número </label>
				<input type="text" class="inputFornecedor" name="numero">
			</p>
			<p class="comboBox">
				<label>Cidade</label>
				<input type="text" class="inputsFornecedor" name="cidade">
			</p>
			<p class="comboBox">
				<label class="labelFornecedor"> UF </label>
				<input type="text" class="inputFornecedor" name="uf">
			</p>
				<p>
				<label> Telefone </label>
				<input type="text" class="inputRazao" name="telefone">
			</p>
				<label> Email </label>
				<input type="text" class="inputRazao" name="email">
			</p>
				<label> Site </label>
				<input type="text" class="inputRazao" name="site">
			</p>
          <div class="botoesFormulario">
            <button type="button" class="btn btn-danger">Cancelar</button>
            <button type="submit" class="btn btn-default">Cadastrar</button>
          </div>
          </form>
      </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html> 