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

public class ListarDemaisPratos implements Tarefa{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		List<Pratos> pratos = new ArrayList<>();
		try(Connection con = new ConnectionPool().getConnection()){
			PratosDAO dao = new PratosDAO(con);
			dao.listar(pratos, "PTS");
			dao.listar(pratos, "PCS");
			dao.listar(pratos, "TBS");
			req.setAttribute("pratos", pratos);
		} catch(SQLException ex){
			System.out.println("Conexão Falhou!");
			ex.printStackTrace();
		}
		return "WEB-INF/views/listardemaispratos.jsp";
	}
	
}
