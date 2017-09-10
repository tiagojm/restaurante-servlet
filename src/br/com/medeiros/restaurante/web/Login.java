package br.com.medeiros.restaurante.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.medeiros.restaurante.dao.ConnectionPool;
import br.com.medeiros.restaurante.dao.UsuarioDAO;
import br.com.medeiros.restaurante.model.Usuario;

@WebServlet(urlPatterns="/login")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		PrintWriter escritor = resp.getWriter();
		
		try(Connection con = new ConnectionPool().getConnection()){
			Usuario user = new UsuarioDAO(con).buscaPorEmailESenha(email, senha);
			if(user == null){
				escritor.println("<!DOCTYPE html><html><body>Usuário Inválido!</body></html>");
			} else {
				HttpSession session = req.getSession();
				session.setAttribute("usuarioLogado", user);
				escritor.println("<!DOCTYPE html><html><body>Usuário logado: " + email + "</body></html>");
			}
		
		} catch (SQLException e) {
			System.out.println("Nao Conectou com o banco!");
			e.printStackTrace();
		}
	}
}
