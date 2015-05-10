<%-- 
    Document   : cadastrarFornecedores
    Created on : 23/04/2015, 21:24:58
    Author     : ramon.ahonorio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>WRM - Sistema de Gerenciamento</title>

  <!-- Bootstrap -->
  <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <link href="../resources/css/estiloCadastro.css" type="text/css" rel="stylesheet">
</head>
<body>
  <header>
    <img id="logo" src="../resources/img/wrm-logoteste.png">
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
            <span class="visible-xs navbar-brand">Menu de navegação</span>
          </div>
          <div class="navbar-collapse collapse sidebar-navbar-collapse">
              <ul class="nav navbar-nav">
                <li>
                  <a href="RevistroVenda">Registro de vendas</a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Produtos <b class="caret"></b></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li>
                      <a href="BuscarProduto">Buscar </a>
                    </li>
                    <li>
                      <a href="CadastrarProduto">Cadastrar</a>
                    </li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Funcionários <b class="caret"></b></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li>
                     <a href="BuscarFuncionario">Buscar </a>
                    </li>
                    <li>
                      <a href="CadastrarFuncionario">Cadastrar</a>
                    </li>

                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Fornecedores <b class="caret"></b></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li>
                      <a href="BuscarFornecedor">Buscar </a>
                    </li>
                    <li>
                      <a href="CadastrarFornecedor">Cadastrar</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="#">Relatórios <span class="badge">4</span></a>
                </li>
              </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="col-sm-9">
      <!-- ********************** Inserir o conteudo aqui! ********************** -->

      <form class="form-inline" 
            action="CadastrarFornecedor"
            method="POST"
            accept-charset="UTF-8"
            enctype="application/x-www-form-urlencoded">

        <div class="normal">
          <label> Razão Social </label>
          <input type="text" class="inputRazao" name="razaoSocial">
        </div>
        <div>
          <label> CNPJ </label>
          <input type="text" class="inputsFornecedor" name="cnpj">
          <div class="quebra">
          <label class="labelFornecedor"> CEP </label>
          <input type="text" class="inputFornecedor" name="cep">
          </div>
        </div>
        <div class="normal">
          <label> Endereço </label>
          <input type="text" class="inputRazao" name="endereco">
        </div>
        <div>
          <label> Bairro </label>
          <input type="text" class="inputsFornecedor" name="bairro">
          <div class="quebra">
            <label class="labelFornecedor"> Número </label>
            <input type="text" class="inputFornecedor" name="numero">
          </div>
        </div>
        <div>
          <label>Cidade</label>
          <input type="text" class="inputsFornecedor" name="cidade">
          <div class="quebra">
            <label class="labelFornecedor"> UF </label>
            <input type="text" class="inputFornecedor" name="uf">
          </div>
        </div>
        <div class="normal">
          <label> Telefone </label>
          <input type="text" class="inputRazao" name="telefone">
        </div>
        <div class="normal">
          <label> Email </label>
          <input type="text" class="inputRazao" name="email">
        </div>
        <div class="normal">
          <label> Site </label>
          <input type="text" class="inputRazao" name="site">
        </div>
          <div class="botoesFormulario">
            <button type="button" class="btn btn-danger">Cancelar</button>
            <button type="submit" class="btn btn-default">Cadastrar</button>
          </div>
      </form>

      
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
  </html>