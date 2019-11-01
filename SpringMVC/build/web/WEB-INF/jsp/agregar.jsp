

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Crud</title>
    </head>  
  
        
    <body>
        <div class="conainer mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Agregar Nuevo Registro</h4>
                </div>
                
                <div class="card-body">
                    <form method="POST">
                        <label>Nombres</label>
                        <input type="text" name="nom" class="form-control">
                         <label>Correo</label>
                        <input type="text" name="correo" class="form-control">
                         <label>Nacionalidad</label>
                        <input type="text" name="nacio" class="form-control">
                        <input type="submit" value="Agregar" class="btn btn-success">
                        <a href="index">Regresar</a>
                                                
                        
                    </form>
                    
                </div>
            </div>  
        </div>
    </body>
</html>
