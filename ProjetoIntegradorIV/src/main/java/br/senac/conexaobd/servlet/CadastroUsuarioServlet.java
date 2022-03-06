package br.senac.conexaobd.servlet;

import br.senac.conexaobd.dao.UsuarioDAO;
import br.senac.conexaobd.entidades.Usuario;
import br.senac.uteis.ValidaCPF;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Douglas Proença
 */
@WebServlet(name = "CadastroUsuarioServlet", urlPatterns = {"/protegido/usuario/CadastroUsuarioServlet"})
public class CadastroUsuarioServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(request.getParameter("CPFUsuario"));
        if (ValidaCPF.isCPF(request.getParameter("CPFUsuario")) == true) {
            try {
                String ope = request.getParameter("ope");
                Usuario usuario = new Usuario();
                usuario.setNome(request.getParameter("nomeUsuario"));
                usuario.setCpf(request.getParameter("CPFUsuario"));
                usuario.setEmail(request.getParameter("emailUsuario"));
                usuario.setTelefone(request.getParameter("CelularUsuario"));
                usuario.setCategoria(request.getParameter("categoriaUsuario"));
                usuario.setNascimento(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("NascimentoUsuario")));
                usuario.setSenha(request.getParameter("senhaUsuario"));
                // ope = 1 => Update
                if ("1".equals(ope)) {
                    try {
                        UsuarioDAO.atualizarUsuario(usuario);
                    } catch (ClassNotFoundException ex) {
                        response.sendRedirect(request.getContextPath() + "/protegido/uteis/erro.jsp");
                        Logger.getLogger(CadastroUsuarioServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    UsuarioDAO.inserirUsuario(usuario);
                }
                response.sendRedirect(request.getContextPath() + "/protegido/uteis/sucesso.jsp");
            } catch (SQLException ex) {
                if (ex.getErrorCode() == 1062) {
                    response.sendRedirect(request.getContextPath() + "/protegido/usuario/cadastro.jsp?mailInvalido=true");
                } else {
                    response.sendRedirect(request.getContextPath() + "/protegido/uteis/erro.jsp");
                }
            } catch (ClassNotFoundException | ParseException ex) {
                Logger.getLogger(CadastroUsuarioServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            } else {
                    response.sendRedirect(request.getContextPath() + "/protegido/usuario/cadastro.jsp?cpfInvalido=true");
                }
        }

        @Override
        protected void doGet
        (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String cpf = req.getParameter("CPFUsuario");
            String ope = req.getParameter("ope");
            //OPE = 1 => Atualização
            try {
                if ("1".equals(ope)) {
                    Usuario usuario = UsuarioDAO.getUsuarioPorCPF(cpf);
                    req.setAttribute("clienteAtualizacao", usuario);
                    req.getRequestDispatcher("/protegido/usuario/cadastro.jsp").forward(req, resp);
                } else {
                    UsuarioDAO.deletarUsuario(cpf);
                    resp.sendRedirect(req.getContextPath() + "/protegido/usuario/ListarUsuarioServlet");
                }
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(CadastroUsuarioServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
