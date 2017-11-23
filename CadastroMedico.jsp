<%-- 
    Document   : CadastroMedico
    Created on : 23/11/2017, 16:29:27
    Author     : Vitor Assunção
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cadastrar Medico</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 
    <body>
           <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="listarMedico.jsp">SiSHealth</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="listarMedico.jsp">Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Medico<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="CadastroMedico.jsp">Cadastrar</a></li>
                        <li><a href="listarMedico.jsp">Listar</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <section class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                ​
                <form method="POST" action="ControllerMedico">
                    <fieldset>
                    <legend>Cadastro</legend>
                    <div class="form-group">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" placeholder="Digite o nome" name="txtnome">
                    </div>
                    <div class="form-group">
                        <label for="rg">RG:</label>
                        <input type="text" class="form-control" id="rg" placeholder="Digite o RG" name="txtrg">
                    </div>
                    <div class="form-group">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" placeholder="Digite o CPF" name="txtcpf">
                    </div>
                    <div class="form-group">
                        <label for="crm">CRM:</label>
                        <input type="text" class="form-control" id="crm" placeholder="Digite o CRM" name="txtcrm">
                    </div>
                    <div class="form-group">
                        <label for="login">Login:</label>
                        <input type="text" class="form-control" id="login" placeholder="Digite o Login" name="txtlogin">
                    </div>
                    <div class="form-group">
                        <label for="senha">Senha:</label>
                        <input type="text" class="form-control" id="senha" placeholder="Digite a Senha" name="txtsenha">
                    </div>
                    <div class="form-group">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" placeholder="Digite o CPF" name="txtcpf">
                    </div>
                    <button type="submit" class="btn btn-info btn-lg">Cadastrar</button>
                </fieldset>
                </form>
               
            </div>
            <div class="col-sm-3"></div>
        </div>
       
    </section>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
