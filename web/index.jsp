<%-- 
    Document   : index
    Created on : 04-10-2020, 20:16:58
    Author     : _Sebastián_
--%>

<%@page import="services.User"%>
<%@page import="java.util.List"%>
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
        <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <a href="Controlador?accion=add" class="btn btn-success">Nuevo Alumno</a> 
                </div>
                <div class="card-body" >
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRE</th>
                                <th>APELLIDO</th>
                                <th>CARRERA</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                              UserService user = new UserService();
                              List<User> datos=user.listar();
                              for(User u:datos){
                             
                            %>
                            <tr>
                                <td><%=u.getId()%></td>
                                <td><%=u.getNombre()%></td>
                                <td><%=u.getApellido()%></td>
                                <td><%=u.getCarrera()%></td>
                                <td>
                                    <a href="Controlador?accion=editar&id=<%=u.getId()%>" class="btn btn-dark">Editar</a>
                                    <a href="Controlador?accion=eliminar&id=<%=u.getId()%>"class="btn btn-danger">Eliminar</a>
                                    
                                </td>
                                
                            </tr>
                            <%}%>
                         
                        </tbody>
                    </table>

                        
                    </table>  
                </div>
            </div>
        </div>
    </body>
</html>
