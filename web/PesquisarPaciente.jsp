<%-- 
    Document   : PesquisarPaciente
    Created on : 23/11/2017, 16:23:16
    Author     : Heitor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.sistema.model.dao.PacienteDao"%>
<%@page import="com.sistema.model.bean.Paciente"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cadastrar Paciente</title>

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
    <%
        Paciente paciente = null;
        PacienteDao pacienteDao = new PacienteDao();
        String nome = request.getParameter("txtnome");
    %>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="listarPaciente.jsp">SiSHeath</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="listarPaciente.jsp">Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Paciente<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="CadastroPaciente.jsp">Cadastrar</a></li>
                        <li><a href="listarPaciente.jsp">Listar</a></li>
                        <li><a href="PesquisarPaciente.jsp">Pesquisar</a></li>
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
                <form method="POST" action="">
                    <fieldset>
                        <legend>Pesquisar</legend>   
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Digite o CPF" name="txtcpf">
                        </div>
                        <button type="submit" class="btn btn-info btn-md" >Pesquisar</button>
                    </fieldset>
                    
                    <br>
                </form>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>RG</th>
                            <th>CPF</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <%  
                            if(request.getParameter("txtcpf") != null || request.getParameter("txtcpf") != ""){
                                paciente = pacienteDao.consultarPorcpf(request.getParameter("txtcpf"));
                                if(paciente != null){
                        %>
                        <tr>
                            <td><%= paciente.getPacnome()%></td>
                            <td><%= paciente.getPacrg()%></td>
                            <td><%= paciente.getPaccpf()%></td>
                            <td>
                                
                            </td>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </tbody>
                </table>
               
            </div>
            <div class="col-sm-3"></div>
        </div>
       
    </section>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
