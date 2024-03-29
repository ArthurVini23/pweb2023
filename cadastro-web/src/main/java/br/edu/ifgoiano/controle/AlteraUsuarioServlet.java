package br.edu.ifgoiano.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifgoiano.entidade.Usuario;
import br.edu.ifgoiano.repositorio.UsuarioRepositorio;

@WebServlet("/alterarUsuario")

public class AlteraUsuarioServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));
		
		UsuarioRepositorio repositorio = new UsuarioRepositorio();
		
		Usuario usuario = repositorio.obterUsuario(id);
		
		req.setAttribute("usuario", usuario);
		req.getRequestDispatcher("usuarioAlteracao.jsp").forward(req, resp);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String senha1 = req.getParameter("senha1");
		String senha2 = req.getParameter("senha2");
		
		//Verificar se as senhas s�o iguais
		if(senha1.equals(senha2)) {
			Usuario usuario = new Usuario();
			usuario.setId(Integer.valueOf(req.getParameter("id")));
			usuario.setNome(req.getParameter("nome"));
			usuario.setEmail(req.getParameter("email"));
			usuario.setSenha(senha1);
			
			UsuarioRepositorio repositorio = new UsuarioRepositorio();
			
			
			repositorio.alterarUsuario(usuario, null);
			
			//redirecionar o usu�rio para a p�gina de login
			resp.sendRedirect("cadastrarUsuario");
		}else {
			//redirecionar o usu�rio para a mesma p�gina de cadastro do usu�rio.
			String msg = "as senhas n�o s�o iguais";
			req.setAttribute("mensagem", msg);
		}
	}
	
	
}
