package br.com.medeiros.restaurante.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns="/logout")
public class Logout implements Tarefa{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().removeAttribute("usuarioLogado");
		return "/WEB-INF/views/logout.html";
	}
	
	/*@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PrintWriter escritor = resp.getWriter();
		req.getSession().removeAttribute("usuarioLogado");
		escritor.println("<html><body>Usuário Deslogado com Sucesso!</body></html>");
	}*/
}
