package br.com.medeiros.restaurante.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.medeiros.restaurante.dao.ConnectionPool;
import br.com.medeiros.restaurante.dao.PratosDAO;
import br.com.medeiros.restaurante.model.Pratos;

@WebServlet(urlPatterns="/listar-lanches")
public class ListarLanches extends HttpServlet{
//public class ListarLanches implements Tarefa{
	
	/*@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		try(Connection con = new ConnectionPool().getConnection()){
			List<Pratos> lanches = new ArrayList<>();
			PratosDAO dao = new PratosDAO(con);
			dao.listar(lanches, "LCS");
			req.setAttribute("lanches", lanches);
		} catch(SQLException ex){
			System.out.println("Erro na Conexão!");
			ex.printStackTrace();
		}
		return "WEB-INF/views/listarlanches.jsp";
	}*/
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try(Connection con = new ConnectionPool().getConnection()){
			List<Pratos> lanches = new ArrayList<>();
			PratosDAO dao = new PratosDAO(con);
			dao.listar(lanches, "LCS");
			req.setAttribute("lanches", lanches);
		} catch(SQLException ex){
			System.out.println("Erro na Conexão!");
			ex.printStackTrace();
		}
		String pagina = "WEB-INF/views/listarlanches.jsp";
		RequestDispatcher dispatcher = req.getRequestDispatcher(pagina);
		dispatcher.forward(req, resp);
	}

}
