<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Registro de Productos</h1>
         <form action="MainServlet" method="POST">
            <table> 
                <tr>
                    
                          <td><label>Producto :</label></td>
                          <td><input type="text" name="producto" value="" /></td>
                </tr>
                
                <tr>
                          <td><label>Categoria  </label></td>
                          <td><select name="categoria">
                          <option  value="Productos 1">Productos 1</option>
                          <option  value="Productos 2">Productos 2</option>
                          <option  value="Productos 3">Productos 3</option>
                          </select></td>
                </tr>
                <tr>
                          <td><label>Existencia :</label></td>
                          <td><input type="text" name="existencia" value="" /></td>
                </tr> 
                <tr>
                          <td><label>Precio :</label></td>
                          <td><input type="number" name="precio" value="" /></td>
                </tr>
            </table>
            
            <input type="submit"/>
        </form>
    </body>
</html>
