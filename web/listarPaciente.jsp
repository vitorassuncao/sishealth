<%-- 
    Document   : listarPaciente
    Created on : 21/11/2017, 11:32:34
    Author     : Heitor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.sistema.model.dao.PacienteDao"%>
<%@page import="com.sistema.model.bean.Paciente"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Listar Paciente</title>

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
        List<Paciente> listPaciente = new ArrayList<Paciente>();
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
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <section class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                ​<h2>Lista de Pacientes Cadastrados</h2>
                  
                <input class="form-control" id="myInput" type="text" placeholder="Digite algo para pesquisar Paciente( nome, RG, CPF)...">
                <br>
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
                        <%  listPaciente = pacienteDao.listar();
                            for(Paciente b: listPaciente) {
                        %>
                        <tr>
                            <td><%= b.getPacnome()%></td>
                            <td><%= b.getPacrg()%></td>
                            <td><%= b.getPaccpf()%></td>
                            <td>
                                <input type="button" class="btn btn-default" value="Alterar" name="btAlterar" onclick="location='AlterarPaciente.jsp?codigo=<%=b.getPaccod()%>'"/>
                                <input type="button" class="btn btn-danger" value="Excluir" name="btExcluir" onclick="location='ExcluirPaciente.jsp?codigo=<%=b.getPaccod()%>'"/>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

                
               
        </div>
        <div class="col-sm-3"></div>  
    </section>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script>
            $(document).ready(function(){
                $("#myInput").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $("#myTable tr").filter(function() {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
    </script>
  </body>
</html>
