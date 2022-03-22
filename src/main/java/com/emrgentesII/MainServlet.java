
package com.emrgentesII;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         
        String producto = request.getParameter("producto");
        String[] categoria = request.getParameterValues("categoria");
        String existencia = request.getParameter("existencia");
        String precio = request.getParameter("precio");
        
        
        Productos objenc = new Productos();
        
        objenc.setProducto(producto);
        objenc.setCategoria(categoria);
        objenc.setExistencia(existencia);
        objenc.setPrecio(precio);
          
        request.setAttribute("regpro", objenc);
        
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }
}
