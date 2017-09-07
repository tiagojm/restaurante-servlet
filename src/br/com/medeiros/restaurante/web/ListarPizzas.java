package br.com.medeiros.restaurante.web;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.medeiros.restaurante.dao.ConnectionPool;
import br.com.medeiros.restaurante.dao.PratosDAO;
import br.com.medeiros.restaurante.model.Pratos;

public class ListarPizzas implements Tarefa{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp){
		try(Connection con = new ConnectionPool().getConnection()){
			List<Pratos> pizzas = new ArrayList<>();
			PratosDAO dao = new PratosDAO(con);
			dao.listar(pizzas, "PZT");
			dao.listar(pizzas, "PZM");
			dao.listar(pizzas, "PZC");
			dao.listar(pizzas, "PZA");
			dao.listar(pizzas, "PZD");
			dao.listar(pizzas, "PZS");
			req.setAttribute("pizzas", pizzas);
			
		} catch(SQLException ex){
			System.out.println("Conexão Falhou!");
			ex.printStackTrace();
		}
		return "/WEB-INF/views/listarpizzas.jsp";
	}

}
