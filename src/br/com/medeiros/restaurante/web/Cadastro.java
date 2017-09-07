package br.com.medeiros.restaurante.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/cadastro")
public class Cadastro extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String pagina = "/WEB-INF/views/cadastro.html";
		RequestDispatcher dispatcher = req.getRequestDispatcher(pagina);
		dispatcher.forward(req, resp);
	}
}
