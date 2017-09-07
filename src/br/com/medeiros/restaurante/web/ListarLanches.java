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

public class ListarLanches implements Tarefa{

	@Override
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
	}

}
