<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Crud</title>
        
    </head>

    <body>
    <di class="container mt-4">
        <div class="card border-info">
            <div class="card-header bg-info text-white">
                <a href="agregar" class="btn btn-primary">Agregar</a>
            </div>
            
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NOMBRES</th>
                            <th>CORREO</th>
                            <th>NACIONALIDAD</th>
                            <th>Accion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dato" items="${lista}">
                        <tr>
                            <td>${dato.Id}</td>
                            <td>${dato.Nombres}</td>
                            <td>${dato.Correo}</td>
                            <td>${dato.Nacionalidad}</td>
                            <td>
                                <a href="editar?id=${dato.Id}" class="btn btn-warning">Editar</a>
                                <a class="btn btn-danger">Eliminar</a>
                                
                            </td>
                            </c:forEach>
                        </tr>
                    </tbody>
                </table>

                
            </div>
            
        </div>
        
    </di>
      
    </body>
</html>
