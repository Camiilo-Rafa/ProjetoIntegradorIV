package br.senac.conexaobd.servlet;

import br.senac.conexaobd.dao.ProdutoDAO;
import br.senac.conexaobd.entidades.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Douglas
 */
@WebServlet(name = "VisualizarServlet", urlPatterns = {"/protegido/produto/VisualizarServlet"})
public class VisualizarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            Produto produtos = ProdutoDAO.getProdutoPorCodigo(id);
            request.setAttribute("Produto", produtos);
            // RequestDispatcher reaproveita os objetos Request e Response
            String url = "/visualizar.jsp";
            request.getRequestDispatcher(url).forward(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            response.sendRedirect(request.getContextPath() + "/protegido/uteis/erro.jsp");
            Logger.getLogger(ListarProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}