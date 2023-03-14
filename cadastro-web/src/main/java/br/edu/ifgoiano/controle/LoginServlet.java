package br.edu.ifgoiano.controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 7036815389008473423L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getParameter("email"));
		System.out.println(req.getParameter("senha"));
		
		String html = new String();
		PrintWriter writer = resp.getWriter();
		writer.println(html);
		
		String senha = req.getParameter("senha");
		
		if(senha.equals("123456")) {
			html = "<html><body><h1>Login realizado com sucesso!</h1></body></html>";
			writer.println(html);
		} else {
			html = "<html><body><h1>login invalido!</h1></body></html>";
			writer.println(html);
		}
	}
}


