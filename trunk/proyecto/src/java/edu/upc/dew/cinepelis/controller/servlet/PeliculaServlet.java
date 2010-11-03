/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.servlet;

import edu.upc.dew.cinepelis.common.util.GenericoServlet;
import edu.upc.dew.cinepelis.dao.ibatis.PeliculaDAO;
import edu.upc.dew.cinepelis.dao.ibatisImpl.PeliculaDAOMysql;
import edu.upc.dew.cinepelis.model.PeliculaBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mayra
 */
public class PeliculaServlet extends GenericoServlet {
   
    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        

        String id = req.getParameter("id");
        PeliculaBean pelicula = serviceFactory.getPeliculaService().getPeliculaById(id);
        req.setAttribute("pelicula", pelicula);
        System.out.println(pelicula.getNombre());
        req.getRequestDispatcher("detalles.jsp").forward(req, resp);

         /*PrintWriter writer = resp.getWriter();
         writer.println("<h1>Bienvenido " + pelicula.getNombre() + "</h1>");
         writer.close();*/
    }

}
