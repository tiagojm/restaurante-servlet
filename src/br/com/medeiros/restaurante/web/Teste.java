package br.com.medeiros.restaurante.web;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.medeiros.restaurante.dao.ConnectionPool;
import br.com.medeiros.restaurante.dao.PratosDAO;
import br.com.medeiros.restaurante.model.Pratos;

public class Teste implements Tarefa{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		try(Connection con = new ConnectionPool().getConnection()){
			List<Pratos> pizzas = new PratosDAO(con).listarPratosComIngredientes("PZT");
			req.setAttribute("pizzas", pizzas);
		} catch(SQLException ex){
			System.out.println("Conexão Falhou!");
			ex.printStackTrace();
		}
		return "/WEB-INF/views/teste.jsp";
	}

}
