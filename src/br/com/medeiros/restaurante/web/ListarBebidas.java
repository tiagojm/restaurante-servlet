package br.com.medeiros.restaurante.web;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.medeiros.restaurante.dao.BebidasDAO;
import br.com.medeiros.restaurante.dao.ConnectionPool;
import br.com.medeiros.restaurante.model.Bebidas;

public class ListarBebidas implements Tarefa{


	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		try(Connection con = new ConnectionPool().getConnection()){
			BebidasDAO dao = new BebidasDAO(con);
			List<Bebidas> bebidas = new ArrayList<>();
			dao.listar(bebidas, "AGU");
			dao.listar(bebidas, "SUC");
			dao.listar(bebidas, "BDQ");
			dao.listar(bebidas, "BCV");
			dao.listar(bebidas, "CPR");
			dao.listarCervejas(bebidas, "CVJ");
			dao.listarRefrigerantes(bebidas, "RFG");
			dao.listarVinhos(bebidas, "VIN");
			req.setAttribute("bebidas", bebidas);			
		} catch(SQLException ex){
			System.out.println("Erro na Conexão!");
			ex.printStackTrace();
		}
		return "WEB-INF/views/listarbebidas.jsp";
	}
	
}
