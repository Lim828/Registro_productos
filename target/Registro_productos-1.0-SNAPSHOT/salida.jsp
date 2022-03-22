<%@page import="com.emrgentesII.Productos"%>
<%
    Productos regpro = (Productos) request.getAttribute("regpro");
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Gracias por Registrar el producto</h1>
        <p>Su producto es : <%= regpro.getProducto() %></p> 
        <p>La categoria en la que se registro es : </p>
        <ul>
            <%
              String categoria[] = regpro.getCategoria();
              
               if(categoria != null)
               {
                   for(int i=0;i<categoria.length; i++)
                   {
                       
                
            %>
            <li><%= categoria[i] %></li>
            <%
                }
               }   
            %>
        </ul>
        <p>Existencia : <%= regpro.getExistencia() %></p>
        
        <p>Precio : <%= regpro.getPrecio() %></p>
        
        <br>
        <a href="index.jsp">Volver al Inicio</a>
    </body>
</html>
