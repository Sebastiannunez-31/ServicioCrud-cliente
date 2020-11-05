<%-- 
    Document   : edit
    Created on : 04-10-2020, 22:04:02
    Author     : _Sebastián_
--%>

<%@page import="services.User"%>
<%@page import="Modelo.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
       
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4 ">
            <div class="card">
                <div class="card-header">
                    <h5>Actualizar Alumno</h5>
                    <%
                    
                    int id=Integer.parseInt((String)request.getAttribute("iduser"));
                    UserService user = new UserService();
                    User u =  user.listarID(id);

                    
                    %>
                </div>
                <div class="card-body" >
                    <form action="Controlador">
                         <label>ID</label>
                        <input type="text" name="txtid"  readonly="" class="form-control"value="<%=u.getId()%>">
                        <label>Nombre</label>
                        <input type="text" name="txtnom" class="form-control" value="<%=u.getNombre()%>">
                        <label>Apellido</label>
                        <input type="text" name="txtape" class="form-control"value="<%=u.getApellido()%>">
                        <label>Carrera</label>
                        <input type="text" name="txtcarr" class="form-control"value="<%=u.getCarrera()%>">
                        <br>
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">

                        <a href="Controlador?accion=index" class="btn btn-warning">Regresar</a>


                    </form>

                </div>


            </div>

        </div>

    </body>
</html>
